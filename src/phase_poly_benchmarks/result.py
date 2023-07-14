from dataclasses import dataclass


@dataclass
class BenchResult:
    method_name: str
    time: float
    ncx: int
    cx_depth: int
