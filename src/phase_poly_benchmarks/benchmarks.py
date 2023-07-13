import time
from itertools import pairwise

from pytket.circuit import Circuit, PauliExpBox, Qubit, Node, OpType  # type: ignore
from pytket.architecture import Architecture, SquareGrid  # type: ignore
from pytket.pauli import Pauli  # type: ignore
from pytket.transform import Transform, CXConfigType, PauliSynthStrat  # type: ignore
from pytket.passes import DefaultMappingPass, CXMappingPass  # type: ignore
from pytket.placement import GraphPlacement
from pytket.utils import compare_unitaries  # type: ignore
from pytket.extensions.pyzx import (
    tk_to_pyzx_placed_circ,
    pyzx_to_tk_placed_circ,
)
from pyzx.routing import route_phase_poly as pyzx_route_phase_poly

from random import randint, random, sample


def square_grid(n_row: int, n_column: int, n_pauli_exp: int, pauli_string_min_size: int, pauli_string_max_size: int) -> None:
    arch = SquareGrid(n_row, n_column)
    circ = Circuit(n_row*n_column)
    [add_random_poly_exp_box(circ, pauli_string_min_size, pauli_string_max_size) for _ in range(n_pauli_exp)]
    run_trafos(arch, circ)


def line_arch(arch_size: int, n_pauli_exp: int,  pauli_string_min_size: int, pauli_string_max_size: int) -> None:
    connections = [list(p) for p in pairwise([i for i in range(arch_size)])]
    arch = Architecture(connections)
    circ = Circuit(arch_size)
    [add_random_poly_exp_box(circ, pauli_string_min_size, pauli_string_max_size) for _ in range(n_pauli_exp)]
    run_trafos(arch, circ)


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


def run_trafos(arch: Architecture, circ: Circuit) -> None:
    circ2 = circ.copy()
    circ3 = circ.copy()

    start_time = time.process_time()
    place_manually(arch, circ)
    Transform.LazyAASPauliGraph(arch).apply(circ)
    time_elapsed = time.process_time() - start_time
    print(f"LayzAASPauliGraph with internal done in {time_elapsed} seconds")

    start_time = time.process_time()
    place_manually(arch, circ2)
    Transform.LazyAASPauliGraph(arch, route_phase_poly).apply(circ2)
    time_elapsed = time.process_time() - start_time
    print(f"LayzAASPauliGraph with pyzx done in {time_elapsed} seconds")

    start_time = time.process_time()
    graph_pl = GraphPlacement(arch)
    Transform.LazySynthesisePauliGraph().apply(circ3)
    CXMappingPass(arch, graph_pl).apply(circ3)
    time_elapsed = time.process_time() - start_time
    print(f"LazySynthesisePauliGraph with routing done in {time_elapsed} seconds")

    print("Counts:")
    print(f"  LazyAASPauliGraph (internal phase_poly) ->  {get_counts_string(circ)}")
    print(f"  LazyAASPauliGraph (pyzx route_phase_poly) ->  {get_counts_string(circ2)}")
    print(f"  LazySynthesisePauliGraph with routing ->  {get_counts_string(circ3)}")


def route_phase_poly(arch: Architecture, circ: Circuit) -> Circuit:
    pyzx_arch, pyzx_circ, conversion_map = tk_to_pyzx_placed_circ(circ, arch)
    routed_pyzx_circ = pyzx_route_phase_poly(pyzx_circ, pyzx_arch)
    routed_circ = pyzx_to_tk_placed_circ(routed_pyzx_circ, conversion_map)
    return routed_circ


def get_counts_string(circ: Circuit) -> str:
    two_qb_gate = OpType.CX
    return f"CX gates {circ.n_gates_of_type(two_qb_gate)}, CX depth: {circ.depth_by_type(two_qb_gate)}"
