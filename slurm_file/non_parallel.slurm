#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=0-01:00:00

module load python/3.7.4
module load mpi4py/3.0.2-timed-pingpong
module load numpy/1.18.0-python-3.7.4

time mpiexec -n 1 python3 non_parallel.py
my-job-stats -a -n -s
