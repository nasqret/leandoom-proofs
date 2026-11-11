# How late can Hangar's final turn start?

The workbench keeps the first 942 inputs of the 993-tick Hangar passage. Choose how many turning ticks to cut, how many of the remaining turns to take while walking, and how many approach ticks to omit. The player then presses Use once. The shortest winning tape in this family finishes on **tick 977**. Of the 2,750 eligible settings, 651 reach the exit and eight attain that minimum. [Named Lean results](../../../../public-site/evidence/experiments/turns/study/Certificate.lean)

| Cut | Walking turns | Approach ticks skipped |
| ---: | ---: | ---: |
| 6 | 5 | 9 |
| 6 | 6 | 9 |
| 6 | 10 | 9 |
| 7 | 9 | 8 |
| 8 | 10 | 7 |
| 10 | 10 | 5 |
| 11 | 10 | 4 |
| 14 | 10 | 1 |

**⟨1⟩1. Specify the family.** Let `c` range from 0 to 24, `b` from 0 to 10, and `a` from 0 to 9. After the common prefix, apply `36 − c − b` right-turn inputs followed by `b` walking-right-turn inputs. Keep the first `13 − a` entries of the original approach starting at zero-based index 978, then press Use. Each tape has `992 − c − a` inputs. Setting `(24,0,9)` takes only 959 ticks and misses the exit. The lower bound quantifies over successful members of this family. [Browser control generator](../../../../public-site/theater/lab/turns.mjs) · [Lean control generator and semantics](TurnFamily.lean)

**⟨1⟩2. Start every branch from the same game state.** Load the exact E1M1 map lumps from the user's shareware IWAD. Apply ordinary combat spawn and replay the first 942 controls. Check that the inputs are ordinary, health stays positive, no physics error occurs and the player never fires. Verify that the whole prefix has no exit. Reuse its complete simulation state for each suffix. The player's momentum, facing, RNG, enemies and projectiles all carry forward. [Model](TurnFamily.lean)

**⟨1⟩3. Check each ending.** Record the first input that sets the exit flag and check safety and zero shots through the end of the tape. All 2,750 tapes satisfy the safety and zero-shot tests. For each of 25 values of `c`, a Lean equality checks 110 outcomes and the exact bytes representing every browser-exported suffix and every displayed x, y and heading. The browser export also checks every shared prefix control. These 25 equalities use compiler-assisted `native_decide`. The fresh axiom audit identifies that dependency. [Example cut](../../../../public-site/evidence/experiments/turns/study/Cut00.lean) · [Browser export](export-controls.mjs)

**⟨1⟩4. Derive the bound.** Join the 25 row projections and apply stock kernel reduction to that table. `Recording.winningCount` proves 651 safe exits, `Recording.minimumInThisFamily` gives 977, and `Recording.noFasterEligibleExit` states the lower bound for every winning row. `Recording.eightMinimizers` identifies the triples above. The earlier WMI census padded each tape with idle inputs to 993 for timing consistency. This study stops at the chosen final input. The first exits agree in all 2,750 cases, and all 651 winning endpoint positions and headings agree. [Aggregate theorem](../../../../public-site/evidence/experiments/turns/study/Certificate.lean) · [Earlier WMI report](../../../../public-site/evidence/experiments/turns/result.json)

## Read a path

In `paths-C.json`, `paths[blend * 10 + approach][tick - 942]` holds `[xRaw,yRaw,angleRawBAM]`. The first sample records the shared-prefix endpoint on tick 942. The last is tick `992 − cut − approach`, inclusive. Divide x and y by 65,536 for map units. Multiply the unsigned heading by 360 / 2³² for degrees. At a standing turn the heading changes even when the coordinates stay fixed.

Each case's Lean literal starts with a one-byte sample count. Each sample occupies three little-endian 32-bit words for signed x, signed y and unsigned heading. The immediately following `count − 1` little-endian 32-bit words contain the exported suffix controls. This lossless layout makes every position, heading and input in the public data independently comparable to the checked Lean literals. [Verifier](check.py) · [Receipt and hashes](../../../../public-site/evidence/experiments/turns/study/receipt.json)

## Reproduce

Helios job 26056641 compiled the model and the 25 cut equalities, checked the aggregate and freshly imported the axioms in 49 seconds. The proofs cover 94,875 position-and-heading samples. From the repository root, run `python3 -B public-tools/experiments/turns/study/check.py` for a lightweight published-data check. `node public-tools/experiments/turns/study/export-controls.mjs` regenerates the exact uncompressed browser-control payload. [Import audit](../../../../public-site/evidence/experiments/turns/study/audit.log)

For a fresh Lean build, open this directory in the public project checkout on a SLURM cluster and supply the matching IWAD from private storage. Set `DOOM_TOOLCHAIN` if the pinned Lean installation is outside PATH.

```sh
sbatch --account="$SLURM_ACCOUNT" --partition="$SLURM_PARTITION" run.sbatch \
  --iwad /private/path/doom1.wad --work /private/path/turn-work \
  --output /private/path/turn-public --workers 8
```
