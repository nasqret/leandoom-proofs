#!/bin/bash
#SBATCH --job-name=doom-student-book
#SBATCH --partition=cpu
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G
#SBATCH --time=00:08:00
set -euo pipefail
cd "$SLURM_SUBMIT_DIR"
out="$PWD/book-$SLURM_JOB_ID"
mkdir "$out"
stage=$(mktemp -d)
trap 'rm -rf "$stage"' EXIT
unzip -q book-source.zip -d "$stage/source"
python3 -m venv "$stage/venv"
"$stage/venv/bin/python" -m pip --disable-pip-version-check --quiet install -r "$stage/source/requirements.txt"
"$stage/venv/bin/jupyter-book" build "$stage/source" -W -n --all --keep-going > "$out/build.txt" 2>&1
test -s "$stage/source/_build/html/index.html"
test -s "$stage/source/_build/html/lab.html"
cp "$stage/source/_build/html/"{index,lab,experiments}.html "$out/"
sha256sum book-source.zip > "$out/archive.sha256"
