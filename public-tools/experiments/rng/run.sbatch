#!/bin/bash
#SBATCH --job-name=doom-rng-512
#SBATCH --cpus-per-task=8
#SBATCH --mem=20G
#SBATCH --time=01:30:00
set -euo pipefail
if [[ -n "${DOOM_TOOLCHAIN:-}" ]]; then
  export PATH="$DOOM_TOOLCHAIN/bin:$PATH"
fi
export LEAN_NUM_THREADS=1
python3 -u run.py "$@"
python3 -u conclusions.py "$@"
python3 -u ordinary_tracks.py "$@"
