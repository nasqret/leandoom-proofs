# E1M2 Nuclear Plant

The player reaches the first safe exit on input 1,017 in CombatV2. The passage proof uses stock kernel checking. [Watch the run and read the Lean source](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M2)

## Moments in the proof

- Tick 0. Ordinary spawn. [Lean source](Resources/theater/source/E1M2Foundation.lean)
- Tick 5. First pistol shot. [Lean source](Resources/theater/source/WindowFifthShot.lean)
- Tick 191. Enemy crossfire. [Lean source](Resources/theater/source/CrossfireFromMap.lean)
- Tick 202. Red key. [Lean source](Resources/theater/source/FullRedKey202.lean)
- Tick 954. An imp starts a lift. [Lean source](Resources/theater/source/FullLiftFromMap.lean)
- Tick 1,017. First safe exit. [Lean source](Resources/theater/source/CampaignWinner.lean)

## Earlier studies in CombatV2

The 1,017-input controller reaches the first exit with 73 health. Look inside the collision, combat and lift interactions at their actual game ticks.

## Checked statements

### Passage from the original map

`NuclearFullPassage.certifiedAuthenticE1M2`

'NuclearFullPassage.certifiedAuthenticE1M2' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `23a35a9d98092916903e18450b27cfdff490c9e5dc7987c1fa217b2e184e3562`. Audit SHA-256 `a3884122b9a96dd3b76b98b401415039e85c6be6339474092b431d7c5a676cb2`.

### Alive at every prefix before the exit

`NuclearFullPassage.safeFirstExit`

'NuclearFullPassage.safeFirstExit' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `23a35a9d98092916903e18450b27cfdff490c9e5dc7987c1fa217b2e184e3562`. Audit SHA-256 `a3884122b9a96dd3b76b98b401415039e85c6be6339474092b431d7c5a676cb2`.

The newer 1,013-input case has a compiler-assisted certificate. [[Recording and checking]]

[[Map atlas]] · [[Engine and passage]]
