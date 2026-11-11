# Replay a passage in a named engine revision

Command Control (E1M4) uses `CombatV2-SectorActions-V1`. The map is the original shareware 1.9 map. The revision implements the tagged door and moving-floor actions needed by the controller. Its seven source overlays, the base-engine digest and the revised digest are recorded in [editions.json](editions.json). The original CombatV2 verifier remains available.

With the repository's pinned Lean 4.33.0 toolchain on PATH, run this from the repository root, supplying your own copy of the matching IWAD.

```sh
python3 public-tools/episode-passages/verify.py check \
  public-site/evidence/passages/e1m4/recording.json \
  --iwad /path/to/doom1.wad --output /tmp/doom-verified
```

The tool constructs the engine in an empty temporary directory, checks the source digest, and regenerates the concrete Lean inputs from the original archive and recorded keyboard commands. It evaluates the claimed first exit and checks the endpoint in Lean, then independently imports the resulting declarations and reports their axioms. The checks use `native_decide` and include Lean's compiler in the trusted base.

The proof scans the ordinary spawn and every intermediate state. A positive health value, clear physics-error flag and clear exit flag are required before each ordinary input. The final state must be alive, error-free and requesting exit. An additional theorem scans the same tape for first key pickups, first shot and minimum health. The camera observes each tick independently. A failed input, changed engine digest or mismatched endpoint can be diagnosed from the verifier output.

[Command Control film](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M4) · [Passage receipt](../../public-site/evidence/passages/e1m4/receipt.json) · [Independent clean build](../../public-site/evidence/passages/e1m4/clean-build.json) · [Event theorem](../../public-site/theater/source/e1m4/Milestones.lean)
