#!/bin/bash
#SBATCH --job-name=hangar-forks
#SBATCH --cpus-per-task=2
#SBATCH --mem=12G
#SBATCH --time=00:35:00
set -euo pipefail
umask 077
export LEAN_NUM_THREADS="${SLURM_CPUS_PER_TASK:-2}"
python3 -u "$SLURM_SUBMIT_DIR/build.py" "$1" "$2" "$3" "$SLURM_SUBMIT_DIR/run-$SLURM_JOB_ID"
