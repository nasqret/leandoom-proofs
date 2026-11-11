# E1M6 Central Processing

A 2,585-input native prefix collects all three keys and operates two switches. Lean locates three Spectres between the exit hallway walls and checks the normal exit at line 627 from a specified viewpoint. Passage from spawn remains open.

Edition: CombatV2.

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
