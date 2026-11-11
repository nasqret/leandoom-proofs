# E1M6 Central Processing

The player reaches the first safe exit on input 3,207 in CombatV2-Spectre-v1. The passage proof uses compiler-assisted checking. [Watch the run and read the Lean source](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M6) · [Lean receipt](Resources/passages/e1m6/receipt.json) · [Axiom report](Resources/passages/e1m6/audit.log) · [Inputs](Resources/passages/e1m6/recording.json) · [Frame checks](Resources/passages/e1m6/camera.json)

## Moments in the proof

- Tick 0. Ordinary spawn. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Certificate.lean#L5)
- Tick 5. First shot. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Milestones.lean#L32)
- Tick 169. Red key. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Milestones.lean#L32)
- Tick 597. Blue key. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Milestones.lean#L32)
- Tick 1,396. Yellow key. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Milestones.lean#L32)
- Tick 2,083. First remote switch. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Passage.lean#L45)
- Tick 2,459. Second remote switch. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Passage.lean#L46)
- Tick 2,707. Minimum health. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Milestones.lean#L32)
- Tick 3,156. Enter the exit wing. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Passage.lean#L48)
- Tick 3,207. First safe exit. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/e1m6/Certificate.lean#L6)

## Earlier studies in CombatV2

A 2,585-input native prefix collects all three keys and operates two switches. Lean locates three Spectres between the exit hallway walls and checks the normal exit at line 627 from a specified viewpoint. Passage from spawn remains open.

## Checked statements

### Locate the three blockers on the parsed map

`Campaign.E1M6.parsedObstructions`

'Campaign.E1M6.parsedObstructions' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `a2fcdf20f65518776718060fbb0db59a0379fa57c0e9ebd3bf2a1caee152e676`. Audit SHA-256 `768a8d79bfa1d57cff7c7d4fd2b0ef0f917e2da737a99855d063d3b7cc6fa2e4`.

### The ordinary start follows from the parsed map

`LeanDoomProofs.E1M6.loaded_spawn`

'LeanDoomProofs.E1M6.loaded_spawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `5c4a09c05c3af69871d27968bc474bb2f4a92e4144196de169ef152f24983901`. Audit SHA-256 `c9c414f7497c5a143fc4b6c1b1922be23492928c00c3f08c47e4510e1639ca13`.

### The Use ray finds line 627 from the specified viewpoint

`Campaign.Panels.E1M6.spawnRay627`

'Campaign.Panels.E1M6.spawnRay627' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `bed4c34ed48d1ee1740f9c8ec6979f14100687ff516c2bbfd6ec5efd76a93f51`. Audit SHA-256 `4f5325a2acd1308802686317d84de0b1008686959f2f0f6b12d1cbba3c79fbf2`.

### The dispatcher requests the normal exit

`Campaign.Panels.E1M6.spawnActivation627`

'Campaign.Panels.E1M6.spawnActivation627' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `bed4c34ed48d1ee1740f9c8ec6979f14100687ff516c2bbfd6ec5efd76a93f51`. Audit SHA-256 `4f5325a2acd1308802686317d84de0b1008686959f2f0f6b12d1cbba3c79fbf2`.

### The switch changes its wall texture

`Campaign.Panels.E1M6.parsedFeedback627`

'Campaign.Panels.E1M6.parsedFeedback627' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `bed4c34ed48d1ee1740f9c8ec6979f14100687ff516c2bbfd6ec5efd76a93f51`. Audit SHA-256 `4f5325a2acd1308802686317d84de0b1008686959f2f0f6b12d1cbba3c79fbf2`.

[[Map atlas]] · [[Engine and passage]]
