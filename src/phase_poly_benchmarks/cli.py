import click

from .benchmarks import square_grid, line_arch


@click.group()
def main() -> None:
    """Benchmarks for different phase poly synthesis methods with pytket."""


@click.command(name="grid")
@click.option("-r", "--n_qubits_row", "n_qubits_row", type=int, default=4)
@click.option("-c", "--n_qubits_col", "n_qubits_col", type=int, default=5)
@click.option("-s", "--strings", "n_strings", type=int, default=30)
@click.option("-m", "--string_minmax", "string_size_min_max", type=list[int], default=[4, 10])
def grid(n_qubits_row: int, n_qubits_col: int, n_strings: int, string_size_min_max: list[int]) -> None:
    """Run benchmark on square grid."""
    assert len(string_size_min_max) > 1
    print(f"Running benchmark on square grid architecture with {n_qubits_row} rows and {n_qubits_col} columns")
    print(f"  -> Will add {n_strings} randomly generated Pauli exponentials containing between"
          f" {string_size_min_max[0]} and {string_size_min_max[1]} Paulis")
    square_grid(n_row=n_qubits_row, n_column=n_qubits_col, n_pauli_exp=n_strings,
                pauli_string_min_size=string_size_min_max[0],
                pauli_string_max_size=string_size_min_max[1])


@click.command(name="line")
@click.option("-q", "--n_qubits", "n_qubits", type=int, default=20)
@click.option("-s", "--strings", "n_strings", type=int, default=30)
@click.option("-m", "--string_minmax", "string_size_min_max", type=list[int], default=[4, 10])
def line(n_qubits: int, n_strings: int, string_size_min_max: list[int]) -> None:
    """Run benchmark on line."""
    assert len(string_size_min_max) > 1
    print(f"Running benchmark on line architecture with {n_qubits} qubits")
    print(f"  -> Will add {n_strings} randomly generated Pauli exponentials containing between"
          f" {string_size_min_max[0]} and {string_size_min_max[1]} Paulis")
    line_arch(arch_size=n_qubits, n_pauli_exp=n_strings, pauli_string_min_size=string_size_min_max[0],
              pauli_string_max_size=string_size_min_max[1])


main.add_command(grid)
main.add_command(line)
