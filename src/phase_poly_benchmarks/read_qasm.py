from pytket.qasm import circuit_from_qasm


def qasm_filename_to_circuit(filename):
    return circuit_from_qasm(filename)
