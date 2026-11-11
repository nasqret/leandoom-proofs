# E1M1 Hangar

The player reaches the first safe exit on input 993 in CombatV2. The passage proof uses stock kernel checking. [Watch the run and read the Lean source](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M1)

## Moments in the proof

- Tick 0. From Hangar spawn. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/CertifiedHangarEscapeScene.lean#L24)
- Tick 611. First fireball. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/E1M1RealFireballLaunches.lean#L18)
- Tick 837. A second shooter. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/E1M1RealFireballLaunches.lean#L23)
- Tick 923. Fireball impact. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/E1M1Impact923.lean#L14)
- Tick 935. One more fireball. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/E1M1RealFireballLaunches.lean#L33)
- Tick 993. Exit with six monsters alive. [Lean source](https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/source/CertifiedHangarEscapeScene.lean#L22)

## Earlier studies in CombatV2

The 993-input route reaches the exit with all six enemies alive. A second, learned route reaches it in 978 inputs. Both controllers fire zero shots.

## Checked statements

### Passage from the original map

`certifiedAuthenticE1M1`

'certifiedAuthenticE1M1' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `edc1cee688edad58f5242a8e54877c4b3eb032940621fe48174b2bdf42109d78`. Audit SHA-256 `a2f38a2d89fc82a189fb9b7cb1ecc108d9bfd55c242540c445496670a77e9c79`.

### Zero shots suffice

`certifiedE1M1LeastShots`

'certifiedE1M1LeastShots' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `b61ac780f302b1f266e6515ffd87f4b84bfa77fd4e78b51053ff5a3634af72aa`. Audit SHA-256 `91eee8e4b787476c8c6a2e3ce13b461666e2f6a85ac9d53eca83ff59543743db`.

### The 978-input passage

`certifiedLearnedHangar`

'certifiedLearnedHangar' depends on axioms: [propext, Classical.choice, Quot.sound]

Source SHA-256 `64ca39da20d67601eadcdf4fc3ba84c59355e25a7e90b42c58b39d1774e02f3e`. Audit SHA-256 `6a40fa10d1c2fc0cc3ef572ea836a7b36d0363115d93d6a5b2d9b2123ee0d1e8`.

[[Map atlas]] · [[Engine and passage]]
