# E1M9 Military Base

A new 1,811-input native replay collects yellow at tick 126, red at 933 and blue at 1,664. It ends alive with two health before the exit. Stock Lean identifies three 88-unit entries to the exit platform and confirms that the tagged type-20 switch leaves the map and movers unchanged in this CombatV2 dispatcher. Full passage remains open.

Edition: CombatV2.

## Checked statements

### Count the action buttons in the two-key run

`Campaign.MilitaryBase.tapeControls`

'Campaign.MilitaryBase.tapeControls' depends on axioms: [propext, Quot.sound]

Source SHA-256 `695a4868fa1385581f00c8aaaa7d58df9c31b5c110900a14d0f1502cfb207386`. Audit SHA-256 `dafef19c2b6965c3f4d5b4d258c9203d732e7cc08e1926a705a1842b9b7b0739`.

### The ordinary start follows from the parsed map

`LeanDoomProofs.E1M9.loaded_spawn`

'LeanDoomProofs.E1M9.loaded_spawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `6c964d0d0749c2e8af0aeefda03414d0d4097b56eeeeed18d28498e7529ad265`. Audit SHA-256 `8811533201be177d39a78dcbf2b3c0f94e0f11705167412400d5ee09adaada5a`.

### The Use ray finds line 551 from the specified viewpoint

`Campaign.Panels.E1M9.spawnRay551`

'Campaign.Panels.E1M9.spawnRay551' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `d573092cd5f754dfa39a6fa6566022be04f2f3c9bbf1f0fd0cf25ecb122614eb`. Audit SHA-256 `5ced3e3a87711e475bd40f20bd3c2be54ebfe92a1f7cac32ac75cd127622ce09`.

### The dispatcher requests the normal exit

`Campaign.Panels.E1M9.spawnActivation551`

'Campaign.Panels.E1M9.spawnActivation551' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `d573092cd5f754dfa39a6fa6566022be04f2f3c9bbf1f0fd0cf25ecb122614eb`. Audit SHA-256 `5ced3e3a87711e475bd40f20bd3c2be54ebfe92a1f7cac32ac75cd127622ce09`.

### The switch changes its wall texture

`Campaign.Panels.E1M9.parsedFeedback551`

'Campaign.Panels.E1M9.parsedFeedback551' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `d573092cd5f754dfa39a6fa6566022be04f2f3c9bbf1f0fd0cf25ecb122614eb`. Audit SHA-256 `5ced3e3a87711e475bd40f20bd3c2be54ebfe92a1f7cac32ac75cd127622ce09`.

[[Map atlas]] · [[Engine and passage]]

A compiler-assisted Lean theorem confirms holding all three keys first at 1664. The independent native replay records yellow at 126 and red at 933. All 1812 states were safe. The 2179-input extension attempts the final lift switch at two health and receives the unsupported type-20 message. Stock Lean finds exactly three two-sided boundaries of the exit platform, each with an initial 88-unit rise. [Local receipts](Resources/e1m9/result.json)
