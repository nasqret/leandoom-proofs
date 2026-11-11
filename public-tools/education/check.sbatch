#!/bin/bash
#SBATCH --job-name=passage-lesson
#SBATCH --partition=cpu
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:04:00
set -euo pipefail
cd "$SLURM_SUBMIT_DIR"
out="education-$SLURM_JOB_ID"
mkdir "$out"
cp PassageLab.lean Audit.lean "$out/"
cd "$out"
export PATH="$HOME/.elan/bin:$PATH" LEAN_PATH="$PWD" LEAN_NUM_THREADS=1
lean +leanprover/lean4:v4.33.0 --version > version.txt
lean +leanprover/lean4:v4.33.0 -DwarningAsError=true -o PassageLab.olean PassageLab.lean
lean +leanprover/lean4:v4.33.0 -DwarningAsError=true Audit.lean > audit.txt
sed 's/def route : List Key := \[.collect, .use, .walk\]/def route : List Key := [.use, .collect, .walk]/' PassageLab.lean > WrongOrder.lean
if lean +leanprover/lean4:v4.33.0 -DwarningAsError=true WrongOrder.lean > wrong-order.txt 2>&1; then
  echo 'wrong order accepted' >&2
  exit 1
fi
grep 'false' wrong-order.txt >/dev/null
sha256sum PassageLab.lean Audit.lean PassageLab.olean audit.txt version.txt wrong-order.txt > hashes.sha256
