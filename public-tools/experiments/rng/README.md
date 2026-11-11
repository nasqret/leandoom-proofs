# What happens when the same controller gets different RNG draws?

This experiment replays the 993-input Hangar controller and the 1,017-input Nuclear Plant controller on the pinned CombatV2 model and the shareware IWAD. For each level it performs ordinary combat spawn once per evaluation, preserves the already-spawned imps and lights, and substitutes each byte from 0 to 255 into the gameplay RNG index. The presentation RNG index and all other fields initially match ordinary spawn. Every branch receives the original input tape.

## Which starting indices finish?

| Tape | Ordinary index | Safe exit by tape end | Death before exit | Alive without an exit | Physics error |
| --- | ---: | ---: | ---: | ---: | ---: |
| Hangar, 993 inputs | 5 | 254 | 1 | 1 | 0 |
| Nuclear Plant, 1,017 inputs | 25 | 8 | 89 | 159 | 0 |

Hangar's losing indices are **40 and 176**. Index 40 dies on tick 918. Index 176 reaches the end of the tape with 69 health and the exit still closed. Ordinary index 5 lives through the 24-point fireball hit on tick 923 and finishes with 48 health. The named `Recording.losingCursors` result identifies both exceptional indices. [Hangar conclusions](../../../public-site/evidence/experiments/rng/e1m1/Conclusions.lean)

The Nuclear Plant tape exits precisely at indices **5, 25, 66, 81, 83, 178, 182 and 231**. Index 0 dies on tick 907. Index 1 finishes the same 1,017 inputs with 100 health and misses the exit. `Recording.winningCursors` gives the complete list. Each map has a named successful alternative to ordinary spawn and a named losing witness. [Nuclear Plant conclusions](../../../public-site/evidence/experiments/rng/e1m2/Conclusions.lean)

The tick when the first exit is requested, the tick of the first death, and the tick of the first physics error are one-based input indices. A missing event has the value JSON `null`. Each endpoint also includes health, shot count, position in raw fixed-point coordinates, and facing in binary-angle units. The table's `safeExitCount` counts first exit before any recorded death or physics error, allowing an unused suffix. The historical first-exit contract additionally requires the exit to occur on the literal last input. The study still applies every remaining input to compute the endpoint. The separate `lastInputSafeExitCount` theorem yields 254 and 8 under that stricter convention. [Counting rules](RngConclusionRules.lean)

The checked proposition `Recording.all256` gives the complete result table computed by `RngExperiment.classify`, including the unmodified spawn index. It composes sixteen compiler-assisted Lean equalities, each of which computes sixteen index cases. The axiom audit records the compiler-backed axioms introduced by `native_decide`. The original spawn-to-exit theorems have separate stock-kernel certificates. No distribution over bytes is assumed.

The accompanying player tracks come from the compiled Lean evaluator. Every case includes samples at most 70 ticks apart, and the separate per-level track file retains at least every twelfth tick. Representative alternatives retain every fourth tick. All three retain the exact first observable difference, exit, death, error and preceding ticks when these events occur. The ordinary tracks retain every tick. The first divergence compares position, angle, health, shot/kill/projectile counts, exit and error flags at every tick. The trace observations are replay data. The classification theorem checks exact endpoint and event fields for all 256 indices.

## Reproduce on a SLURM cluster

From this directory in a checkout containing `public-tools/verifier` and `public-site/evidence/recordings`, choose the cluster account and CPU partition, supply the shareware IWAD, and select an unused work directory. If the executable is outside the usual path, set `DOOM_TOOLCHAIN` to the directory containing the pinned toolchain's `bin` folder. The run writes quoted map data only into the private work tree. The publication directory contains definitions, input digests, outcomes, native traces, generated classification sources and axiom reports.

```sh
sbatch --account="$SLURM_ACCOUNT" --partition="$SLURM_PARTITION" run.sbatch --iwad /private/path/doom1.wad --work /private/path/rng-work --output /private/path/rng-public --workers 8
```

`commandSha256` hashes unsigned decimal input masks in order, one per line including the final LF. `recordingSha256` hashes the exact JSON file. Raw position integers convert to map units by division by 65,536. Raw facing converts to degrees by multiplication by 360 / 2³².

Helios SLURM job 26056357 ran the 512 cases, compiled the 32 block theorems and freshly audited both complete classification equalities in 3 min 13 s. Helios job 26056501 checked the count, exceptional-set and witness theorems for both maps in 26 s. Those derivations use kernel reduction on the certified tables. Their fresh axiom reports record the inherited compiler-assisted assumptions. The receipt binds the engine rules, IWAD, input tapes, source modules, compiled objects, axiom logs and public track files by SHA-256. Recheck the published JSON, Lean literals, trace event frames and links with `python3 check_output.py ../../../public-site/evidence/experiments/rng.json`. [Verification receipt](../../../public-site/evidence/experiments/rng/receipt.json) · [Published table](../../../public-site/evidence/experiments/rng.json)

The ordinary Hangar and Nuclear Plant traces also have independent historical WMI recordings. Every tick's position, facing, health, shots, kills, projectile count, exit flag and error flag agreed with the fresh Helios tracks. In the historical research checkout, `python3 baseline.py --output /path/to/new-directory` checks both archived replay hashes and their controller tapes. [Historical baseline provenance](../../../public-site/evidence/experiments/rng/baseline-receipt.json)
