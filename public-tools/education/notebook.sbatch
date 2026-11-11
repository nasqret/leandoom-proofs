#!/bin/bash
#SBATCH --job-name=passage-notebook
#SBATCH --partition=cpu
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
set -euo pipefail
cd "$SLURM_SUBMIT_DIR"
output="$PWD/notebook-$SLURM_JOB_ID"
mkdir "$output"
stage=$(mktemp -d)
trap 'rm -rf "$stage"' EXIT
python3 -m venv "$stage/python"
export PATH="$stage/python/bin:$HOME/.elan/bin:$PATH"
export PYTHONNOUSERSITE=1
python -m pip --disable-pip-version-check --quiet install 'nbformat>=5.10,<6' 'nbclient>=0.10,<0.11' 'ipykernel>=6,<8'
python -m ipykernel install --prefix="$stage/python" --name=python3
export JUPYTER_PATH="$stage/python/share/jupyter"
python - "$PWD/passage-lab.ipynb" "$output" "$stage" <<'PY'
from importlib.metadata import version
from pathlib import Path
import nbformat as nb
from nbclient import NotebookClient
import sys
source, output, stage = map(Path, sys.argv[1:])
book = nb.read(source, as_version=4)
NotebookClient(book, timeout=100, kernel_name="python3", resources={"metadata":{"path":str(stage)}}).execute()
for cell in book.cells:
    cell.metadata.pop("execution", None)
nb.validate(book)
nb.write(book, output / "passage-lab.ipynb")
(output / "versions.txt").write_text("Python " + sys.version.split()[0] + "\n" + "".join(name + " " + version(name) + "\n" for name in ["nbclient","nbformat","ipykernel"]))
PY
