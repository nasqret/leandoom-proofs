# Replay experiments

[Open the replay lab](https://nasqret.github.io/leandoom-proofs/theater/lab/) · [Read the chapter](https://nasqret.github.io/leandoom-proofs/learn/replay-experiments.html)

## Three ways to read the evidence

1. **A fastest exit in a specified family.** Hangar has stock-kernel passage proofs at 993, 992 and 978 inputs. Across 2,750 edits of the last turn, eight attain the compiler-assisted minimum of 977. The turn explorer draws every measured approach and exports every tape for the companion. Run `node public-tools/experiments/turns/check.mjs` to check the generated controls and trajectories and `python3 public-tools/experiments/turns/export.py --check` for the earlier native census. [Finite family certificate](https://github.com/nasqret/leandoom-proofs/blob/afb2055be61bc137170b6f8ee21b90b7d9a512ab/public-site/evidence/experiments/turns/study/Certificate.lean#L93-L116)
2. **An intervention on a control.** A fireball fork shares its full game state through tick 886 with the original. Add one strafe input and follow missile slot 2 through its eventual hit or removal. A Lean theorem identifies the complete table of 75 outcomes. A corollary counts the results for the 72 single-tick edits. [Fork tools](forks/README.md)
3. **An intervention on initial state.** Keep the buttons fixed and change one byte in the ordinary post-spawn state. A 16-by-16 evaluation per map classifies all gameplay cursors. The exact losing set for Hangar is {40, 176}. The exact winning set for Nuclear Plant is {5, 25, 66, 81, 83, 178, 182, 231}. Both classifications use compiler-assisted Lean evaluation. The trajectories on screen are sampled native observations. The smaller theorems below use stock Lean. [RNG tools](rng/README.md)

## Check the damage-roll theorem

With Lean 4.33.0, run the following from the repository root. The source imports the engine's RNG table. This calculation needs no game archive.

```sh
cd public-tools/verifier/combat
lake build +Doom.Random
lake env lean --root=../../experiments ../../experiments/DamageRoll.lean
```

The final two commands inside the Lean file print its transitive axioms. The histogram uses no axioms. The induction over presentation draws uses `propext`. The full-level replays require the IWAD identified in the recordings. [Stock-kernel receipt](https://nasqret.github.io/leandoom-proofs/evidence/experiments/damage-roll.json)

## Camera and proof

Each Hangar suffix clip starts on its declared game tick, and each encoded frame advances one tick at 35 fps. The capture script runs the independent native map player from spawn. For each displayed tick it hashes player position, heading, health and exit flag. The frame checker reconstructs the digest from the fork observer. The game observations and MP4 have separate hashes.

```sh
python3 public-tools/experiments/camera/check.py --decode
python3 public-tools/experiments/rng/check_output.py public-site/evidence/experiments/rng.json
```

The seven complete RNG camera films bind ten observed fields on every game tick to a second replay. Run `python3 public-tools/experiments/camera/rng_check.py public-site` to check them against the public evidence and their encodings. The decoder checks use FFprobe. To reproduce the Hangar footage, build the companion's `map-player` target and run `camera/capture.py --help` for the required local inputs. The camera runs are educational gameplay footage under the project's existing audiovisual notices. [Rights and credits](https://nasqret.github.io/leandoom-proofs/about/)

The [replay lab browser regression](browser/README.md) checks decoded camera frames, first-person playback, recorded RNG cases, the exported fork and mobile controls against a local build or GitHub Pages.
