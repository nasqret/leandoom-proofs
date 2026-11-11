# E1M4 Command Control

The player reaches the first safe exit on input 1,233 in CombatV2-SectorActions-V1. The passage proof uses compiler-assisted checking. [Watch the run and read the Lean source](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M4) · [Lean receipt](Resources/passages/e1m4/receipt.json) · [Axiom report](Resources/passages/e1m4/audit.log) · [Inputs](Resources/passages/e1m4/recording.json) · [Frame checks](Resources/passages/e1m4/camera.json)

## Moments in the proof

- Tick 0. Ordinary spawn. [Lean source](Resources/theater/source/e1m4/Certificate.lean)
- Tick 515. Blue key. [Lean source](Resources/theater/source/e1m4/Milestones.lean)
- Tick 520. First shot. [Lean source](Resources/theater/source/e1m4/Milestones.lean)
- Tick 883. Yellow key. [Lean source](Resources/theater/source/e1m4/Milestones.lean)
- Tick 1,074. Minimum health. [Lean source](Resources/theater/source/e1m4/Milestones.lean)
- Tick 1,233. First safe exit. [Lean source](Resources/theater/source/e1m4/Certificate.lean)

## Earlier studies in CombatV2

From the viewpoint (−1580, 1888), looking west, the Use ray finds line 554. Lean checks the normal exit dispatcher and the switch changing from SW1DIRT to SW2DIRT. Reaching this viewpoint from the ordinary start remains open. The two blue-card approaches, lines 686 and 687, have crossing type 90. Stock Lean proves the crossing dispatcher leaves the map unchanged for this type.

## Checked statements

### The ordinary start follows from the parsed map

`LeanDoomProofs.E1M4.loaded_spawn`

'LeanDoomProofs.E1M4.loaded_spawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `95b08de3607cec52cf3020d0df33edd18d1f64d3b1f31b349d4a95a9d68628a3`. Audit SHA-256 `51af11b6bee27c7ac9f1f138ac85cd3add08ae97bdf5455e32cf41d5b8603810`.

### The Use ray finds line 554 from the specified viewpoint

`Campaign.Panels.E1M4.spawnRay554`

'Campaign.Panels.E1M4.spawnRay554' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `f32f693d530848edfc32c894e565644e8a4ec538a38822b0703263c5f46fcf62`. Audit SHA-256 `7c1f9c34e96f98432c8d5881fabc51f8130f2d82065958e2972f33287ab5fa8a`.

### The dispatcher requests the normal exit

`Campaign.Panels.E1M4.spawnActivation554`

'Campaign.Panels.E1M4.spawnActivation554' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `f32f693d530848edfc32c894e565644e8a4ec538a38822b0703263c5f46fcf62`. Audit SHA-256 `7c1f9c34e96f98432c8d5881fabc51f8130f2d82065958e2972f33287ab5fa8a`.

### The switch changes its wall texture

`Campaign.Panels.E1M4.parsedFeedback554`

'Campaign.Panels.E1M4.parsedFeedback554' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `f32f693d530848edfc32c894e565644e8a4ec538a38822b0703263c5f46fcf62`. Audit SHA-256 `7c1f9c34e96f98432c8d5881fabc51f8130f2d82065958e2972f33287ab5fa8a`.

[[Map atlas]] · [[Engine and passage]]

Stock Lean checks that both blue-card approaches have walk-over type 90. The actual type-86/90 crossing rule leaves the map unchanged. [Local proof receipt](Resources/e1m4/result.json)
