# Nine original maps from spawn to exit

Each film pairs an original Episode One map with the Lean declarations that explain its passage. Each run begins at the map’s ordinary spawn, with fresh inventory and the engine’s ordinary gameplay RNG. A continuous campaign carrying inventory and RNG between maps is a separate question. [Proof Theater](https://nasqret.github.io/leandoom-proofs/theater/) · [Engine source registry](editions.json)

| Map | Engine | Whole-passage check | Inputs | Exit health |
| --- | --- | --- | ---: | ---: |
| [E1M1 · Hangar](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M1) | CombatV2 | stock-kernel | 993 | 48 |
| [E1M2 · Nuclear Plant](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M2) | CombatV2 | stock-kernel | 1,017 | 73 |
| [E1M3 · Toxin Refinery](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M3) | CombatV2-Floors1 | compiler-assisted | 1,770 | 34 |
| [E1M4 · Command Control](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M4) | CombatV2-SectorActions-V1 | compiler-assisted | 1,233 | 82 |
| [E1M5 · Phobos Lab](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M5) | CombatV2-SectorActions-V1 | compiler-assisted | 3,569 | 78 |
| [E1M6 · Central Processing](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M6) | CombatV2-Spectre-v1 | compiler-assisted | 3,207 | 40 |
| [E1M7 · Computer Station](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M7) | CombatV2 | compiler-assisted | 4,161 | 45 |
| [E1M8 · Phobos Anomaly](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M8) | CombatV2-PhobosFinale-v1 | compiler-assisted | 3,090 | 8 |
| [E1M9 · Military Base](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M9) | CombatV2 | compiler-assisted | 1,917 | 27 |

## What does the witness prove?

Let $s_0$ be the result of parsing the map and spawning the player. For a fixed rule set $R$ and keyboard tape $k_0,\ldots,k_{n-1}$, let $s_{i+1}=\mathrm{tick}_R(s_i,k_i)$. The simulation computes the path, damage, pickups, monster behavior and consumption of random numbers from the ordinary commands.

1. **Before each input.** For every $i<n$, the command is allowed, the player is alive, the physics-error flag is clear and the exit flag is clear.
2. **After the last input.** The player is alive, the simulation is error-free and the exit flag is set. Taken together, the two claims identify the first safe exit.
3. **At a chapter.** An observer folds over the same tape and records the first state satisfying a predicate. A theorem checks its tick. The camera independently compares observed states during rendering. One frame represents the spawn, and each later frame represents one input. [Replay predicate](../verifier/combat/OriginalReplay.lean) · [First-event theorem](../../public-site/theater/source/e1m4/Milestones.lean)

The six new full-route certificates use Lean 4.33.0 and `native_decide`. Their printed axiom dependencies disclose reliance on compiler evaluation. Hangar and Nuclear Plant have separate stock-kernel witnesses. A successful tape supplies an upper bound on ticks for the stated rules and starting state. A lower bound across all possible controllers requires a different argument. [Trust tiers and audits](https://nasqret.github.io/leandoom-proofs/evidence/)

## Four chapters worth pausing on

- **Tick 1,638 in Toxin Refinery.** The player steps up from 122½ units to 136. The final tread began at 48 units and the game had to raise it into reach. [Landing theorem](../../public-site/theater/source/e1m3/Staircase.lean)
- **Tick 1,945 in Phobos Lab.** The theorem finds the soulsphere in the original map and checks that it disappears as health rises from 55 to 155. The same 3,569 inputs under frozen CombatV2 leave the player dead without an exit. Both formalizations use identical generated input source. [Pickup theorem](../../public-site/theater/source/e1m5/Soulsphere.lean) · [Frozen-engine result](../../public-site/evidence/passages/e1m5/frozen-control/Certificate.lean)
- **Ticks 2,280 through 2,327 in Phobos Anomaly.** The second Baron falls at tick 2,280. The wall begins moving 47 ticks later when the death animation reaches its boss action. The player then starts the stairs, takes the teleport at 3,089 and finishes with 8 health. This revision implements the Baron within CombatV2’s prototype AI, the tag-666 floor action and the ending sector. An occupied teleport destination requiring a telefrag is outside its supported domain. Equivalence of the full engine to the original C game remains open. [Run theorem](../../public-site/theater/source/e1m8/BossPassage.lean) · [Boss action in Doom](https://github.com/chocolate-doom/chocolate-doom/blob/410d96855b5df5410ff591a90efeafa889119224/src/doom/p_enemy.c) · [Sector rules in Doom](https://github.com/chocolate-doom/chocolate-doom/blob/410d96855b5df5410ff591a90efeafa889119224/src/doom/p_spec.c)
- **Tick 1,899 in Military Base.** Across all 1,918 states, the bridge stays at height zero and its switch stays unused. The player strafe-runs over the trench, drops to 68 units and steps onto the far lip at 88. This route works in frozen CombatV2. [Trench theorem](../../public-site/theater/source/e1m9/Trench.lean) · [Controller provenance](../../public-site/evidence/passages/e1m9/provenance.json)

## Reproduce a film’s proofs

With the repository’s pinned Lean toolchain on PATH and a local copy of the matching IWAD, run this from the repository root.

```sh
python3 public-tools/episode-passages/verify.py check \
  public-site/evidence/passages/e1m8/recording.json \
  --iwad /path/to/doom1.wad --output /tmp/doom-verified
```

Substitute `e1m3`, `e1m4`, `e1m5`, `e1m6` or `e1m9` for the other new recordings. The verifier reconstructs the named engine, checks the rules digest, extracts the map from the supplied IWAD and builds the passage and endpoint certificates. For an exact published recording, it also recompiles the chapter sources and audits the individual declarations. The attempt directory contains the generated Lean inputs, proof sources, fresh axiom reports and `theater-chapters.json`. [Base verifier and recording format](../verifier/README.md) · [Independent Helios rebuilds of the chapter proofs](../../public-site/evidence/passages/chapter-reproduction.json)
