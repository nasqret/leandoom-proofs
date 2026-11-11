# E1M8 Phobos Anomaly

The player reaches the first safe exit on input 3,090 in CombatV2-PhobosFinale-v1. The passage proof uses compiler-assisted checking. [Watch the run and read the Lean source](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M8) · [Lean receipt](Resources/passages/e1m8/receipt.json) · [Axiom report](Resources/passages/e1m8/audit.log) · [Inputs](Resources/passages/e1m8/recording.json) · [Frame checks](Resources/passages/e1m8/camera.json)

## Moments in the proof

- Tick 0. Ordinary spawn. [Lean source](Resources/theater/source/e1m8/Certificate.lean)
- Tick 169. First shot. [Lean source](Resources/theater/source/e1m8/Milestones.lean)
- Tick 2,007. First Baron falls. [Lean source](Resources/theater/source/e1m8/BossPassage.lean)
- Tick 2,280. Second Baron falls. [Lean source](Resources/theater/source/e1m8/BossPassage.lean)
- Tick 2,300. Minimum health. [Lean source](Resources/theater/source/e1m8/Milestones.lean)
- Tick 2,327. The arena wall moves. [Lean source](Resources/theater/source/e1m8/BossPassage.lean)
- Tick 2,625. The staircase starts. [Lean source](Resources/theater/source/e1m8/BossPassage.lean)
- Tick 3,089. Teleport into the ending room. [Lean source](Resources/theater/source/e1m8/BossPassage.lean)
- Tick 3,090. First safe exit. [Lean source](Resources/theater/source/e1m8/Certificate.lean)

## Earlier studies in CombatV2

Sector 66 contains the teleport destination. Lean proves that no sector-adjacency walk reaches it from start sector 9. At the ordinary start, activating any of the 333 linedefs leaves the exit flag clear. In an initially mover-free world every sequence of crossing callbacks leaves that world unchanged. Full gameplay reachability remains open.

## Checked statements

### Why is the finale disconnected from the start?

`Campaign.Anomaly.parsedFinale`

'Campaign.Anomaly.parsedFinale' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `5df80560c83e36e86d31c30d8c81f3a9be9a73b40e787cfe8a3dd5d7e5450ee8`. Audit SHA-256 `074e14d126111e1d81843b6c9e54c9cd74ab3080bb19222146c7c4219f1ac4ae`.

### Can any of the 333 Use targets exit from the initial state?

`Campaign.Anomaly.parsedInitialUseTargets`

'Campaign.Anomaly.parsedInitialUseTargets' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `112d67af4fec6210a0032d131e8006b8752630f11e3763c762dbfe7a70189c9f`. Audit SHA-256 `236e58b5f640f85429bce0725b06225915a57b82dc98e4fd32e362b496f8896d`.

### What does contact with the finale floor do?

`Campaign.Anomaly.sectorElevenContact`

'Campaign.Anomaly.sectorElevenContact' depends on axioms: [propext, Quot.sound]

Source SHA-256 `bff95b60015d3f1d173ec2d57de90f1c9c46e93613c7ce660e641c4fce7c1325`. Audit SHA-256 `074e14d126111e1d81843b6c9e54c9cd74ab3080bb19222146c7c4219f1ac4ae`.

### Compare the initialized actors to the two original Baron placements

`Campaign.Panels.E1M8.spawnedBossRoster`

'Campaign.Panels.E1M8.spawnedBossRoster' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `48e8fef76a46d84299b58e1028b5e3b8b66711a956d95af2ef6997b528111c49`. Audit SHA-256 `803fc1dda8e2faf9d7198453fa32910e58bec7d2fdcd5f08543ea659faa205a4`.

### Locate sector 66 and both Baron THINGS records

`Campaign.Panels.E1M8.parsedFinale`

'Campaign.Panels.E1M8.parsedFinale' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `48e8fef76a46d84299b58e1028b5e3b8b66711a956d95af2ef6997b528111c49`. Audit SHA-256 `803fc1dda8e2faf9d7198453fa32910e58bec7d2fdcd5f08543ea659faa205a4`.

### Enumerate the exit linedefs

`Campaign.Panels.E1M8.parsedInventory`

'Campaign.Panels.E1M8.parsedInventory' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `48e8fef76a46d84299b58e1028b5e3b8b66711a956d95af2ef6997b528111c49`. Audit SHA-256 `803fc1dda8e2faf9d7198453fa32910e58bec7d2fdcd5f08543ea659faa205a4`.

### The ordinary start follows from the parsed map

`LeanDoomProofs.E1M8.loaded_spawn`

'LeanDoomProofs.E1M8.loaded_spawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `2eda6d1bf91c2ea78d6f470c88367409c9034c789854ad38d72e6b58b0a29ef6`. Audit SHA-256 `70d40470cb03ab0dcb5e4b80c5417aec4bec4e375ba471dbc22acff27d97f8fb`.

[[Map atlas]] · [[Engine and passage]]
