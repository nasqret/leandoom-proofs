# E1M7 Computer Station

The first movement attempt collects a clip, raising 50 bullets to 60. Lean proves the move succeeds and relinks the player in sector 60 and blockmap cell 846 with zero special-line crossings. The 4,161- and 4,209-input native wins share their first 4,140 inputs. Full passage remains open.

Edition: CombatV2.

## Checked statements

### Does the engine accept the first move?

`StationOpening.firstTryMove`

'StationOpening.firstTryMove' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `8c553f33ddd6248b7c3ab3d53ca8682903c92d98c0cdc7a0299fb5ecec388a19`. Audit SHA-256 `2d8f7068f509ac57bbd3f3e3d39fb30143ff694cdc4b6a69c9b11e5f2d266322`.

### Why does the first movement collect a clip?

`StationOpening.fromSynchronizedSpawn`

'StationOpening.fromSynchronizedSpawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `1c043ca05ef96c8225419ab150329f7a6d6648bfff062b0954c42ff787057c3a`. Audit SHA-256 `bb58aeb06885de0bb7ec9e8be3167500408dcffdb96b53eea57eb8a3ea8af1d8`.

### Identify the complete scene after the synchronized collision

`StationOpening.fromSynchronizedSpawnState`

'StationOpening.fromSynchronizedSpawnState' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `1c043ca05ef96c8225419ab150329f7a6d6648bfff062b0954c42ff787057c3a`. Audit SHA-256 `bb58aeb06885de0bb7ec9e8be3167500408dcffdb96b53eea57eb8a3ea8af1d8`.

### How does the first clip enter the inventory?

`StationOpening.openingPickup`

'StationOpening.openingPickup' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `3769cad6ab7a80e264819b4f53f5e62609d239c81ac481770ad7377938ed1b1c`. Audit SHA-256 `5e6faf81be0d8ee66bfec99676530a5921a3d8aac83ddf6a77f1857d7237429c`.

### Recover the entire scene after clip contact

`StationOpening.firstContactState`

'StationOpening.firstContactState' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `d75bc6da0d1f3ae266db12ff53918e120f1213adce177b07866a68d2293b6f28`. Audit SHA-256 `1137355225184d97aec1bfeb2d6547beb006ece4a3e0b2fda1afb45d1a1645fd`.

### Synchronize the scene at the ordinary spawn

`LeanDoomProofs.StationSync.openingSync`

'LeanDoomProofs.StationSync.openingSync' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `5dc550b6ba706b1d97febfff9c0e753ebeb4d223e6ec9835ed57d69695bd51eb`. Audit SHA-256 `9daaebd6c9553f3987b1322e011ef784651c33c56069ea6535a7d3fd278bab37`.

### The two recordings agree on 4,140 inputs

`RecordedForkE1M7.common`

'RecordedForkE1M7.common' does not depend on any axioms

Source SHA-256 `d33586cf5770e7fe185e23d5804ff07c704d8e3fd755fe70d21be629fb1c52ed`. Audit SHA-256 `9589acd82e4a3806a75532eb59128bf1a6dae146758535699a95972cf37516a6`.

### The final Use ray reaches the front of line 810 in the quoted state

`Campaign.E1M7.ShortExit.cachedRay`

'Campaign.E1M7.ShortExit.cachedRay' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `6b1c60efd9203f5de637d636b724f59cbd04a8b9d73a2aa4bd7c6583124eca97`. Audit SHA-256 `21081026028a35fde14f2c50e261d355889ab1e9b5f1449864e46783a06dce6e`.

### The ordinary start follows from the parsed map

`LeanDoomProofs.E1M7.loaded_spawn`

'LeanDoomProofs.E1M7.loaded_spawn' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `0c55b1bd5d98aa972f7c74794ee35d75c129a144eaa5ee85d1ecfe089418cf09`. Audit SHA-256 `4e74a98bafc917851ff7903cdc60f1a745096c71937dcf7f781fbf9d62ec9895`.

[[Map atlas]] · [[Engine and passage]]
