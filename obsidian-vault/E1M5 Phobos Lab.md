# E1M5 Phobos Lab

The player reaches the first safe exit on input 3,569 in CombatV2-SectorActions-V1. The passage proof uses compiler-assisted checking. [Watch the run and read the Lean source](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M5) · [Lean receipt](Resources/passages/e1m5/receipt.json) · [Axiom report](Resources/passages/e1m5/audit.log) · [Inputs](Resources/passages/e1m5/recording.json) · [Frame checks](Resources/passages/e1m5/camera.json)

## Moments in the proof

- Tick 0. Ordinary spawn. [Lean source](Resources/theater/source/e1m5/Certificate.lean)
- Tick 5. First shot. [Lean source](Resources/theater/source/e1m5/Milestones.lean)
- Tick 741. Minimum health. [Lean source](Resources/theater/source/e1m5/Milestones.lean)
- Tick 1,093. Yellow key. [Lean source](Resources/theater/source/e1m5/Milestones.lean)
- Tick 1,945. The secret soulsphere. [Lean source](Resources/theater/source/e1m5/Soulsphere.lean)
- Tick 3,158. Blue key. [Lean source](Resources/theater/source/e1m5/Milestones.lean)
- Tick 3,569. First safe exit. [Lean source](Resources/theater/source/e1m5/Certificate.lean)

## Earlier studies in CombatV2

Lean parses the original map and constructs its ordinary start. A 64-unit Use ray from a specified viewpoint reaches line 409. The normal exit dispatcher requests completion, and the panel changes its wall texture. Passage to this viewpoint remains open.

## Checked statements

### The ordinary start follows from the parsed map

`LeanDoomProofs.E1M5.loaded_spawn`

'LeanDoomProofs.E1M5.loaded_spawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `3b35c5993e604ee9de27deae2c0b69b80319b878b42ebb615eeffab5db3abbd5`. Audit SHA-256 `94d806e009b14d6c6e1edd261ee6b0e38bc670462d9b30a9f82b5d82c01c093b`.

### The Use ray finds line 409 from the specified viewpoint

`Campaign.Panels.E1M5.spawnRay409`

'Campaign.Panels.E1M5.spawnRay409' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `414b51df196bea0c251f8b5dc5c4bc1ac3d91cc233e3de06d7f76673f3d2a7b9`. Audit SHA-256 `16e2e30aed696d2ed2859762b0b5a4cfeba1f0e857a3506e8214b00a0d8f2b5e`.

### The dispatcher requests the normal exit

`Campaign.Panels.E1M5.spawnActivation409`

'Campaign.Panels.E1M5.spawnActivation409' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `414b51df196bea0c251f8b5dc5c4bc1ac3d91cc233e3de06d7f76673f3d2a7b9`. Audit SHA-256 `16e2e30aed696d2ed2859762b0b5a4cfeba1f0e857a3506e8214b00a0d8f2b5e`.

### The switch changes its wall texture

`Campaign.Panels.E1M5.parsedFeedback409`

'Campaign.Panels.E1M5.parsedFeedback409' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `414b51df196bea0c251f8b5dc5c4bc1ac3d91cc233e3de06d7f76673f3d2a7b9`. Audit SHA-256 `16e2e30aed696d2ed2859762b0b5a4cfeba1f0e857a3506e8214b00a0d8f2b5e`.

[[Map atlas]] · [[Engine and passage]]
