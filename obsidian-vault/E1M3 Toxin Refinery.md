# E1M3 Toxin Refinery

The player reaches the first safe exit on input 1,770 in CombatV2-Floors1. The passage proof uses compiler-assisted checking. [Watch the run and read the Lean source](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M3) · [Lean receipt](Resources/passages/e1m3/receipt.json) · [Axiom report](Resources/passages/e1m3/audit.log) · [Inputs](Resources/passages/e1m3/recording.json) · [Frame checks](Resources/passages/e1m3/camera.json)

## Moments in the proof

- Tick 0. Ordinary spawn. [Lean source](Resources/theater/source/e1m3/Certificate.lean)
- Tick 5. First shot. [Lean source](Resources/theater/source/e1m3/Milestones.lean)
- Tick 662. Blue key. [Lean source](Resources/theater/source/e1m3/Milestones.lean)
- Tick 1,241. Minimum health. [Lean source](Resources/theater/source/e1m3/Milestones.lean)
- Tick 1,638. Onto the upper landing. [Lean source](Resources/theater/source/e1m3/Staircase.lean)
- Tick 1,770. First safe exit. [Lean source](Resources/theater/source/e1m3/Certificate.lean)

## Earlier studies in CombatV2

The exit platform rises by 88, 128 and 128 units at its three approaches. From a specified viewpoint the Use ray finds normal exit line 982. At secret exit line 785 the dispatcher reports special 51 as unsupported. The route to either panel remains open.

## Checked statements

### Survey the three platform entries

`Campaign.E1M3.allEntryRises`

'Campaign.E1M3.allEntryRises' depends on axioms: [propext, Quot.sound]

Source SHA-256 `96c54b2755f046b957b9b110f8b3b4606a78aeedc4382a9920b8ca31c62476dd`. Audit SHA-256 `e853c24c3c5b0cd9641038132eebc7f0429d6932116646db1bf398864c0c56fe`.

### Read the original staircase callback

`Campaign.E1M3.parsedStairCallback`

'Campaign.E1M3.parsedStairCallback' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `a6f314a86400e62732b18022cc51afafe550f2c3e15ebe5bcdd341d8d01ee0ca`. Audit SHA-256 `d814a81badf436bf81380028bfc28a07dd33659973b09f7214e03219d4f2ceaf`.

### The ordinary start follows from the parsed map

`LeanDoomProofs.E1M3.loaded_spawn`

'LeanDoomProofs.E1M3.loaded_spawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `984d6a781b9f9e3ff6bc2cee614157650e85605195088980689b66871ee53127`. Audit SHA-256 `8f13aa038f29c24f7e6ab7e936a0d3c6e9e15690836e60e5b1e58923f0cf97ef`.

### The Use ray finds line 982 from the specified viewpoint

`Campaign.Panels.E1M3.spawnRay982`

'Campaign.Panels.E1M3.spawnRay982' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `8477f15a0922f4124d49e8f3f5e742c8668394644b9b679d9baabc8c8c3baa36`. Audit SHA-256 `9eb9db31ef58419f3a18ff85905ac55efa67d1bb5f2896103ea36a8a759162ac`.

### The dispatcher requests the normal exit

`Campaign.Panels.E1M3.spawnActivation982`

'Campaign.Panels.E1M3.spawnActivation982' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `8477f15a0922f4124d49e8f3f5e742c8668394644b9b679d9baabc8c8c3baa36`. Audit SHA-256 `9eb9db31ef58419f3a18ff85905ac55efa67d1bb5f2896103ea36a8a759162ac`.

### The switch changes its wall texture

`Campaign.Panels.E1M3.parsedFeedback982`

'Campaign.Panels.E1M3.parsedFeedback982' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `8477f15a0922f4124d49e8f3f5e742c8668394644b9b679d9baabc8c8c3baa36`. Audit SHA-256 `9eb9db31ef58419f3a18ff85905ac55efa67d1bb5f2896103ea36a8a759162ac`.

### The Use ray finds line 785 from the specified viewpoint

`Campaign.Panels.E1M3.spawnRay785`

'Campaign.Panels.E1M3.spawnRay785' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `8477f15a0922f4124d49e8f3f5e742c8668394644b9b679d9baabc8c8c3baa36`. Audit SHA-256 `9eb9db31ef58419f3a18ff85905ac55efa67d1bb5f2896103ea36a8a759162ac`.

### The dispatcher reports the unsupported secret exit

`Campaign.Panels.E1M3.spawnActivation785`

'Campaign.Panels.E1M3.spawnActivation785' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `8477f15a0922f4124d49e8f3f5e742c8668394644b9b679d9baabc8c8c3baa36`. Audit SHA-256 `9eb9db31ef58419f3a18ff85905ac55efa67d1bb5f2896103ea36a8a759162ac`.

### The secret switch keeps its original texture

`Campaign.Panels.E1M3.parsedFeedback785`

'Campaign.Panels.E1M3.parsedFeedback785' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `8477f15a0922f4124d49e8f3f5e742c8668394644b9b679d9baabc8c8c3baa36`. Audit SHA-256 `9eb9db31ef58419f3a18ff85905ac55efa67d1bb5f2896103ea36a8a759162ac`.

[[Map atlas]] · [[Engine and passage]]
