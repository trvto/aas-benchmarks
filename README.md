# Benchmarks

# Installation

In the same directory:
```commandline
git clone <this_repo_url> <local_benchmark_repo_dir>
git clone <tket_repo_url> <local_tket_repo_dir>
```
then
```
cd <local_tket_repo_dir>
git checkout configurable_aased_phase_poly
cd ..
pip install <local_benchmark_repo_dir> # installs pp_benchmark executable 
```

# Run benchmarks

Run default benchmark on grid arch
```
pp_benchmark grid
```

Run default benchmark on line arch
```
pp_benchmark line
```

Run `pp_benchmark <grid/line> --help` for more configuration options
