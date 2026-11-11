# One strafe in Hangar

The original controller reaches the first safe exit on input 993. An imp launches its third fireball on input 886. It flies until input 923, hits the player for 24 raw damage, then finishes its explosion on input 939. A second controller presses Use on input 992. A third controller begins a different ending on input 967 and exits on input 978. All three reach the identical projectile encounter. The stock-kernel passage roots and the independent recordings used for the display are identified in `fork-historical.json`.

## The experiment

1. Load E1M1 from the map lump group and spawn the player with `Simulation.spawn m true 1`.
2. Replay inputs 1 through 886 once. Check that every controller has that exact prefix. The shared state includes the player momentum, active actors, projectile bodies and random generator.
3. For each input from 887 through 922, add strafe left (bit 8) or strafe right (bit 16) to the original mask. Keep the other 992 masks intact. Run `tickCombatV2` after each input until the first exit, unsafe state or end of tape.
4. Read the engine's `(projectile slot, event)` stream. A hit of the player by slot 2 is the event `.hit 0 damage` from that slot. Test the end of the flight, the removal of the body and the final player state separately. A damage number describes an engine event. The health field shows the actual inventory value.
5. Prove the array of 75 concrete summaries with `native_decide`. The proof includes the original three controls as comparison cases. Derive the seven numerical counts by rewriting with this theorem and reducing the integer table. A fresh import lists the transitive compiler axiom. An intentionally false change of the original impact tick to 924 must be rejected.

The display uses one pose per simulation tick. Track entries contain the tick, player (x,y), health, slot 2 (x,y), phase and angle. Position is signed 16.16 fixed point, and the unsigned angle wraps at 2³². The first 886 ticks of every edited controller refer to the original frame sequence. The package checks every unchanged prefix and independently matches every displayed position, health, phase and angle in the three historical controllers. The Lean outcome theorem checks the timing, collision, health and passage statements. Pose arrays are recorded evidence.

## Reproduce

Run `build.py` on the authorized compute cluster with stock Lean 4.33.0, commit `d8b18978322d`, and Python 3.9 or later. The four positional arguments are the companion verifier source directory, the original private shareware 1.9 IWAD, `public-site/game/native-routes.json`, and an output directory for this run. The build resolves the native libraries through the stock Lake project. It creates a local map quotation and records its digest. The published sources exclude the quotation and IWAD.

```sh
python3 build.py "$verifier" "$iwad" native-routes.json "$out"
```

Copy the public-safe products (the receipt, `tracks.jsonl`, the four source files `AllForks.lean`, `ForkAudit.lean`, `ForkCapture.lean` and `ForkModel.lean`) into a fresh local directory. From the research checkout, build the public packet with the following command.

```sh
python3 public-tools/experiments/forks/package.py "$downloaded"
```

To independently reconstruct only the three historical comparisons in a scratch directory, run `python3 public-tools/experiments/forks/historical.py "$scratch"`. This reconstructs projectile positions from each completed tick's `.finish` literal in the integrity-checked proof archive. The two shortened controllers depart after the third projectile's removal.
