#!/bin/bash
#SBATCH --partition=aaiken
#SBATCH --nodes=4
#SBATCH --ntasks=80
#SBATCH --cpus-per-task=1
#SBATCH --exclusive
#SBATCH --time=01:00:00
#SBATCH --mail-type=ALL

i=0
while true; do
    srun --cpu_bind=cores ./test
    echo $i
    let i++
done
