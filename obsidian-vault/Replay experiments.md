# What would have happened if I had moved?

Hangar has a good moment to rewind. An imp launches a fireball on tick 886. On tick 923 the third fireball hits the player for 24 damage, taking health from 72 to 48. The recording contains the buttons the player held. CombatV2 supplies the enemy decisions, projectile flight and damage roll. Which parts survive a change to the inputs? [Launch theorem](https://github.com/nasqret/leandoom-proofs/blob/v0.1.0/public-site/theater/source/E1M1RealFireballLaunches.lean) · [Impact theorem](https://github.com/nasqret/leandoom-proofs/blob/v0.1.0/public-site/theater/source/E1M1Impact923.lean)

## Rewind to the exit switch

The original player waits on tick 992 and presses Use on tick 993. A second controller follows the first 991 inputs and presses Use immediately. A third shares 966 inputs with the original, then turns and walks at the same time. The stock-kernel proofs give these outcomes.

| Hangar controller | First exit | Health at exit | Player shots |
|---|---:|---:|---:|
| Original | 993 | 48 | 0 |
| Use one tick earlier | 992 | 48 | 0 |
| Walk through the turn | 978 | 48 | 0 |

Let $T(s,k)$ be a tick of CombatV2 with state $s$ and keyboard input $k$. Write $R(s,u)$ for running a list of inputs $u$. Induction on the first list gives

$$R(s,p\mathbin{+\!+}q)=R(R(s,p),q).$$

1. **Identify the shared state.** The existing proof reaches a particular full state $t=R(s,p)$. This includes the enemy timers, player momentum, missiles and gameplay RNG cursor. Two pictures of a player in the same doorway would establish much less.
2. **Check the changed suffix.** Starting at $t$, apply $T$ to the remaining inputs. Check that the player stays alive and the simulation stays free of physics errors. The 992-tick route has a one-action suffix.
3. **Join the proofs.** Substitute the certified value of $t$ in the displayed equation. Checking the exit flag at each prefix identifies the first exit.

If a proof of the opening exposes only the player's coordinates, which state would you pass to the next tick? [Hangar proof that appends the final action](https://github.com/nasqret/leandoom-proofs/blob/v0.1.0/public-site/theater/source/CertifiedHangarEscapeScene.lean)

In **Try your own turn**, start with the 978-tick route and use the slider to watch its approach to the switch. Then choose **Fastest in this grid**. The controls change how long the player turns in place, how much of the turn is spent walking, and how early the player presses Use. You can inspect the measured position and heading at every tick after the shared opening and export the exact buttons for any setting. [Turn workbench](https://nasqret.github.io/leandoom-proofs/theater/lab/#turn-workbench)

**How early can these edits finish?** There are 25 choices for the turning cut, 11 for the walking overlap and 10 for the approach cut. Write $G$ for these 2,750 triples. A winning triple stays alive, takes ordinary actions, produces no physics error, fires no shots and reaches an exit.

1. **Produce a witness.** A winning triple with first exit at 977 gives an upper bound. On its own it says nothing about a triple that nobody tried.
2. **Exhaust the family.** Compute the state after the 942 shared inputs from ordinary spawn. For each triple continue from that state, recording safety and the first exit on its own tape. A compiler-assisted Lean equality checks each group of 110 continuations. All 2,750 decisions agree with the earlier independent native census. [Native census](https://nasqret.github.io/leandoom-proofs/evidence/experiments/turns/result.json)
3. **Take the minimum.** Filter the resulting table to its 651 safe exits. Its minimum is 977, attained by eight triples. This proves that every winning controller **in this family** takes at least 977 ticks. A controller that changes an earlier input lies outside $G$. Finding the fastest possible Hangar route remains open. [Lean certificate](https://nasqret.github.io/leandoom-proofs/evidence/experiments/turns/study/Certificate.lean) · [Rebuild and axiom record](https://nasqret.github.io/leandoom-proofs/evidence/experiments/turns/study/receipt.json)

The final theorem takes a winning row and returns an inequality about its exit tick. Its membership hypothesis is where the choice of family enters the proof.

```lean
theorem noFasterEligibleExit (a : Answer) (h : a ∈ winning (table group tape)) :
    977 ≤ a.firstExit := by
  exact of_decide_eq_true ((List.all_eq_true.mp lowerBoundCheck) a h)
```

## Did the sidestep help?

Choose one tick strictly between launch and impact. Add a left or right strafe to that tick's controls and keep the rest of the tape. There are 72 experiments, two directions on ticks 887 through 922. Fixing the remaining buttons gives the comparison a precise interpretation. A human who saw a new outcome might react differently.

Track the same missile from launch. “It missed on tick 923” can mean that it hit a tick later. “This missile never hit me through the end of the tape” requires following its later events. “I reached the exit alive” is a third claim. Health alone cannot tell which missile caused damage. [Interactive comparison](https://nasqret.github.io/leandoom-proofs/theater/lab/)

All 72 edits still win on tick 993. The third fireball hits on 923 in 59 cases. In the other 13 it hits on ticks 939–943. No strafe in this family escapes the missile. The proof identifies the hit by missile slot and player target and checks removal, so a delayed hit counts even when the screen looks safe on 923. [Finite family theorem and census](https://nasqret.github.io/leandoom-proofs/evidence/experiments/fork-AllForks.lean)

Try right strafe on tick 910. On tick 923 the player's health is still 72 and the missile is flying. It hits on tick 940 for **9** damage. The player leaves with **63** health, 15 more than in the original. Scrub between the two impacts and then compare the endpoints. The hit times, damage and safe exit have a compiler-assisted Lean proof. We checked the native cameras separately against the replayed player position, angle, health and exit flag at every displayed tick. [Replay evidence and compiler assumptions](https://nasqret.github.io/leandoom-proofs/evidence/experiments/fork-receipt.json)

## What it means to vary the RNG

Doom's gameplay RNG has a table of 256 bytes and a cursor. Getting the next byte increments the cursor, wraps at 256, and reads the corresponding entry. Presentation has a separate cursor. Spawning enemies and initializing lighting can consume gameplay draws. [Original Doom RNG](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/m_random.c) · [Lean implementation](https://github.com/nasqret/leandoom-proofs/blob/v0.1.0/public-tools/verifier/combat/upstream/Doom/Random.lean)

Load the map and perform ordinary combat spawn. Call that state $s$. Construct $s_i$ by replacing only the **post-spawn gameplay cursor** with byte $i$. Enemy states, the presentation cursor, inventory and geometry retain their values from $s$. A seed supplied before spawn would be a different experiment. The baseline index is the gameplay cursor already in $s$. Replacing that field by its own value recovers the ordinary state.

For fixed controls $u$, let $W(i)$ mean a safe exit on the tape from $s_i$. One recording proves $W(i_0)$. To establish $\forall i, W(i)$ we must cover every byte. A failure supplies a counterexample to this controller's robustness. A different controller could still win. Counting the winning indices gives an exact frequency in this finite family. Calling that frequency a probability requires a distribution on starting indices.

### Two tapes and all 512 outcomes

| Fixed recording | Ordinary post-spawn cursor | Safe exits | Died | Alive without an exit |
|---|---:|---:|---:|---:|
| Hangar, 993 inputs | 5 | 254 | 1 | 1 |
| Nuclear Plant, 1,017 inputs | 25 | 8 | 89 | 159 |

Each row covers all 256 byte positions. None of the 512 runs reported a physics error. Every successful Hangar run exited on 993 and every successful Nuclear Plant run exited on 1,017. These are results about the two specified controllers. A player who responds to the monsters would be using a different controller.

On Hangar, try index 40. The first difference visible in the recorded observations is on tick 352 and the player dies on 918. Index 176 also first differs on 352, but survives all 993 inputs with 69 health and misses the exit. The model states already differ at tick zero in the very byte we changed. The viewer's “first difference” compares player pose, health, kills, shots, launch count and exit/error flags. It does not observe every enemy timer or each random draw.

For a first-person comparison on Hangar, select the ordinary index 5, then 40 or 176, and play the recorded camera. On Nuclear Plant the gallery also includes cursor 1, which finishes the tape on 100 health without reaching the exit. For the other cases the sampled player trajectory and exact event ticks are available. [Camera identities and observer checks](https://nasqret.github.io/leandoom-proofs/theater/lab/camera/rng.json)

On Nuclear Plant, the eight winning cursors are 5, 25, 66, 81, 83, 178, 182 and 231. The ordinary cursor, 25, exits with 73 health. Cursor 5 follows the same buttons and exits with 43. Cursor 0 dies on tick 907. The fact that 159 other runs survive the tape and still miss the exit makes health alone a poor predictor of passage. [Checked classifications, endpoints and trajectories](https://nasqret.github.io/leandoom-proofs/evidence/experiments/rng.json)

**How Lean checks the census.** There are 16 blocks of 16 indices. In block $b$, row $n$ runs the tape from cursor $16b+n$ for $0\le b,n<16$. Each block theorem identifies the computed gameplay outcomes with a literal table, using compiler-assisted evaluation. Lean then joins the sixteen equalities. The outcome includes the first exit, first death and first error tick. A successful row reaches an exit before any death or error. The native player also records trajectories for the viewer. The equality checks the specified outcomes. Open an individual block to see its indices, or read the separate axiom audit to see what the final result depends on. [Hangar block 0](https://nasqret.github.io/leandoom-proofs/evidence/experiments/rng/e1m1/RngBlock00.lean) · [Nuclear Plant audit](https://nasqret.github.io/leandoom-proofs/evidence/experiments/rng/e1m2/audit.log)

The two lines in the actual Hangar count proof do different jobs.

```lean
theorem safeExitCount : winCount (classify group mapName tape) = 254 := by
  rw [all256]
  decide +kernel
```

The rewrite substitutes the 256 concrete outcomes. The kernel then counts the winning entries. The count inherits the compiler trust of the block equalities used by the rewrite. A separate proof supplies 40 as a witness to the existence of a losing cursor. This rules out a universal win for the original Hangar tape. [Hangar count and counterexample](https://nasqret.github.io/leandoom-proofs/evidence/experiments/rng/e1m1/Conclusions.lean) · [Nuclear Plant count and counterexample](https://nasqret.github.io/leandoom-proofs/evidence/experiments/rng/e1m2/Conclusions.lean)

### How often does a fireball deal 24?

Suppose the projectile has **already collided** and is about to roll damage. CombatV2 asks for a gameplay byte $b$ and computes $3((b\bmod 8)+1)$. Count the amounts across all 256 cursor positions immediately before this draw.

| Damage | 3 | 6 | 9 | 12 | 15 | 18 | 21 | 24 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Cursor positions | 32 | 30 | 38 | 27 | 34 | 34 | 30 | 31 |

Exactly 31 indices give the 24-point hit seen in Hangar. The table repeats some byte values, so equal-sized buckets of possible bytes can have different counts of actual positions. Conditioning on reaching a collision can also change which positions occur there. [Projectile collision callback](https://github.com/nasqret/leandoom-proofs/blob/v0.1.0/public-tools/verifier/combat/upstream/Doom/ProjectileRuntime.lean#L15-L28)

Another argument requires no enumeration. Insert any finite number of presentation draws before each gameplay draw. Each inserted draw preserves the gameplay cursor. Induct on the list of gaps. The first gap preserves the cursor, the next gameplay byte is the usual one, and the induction hypothesis gives every remaining byte. Stock Lean checked the histogram without axioms. The separate induction theorem uses Lean's standard propositional extensionality axiom. This covers the same sequence of gameplay requests. Changing the game state can change which requests it makes. [Kernel audit](https://nasqret.github.io/leandoom-proofs/evidence/experiments/damage-roll.audit.log) · [Lean source for both arguments](https://github.com/nasqret/leandoom-proofs/blob/main/public-tools/experiments/DamageRoll.lean)

## Try to falsify a claim

1. Does a tape that loses from one RNG position disprove the existence of a winning route from that position? Write both statements with their quantifiers.
2. If two runs agree on health for 100 ticks, can they already disagree on the next damage roll? Which fields would your checker compare?
3. A replay shows that strafing once avoids a particular missile. What additional observations would establish that any one-tick dodge in that interval still wins?


[[Recording and checking]] · [[Engine and passage]]

Offline sources: [Damage roll](Resources/DamageRoll.lean) · [Doom RNG](Resources/Doom/Random.lean) · [Hangar strafe census](Resources/experiments/fork-AllForks.lean) · [Hangar turn minimum](Resources/experiments/turns/study/Certificate.lean) · [Hangar RNG](Resources/experiments/rng/e1m1/Conclusions.lean) · [Nuclear Plant RNG](Resources/experiments/rng/e1m2/Conclusions.lean)
