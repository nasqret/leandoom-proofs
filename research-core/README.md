# The CombatV1 gameplay proof core

This package contains the accepted 277 named Lean declarations, including auxiliary lemmas, in 162 source modules. Start with `LeanDoomProofs.lean` for the library, `ProofAudit.lean` for the exact declarations, and `evidence/theorems.json` for their source lines. The research project wrote the geometry and all checkpoints for the PROOF01, TWOIMP01 and ARENA03 fixtures. You do not need an IWAD.

## Check the source and run Lean

Install Python 3, Git and [elan](https://lean-lang.org/install/). The LTS recommendation in an editor can differ from this historical edition. The packaged `lean-toolchain` selects stock Lean 4.33.0.

```sh
python3 verify.py check
python3 verify.py setup
python3 verify.py audit
```

The first command checks every included proof input and the retained axiom reports. The second fetches Alaska Hoffman's (Lean)DOOM at the exact Git commit in `evidence/upstream.json`, checks all 218 pinned file hashes, and installs the corresponding Lean sources as the path dependency. An existing full upstream checkout works with `python3 verify.py setup --from-dir /path/to/pinned/leandoom`. The third command builds the proof library, imports it into a fresh Lean process, and checks the complete 277-declaration report. Cold builds of the large segment modules need substantial time and memory. On a resource-managed machine, execute the build in its compute allocation.

The primary and separate historical WMI verification jobs were 281144 and 281142. They used two build lineages and produced identical axiom reports for proof-input SHA-256 `69a1e0554258e31cd91ad4be6f43aaed257dabd60e7059a7573f709684fa71c1`. Both used the same Lean kernel implementation with pre-existing baseline imports. The research core covers original project scenarios, movement, damage, ammunition and conditional cost bounds. The later CombatV2 E1M1 and E1M2 proofs have separate source foundations and evidence. [Public research guide](https://nasqret.github.io/leandoom-proofs/learn/records.html)

Alaska Hoffman authored the engine from which engine-dependent definitions derive. Engine-derived material in this package is available under GPL-2.0-or-later, with the included COPYING.md. [Pinned upstream repository](https://github.com/alaskahoffman/leandoom/tree/dd795d67c075b3c3d1149494ddec6aff756e2a64)
