# Student edition

The [study landing page](https://nasqret.github.io/leandoom-proofs/learn/) offers the chapters, standalone notebook, rendered Jupyter Book, course screenshots, public Obsidian vault and the historical research-core archive. The notebook includes six embedded PNGs, editable sources and the actual output of stock Lean 4.33.0. Its last two executable cells invoke elan. The public artwork notice for the native spawn picture accompanies both the notebook and the downloadable editions.

## Rebuild the edition

Install Python 3 with nbformat, beautifulsoup4 and Matplotlib, and install Pandoc. Run each script from this directory or use its full path.

1. Run `python3 figures.py` to regenerate the phase-rank plot. The five other pictures are retained captures. Two show the original ProofGrid L01 browser course at ticks 6 and 19, two show Lean's accepted and rejected checker transcripts, and one is a native CombatV2 render of Freedoom E1M1. The native render uses Freedoom assets with the bundled copyright and redistribution terms.
2. Run `python3 notebook.py` to prepare the unexecuted notebook. Copy the generated notebook beside `notebook.sbatch` on a compute cluster with the stated Lean toolchain. On Helios use `sbatch -p plgrid -A "$PLGRID_ACCOUNT" notebook.sbatch`. Replace the notebook with the checked output in the job-specific output directory. Compile the standalone modules using `check.sbatch` if their source changes.
3. Run `python3 render.py` to build the native-MathML student site and `python3 book.py` to package a Jupyter Book source tree. Transfer `book-source.zip` and `book.sbatch` to the cluster. On Helios use `sbatch -p plgrid -A "$PLGRID_ACCOUNT" book.sbatch`. It installs Jupyter Book 1.0.4.post1 in a temporary environment and runs the strict Sphinx build against the recorded cell outputs.
4. Copy the job’s `index.html`, `lab.html` and `experiments.html` back to a temporary directory. Pass that directory to `python3 portable.py /path/to/built/pages`. The renderer retains the three Jupyter Book article trees, converts their TeX into native MathML and rewrites static assets for local reading. Run `python3 vault.py` after the public gallery and research core are ready.
5. Run `python3 validate.py` to verify notebooks, compiler transcripts, public page links, the offline book, the Obsidian links and the source core embedded in the vault.

The published source archive also builds directly after extraction with `jupyter-book build . -W -n --all`. Open `index.html` in the downloadable rendered book to read it offline. In the separately downloadable Obsidian archive, open the extracted directory as a vault and start with `Home.md`.

The dated table in the main chapter preserves the study before the 1,917-input Military Base crossing. The [current Proof Theater](https://nasqret.github.io/leandoom-proofs/theater/) lists the stock-kernel or compiler-assisted route for each of the nine original maps.

The replay experiments chapter is maintained in `replay-experiments.md`. It is included in the online and offline Jupyter Book and the student vault. Rebuild the book using the stored original notebook outputs. The camera frames, command edits and RNG rows have independent replay checks in `public-tools/experiments`.
