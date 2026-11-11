# Recheck a passage in a named engine revision

Command Control (E1M4) uses CombatV2-SectorActions-V1. Its controller starts at the map's ordinary spawn, picks up the blue and yellow keys and exits after 1,233 inputs. The floor and door dispatch includes the actions this level needs. The original CombatV2 verifier remains available for its own recordings.

From the root of the checkout with the pinned Lean 4.33.0 toolchain installed, run

```sh
python3 public-tools/episode-passages/verify.py check public-site/evidence/passages/e1m4/recording.json --iwad /path/to/doom1.wad --output /tmp/doom-receipts
```

The checker reconstructs the recorded edition, verifies its source digest, loads the map from your IWAD, checks ordinary inputs and compiles two Lean declarations. The first proves that each earlier state stays alive and free of physics errors up to the first safe exit. The second gives the final position, inventory and counters. Inspect the fresh axiom report in the output directory. These proofs use Lean's native compiler through `native_decide`.

The film has one frame per game tick, including the initial state. In Command Control, a third theorem independently replays the controls and identifies each first key acquisition, the first shot and the minimum health. Its source is linked in the player. The camera receipt compares a second observer with the rendering run and records the movie digest. The indicated engine name and rules digest identify the simulation for every claim.

[Watch Command Control](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M4) · [Edition sources and hashes](editions.json)
