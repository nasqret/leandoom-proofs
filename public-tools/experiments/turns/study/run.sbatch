#!/bin/bash
#SBATCH --job-name=hangar-turn-grid
#SBATCH --cpus-per-task=8
#SBATCH --mem=18G
#SBATCH --time=00:30:00
set -euo pipefail
if [[ -n "${DOOM_TOOLCHAIN:-}" ]]; then export PATH="$DOOM_TOOLCHAIN/bin:$PATH"; fi
export LEAN_NUM_THREADS=1
python3 -u run.py "$@"
