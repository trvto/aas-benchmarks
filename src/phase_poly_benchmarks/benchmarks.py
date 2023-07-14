import time
from itertools import pairwise
from multiprocessing import Process
from math import ceil, sqrt
from pathlib import Path
from typing import Tuple

from .read_qasm import qasm_filename_to_circuit
from .result import BenchResult
from pytket.circuit import Circuit, PauliExpBox, Qubit, Node, OpType  # type: ignore
from pytket.architecture import Architecture, SquareGrid  # type: ignore
from pytket.pauli import Pauli  # type: ignore
from pytket.transform import Transform, CXConfigType, PauliSynthStrat  # type: ignore
from pytket.passes import DefaultMappingPass, CXMappingPass, auto_rebase_pass  # type: ignore
from pytket.placement import GraphPlacement
from pytket.utils import compare_unitaries  # type: ignore
from pytket.extensions.pyzx import (
    tk_to_pyzx_placed_circ,
    pyzx_to_tk_placed_circ,
)
from pyzx.routing import route_phase_poly as pyzx_route_phase_poly

from random import randint, random, sample

def get_line_arch(n_qbits: int) -> Architecture:
    connections = [list(p) for p in pairwise([i for i in range(n_qbits)])]
    return Architecture(connections)


def square_grid(n_row: int, n_column: int, n_pauli_exp: int, pauli_string_min_size: int, pauli_string_max_size: int) -> None:
    arch = SquareGrid(n_row, n_column)
    circ = Circuit(n_row*n_column)
    [add_random_poly_exp_box(circ, pauli_string_min_size, pauli_string_max_size) for _ in range(n_pauli_exp)]
    results = run_trafos(arch, circ)
    for result in results:
        print(f"Method: {result.method_name}, time: {result.time}, cx: {result.ncx}, cx_depth: {result.cx_depth}")


def line_arch(arch_size: int, n_pauli_exp: int,  pauli_string_min_size: int, pauli_string_max_size: int) -> None:
    arch = get_line_arch(arch_size)
    circ = Circuit(arch_size)
    [add_random_poly_exp_box(circ, pauli_string_min_size, pauli_string_max_size) for _ in range(n_pauli_exp)]
    results = run_trafos(arch, circ)
    for result in results:
        print(f"Method: {result.method_name}, time: {result.time}, cx: {result.ncx}, cx_depth: {result.cx_depth}")


def add_random_poly_exp_box(circ: Circuit, min_size: int, max_size: int) -> int:
    """Add a random poly exp box to the circuit and return its size"""
    assert min_size > 0
    assert min_size <= max_size
    circ_size = circ.n_qubits
    used_min_size = min_size if min_size <= circ_size else circ_size
    used_max_size = max_size if max_size <= circ_size else circ_size
    box_size = randint(used_min_size, used_max_size)
    paulis = [Pauli(randint(0, 3)) for _ in range(box_size)]
    pauli_exp_box = PauliExpBox(paulis, random())
    #  print(pauli_exp_box.get_paulis(), pauli_exp_box.get_phase())
    target_qubits = sample([i for i in range(circ_size)], k=box_size)
    circ.add_pauliexpbox(pauli_exp_box, target_qubits)
    return box_size


def place_manually(arch: Architecture, circ: Circuit) -> None:
    rename_map = {Qubit(i): node for i, node in enumerate(arch.nodes)}
    circ.rename_units(rename_map)


def run_trafos(arch: Architecture, circ: Circuit) -> list[BenchResult]:
    circ2 = circ.copy()
    circ3 = circ.copy()

    results = []
    start_time = time.process_time()
    place_manually(arch, circ)
    Transform.LazyAASPauliGraph(arch).apply(circ)
    time_elapsed = time.process_time() - start_time
    ncx, cxdepth = get_counts(circ)
    results.append(BenchResult("lazy_aas", time_elapsed, ncx, cxdepth))

    start_time = time.process_time()
    place_manually(arch, circ2)
    Transform.LazyAASPauliGraph(arch, route_phase_poly).apply(circ2)
    time_elapsed = time.process_time() - start_time
    ncx, cxdepth = get_counts(circ2)
    results.append(BenchResult("lazy_aas_pyzx", time_elapsed, ncx, cxdepth))

    start_time = time.process_time()
    graph_pl = GraphPlacement(arch)
    Transform.LazySynthesisePauliGraph().apply(circ3)
    CXMappingPass(arch, graph_pl).apply(circ3)
    time_elapsed = time.process_time() - start_time
    ncx, cxdepth = get_counts(circ3)
    results.append(BenchResult("lazy_synth_pauli", time_elapsed, ncx, cxdepth))

    return results


def route_phase_poly(arch: Architecture, circ: Circuit) -> Circuit:
    pyzx_arch, pyzx_circ, conversion_map = tk_to_pyzx_placed_circ(circ, arch)
    routed_pyzx_circ = pyzx_route_phase_poly(pyzx_circ, pyzx_arch)
    routed_circ = pyzx_to_tk_placed_circ(routed_pyzx_circ, conversion_map)
    return routed_circ


def get_counts(circ: Circuit) -> Tuple[int, int]:
    two_qb_gate = OpType.CX
    return int(circ.n_gates_of_type(two_qb_gate)), int(circ.depth_by_type(two_qb_gate))


def get_square_grid(n_qubits: int) -> Architecture:
    side_length = ceil(sqrt(n_qubits))
    #print(f"Using {side_length}x{side_length} grid")
    return SquareGrid(side_length, side_length)


def qasm_bench(filename: str, arch_type: str) -> None:
    circ = qasm_filename_to_circuit(filename)
    arch = get_line_arch(circ.n_qubits) if arch_type == "line" else get_square_grid(circ.n_qubits)
    rebase_pass = auto_rebase_pass({OpType.CX, OpType.H, OpType.Rz})
    rebase_pass.apply(circ)
    results = run_trafos(arch, circ)
    for result in results:
        print(f"file: {filename}, method: {result.method_name}, time: {result.time}, cx: {result.ncx}, cx_depth: {result.cx_depth}")


def full_qasm_bench(data_path: str, arch_type: str) -> None:
    for file in Path(data_path).iterdir():
        p1 = Process(target=qasm_bench, args=(f"{file}", arch_type))
        p1.start()
        p1.join(timeout=60)
        p1.terminate()
        if p1.exitcode is None:
            print(f"{file} timed out")
