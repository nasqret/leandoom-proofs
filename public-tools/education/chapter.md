# What does it mean to prove a game level?

You watch a player cross the threshold, press Use and reach the exit. What would let someone else check that the same controls really win from the ordinary starting state? The answer depends on exactly which game program interprets the controls. This chapter follows the path from a WAD file through a Lean function to a theorem about *every prefix* of a particular run. The companion notebook lets you change a controller, break a proof and inspect the checker’s response. [Open the worked notebook](notebook.html) · [Download the notebook](passage-lab.ipynb)

## Three programs, three questions {#engines}

**DOOM.** id Software’s game advances a simulation in discrete steps called *tics*. The map data, player input and current world determine what happens next. A WAD is a container of named byte ranges called *lumps*. Map lumps encode such things as vertices, linedefs (oriented edges), sectors (regions with floor and ceiling heights) and things (placed entities). Parsing and interpreting these records are separate operations. [Original lump loader](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/w_wad.c) · [Map structure definitions](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/doomdata.h) · [Original gameplay loop](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/p_tick.c)

**(Lean)DOOM.** Alaska Hoffman wrote a native Lean 4 game engine that reads original-format WADs. It contains gameplay routines, rendering, audio and proofs about selected mechanisms. Upstream’s arithmetic work compares fixed-point operations with an explicit model of x86 machine behavior. Its E1M1 correspondence project asks which observations of the original executable and the port agree as commands vary. A formal correspondence goal needs an initial-state relation, a step-preservation argument and a definition of what the observer can see. [Upstream project](https://github.com/alaskahoffman/leandoom) · [Arithmetic proof scope](https://github.com/alaskahoffman/leandoom/blob/dd795d67c075b3c3d1149494ddec6aff756e2a64/docs/ARITHMETIC_PROOFS.md) · [Upstream correspondence plan](https://github.com/alaskahoffman/leandoom/blob/943ccfedd26c73acebc75a61d4322ff8e5fa08df/docs/E1M1_CORRESPONDENCE_PLAN.md)

**Our research engine.** The passage proofs start from upstream revision `dd795d67c075b3c3d1149494ddec6aff756e2a64`. CombatV2 retains the walking, interaction and combat machinery and gives selected enemy computations specified integer arithmetic. Its weapon-state controller uses structural recursion with a decreasing fuel counter. Exhaustion is observable, so a successful error-free run also has to avoid it. These choices give Lean equations that the proof can reduce. The equivalence of CombatV2’s enemy arithmetic to upstream’s floating-point controller remains open. A theorem about an explicit CombatV2 run can already stand on its own. [Revision used for the port](https://github.com/alaskahoffman/leandoom/tree/dd795d67c075b3c3d1149494ddec6aff756e2a64) · [Recursive definitions in Lean](https://lean-lang.org/doc/reference/latest/Definitions/Recursive-Definitions/) · [Floating-point numbers](https://lean-lang.org/doc/reference/latest/Basic-Types/Floating-Point-Numbers/)

![Freedoom Phase 1 E1M1 at ordinary spawn, rendered at 320 × 200 by the native Lean CombatV2 worker. Artwork © the Freedoom contributors.](media/freedoom-start.png)

This frame shows what the native Lean worker can draw from redistributable game data. The historical Hangar theorem identifies a different map by its original bytes. [Open the native player](../game/native.html) · [Freedoom project](https://freedoom.github.io/) · [Artwork terms](freedoom-COPYING.txt)

The public site includes playable teaching courses with their own named semantics. Read the edition on a run before comparing it with a historical passage. The small four-phase airlock in this notebook is a separate example written for the lesson. You can read every transition in one screen. [Open the player](../game/) · [Airlock’s complete Lean source](https://github.com/nasqret/leandoom-proofs/blob/afb2055be61bc137170b6f8ee21b90b7d9a512ab/public-site/learn/PassageLab.lean#L5-L40)

![The public course at tick 6. The left pane shows the Lean definitions alongside original raycast artwork and a blue-key pickup.](media/course-key.png)

## From bytes to a proposition {#contract}

Let $B$ be the map-group bytes, $L$ the map label, $K=[k_1,\ldots,k_n]$ the recorded inputs and $T_e$ the tick function of engine edition $e$. Each $k_i$ encodes the buttons held on a single tick as a bit mask, allowing several simultaneous inputs. The level, difficulty, player initialization and random-generator state belong to the starting contract. In the research E1M1 case, the player begins at the ordinary medium single-player combat spawn. A checksum identifies the extracted bytes supplied to the parser. Proving what the parser returns on those bytes is a further logical step. [Pinned port source](https://github.com/alaskahoffman/leandoom/tree/dd795d67c075b3c3d1149494ddec6aff756e2a64/Doom) · [NIST’s Secure Hash Standard](https://csrc.nist.gov/pubs/fips/180-4/upd1/final)

$$
\operatorname{load}(B,L)=\operatorname{ok}(m),\qquad
\operatorname{spawn}(m)=\operatorname{ok}(s_0),\qquad
s_{i+1}=T_e(s_i,k_{i+1}).
$$

A *prefix* is an initial portion of a list. A safe first exit at input $n$ includes legality of the controls and the following three obligations. Here $\mathsf{safe}$ records positive health and the absence of a physics error. The first-exit condition rules out a movie that continues after a win and claims a later finish. [Nuclear Plant declarations](records.html#e1m2) · [Quantifiers and equality in Lean](https://lean-lang.org/theorem_proving_in_lean4/quantifiers_and_equality.html)

$$
(\forall i\le n,\;\mathsf{safe}(s_i))\quad\land\quad
(\forall i<n,\;\neg\mathsf{exit}(s_i))\quad\land\quad
\mathsf{exit}(s_n).
$$

A *witness* is an object that satisfies an existential statement. Lean can use an already verified concrete tape $K$ and its passage theorem to construct a proof of $\exists K,\;\mathsf{Passage}(B,L,K)$. Searching for that tape and checking the submitted proof can be done by different programs. A human or an ML policy can propose the recording. The logical work is to connect those recorded commands to the game’s transitions. [Existential quantification](https://leanprover-community.github.io/mathematics_in_lean/C03_Logic.html) · [Proof-carrying computation](https://csd.cs.cmu.edu/academics/doctoral/degrees-conferred/george-ciprian-necula)

## Why the middle of a passage is hard {#obstacles}

### A moving player changes several data structures

Consider the first movement attempt on the recorded Computer Station route. The collision query encounters a clip. Ammunition rises from 50 to 60 and the clip’s slot is removed. The player has to leave the old spatial lists and enter the lists for sector 60 and blockmap cell 846. The *blockmap* indexes objects by a spatial grid so that collision queries can limit the area they search. A correct move must preserve the structures on which the *next* query relies. The theorem returns the complete updated collision scene and an empty list of special lines crossed. The rest of this tick, including subsequent updates, is a separate obligation. [Checked movement declaration and audit](records.html#e1m7) · [Original movement code](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/p_map.c)

### Two identical pictures can have different futures

A screenshot is a projection $\pi(s)$ of the full state. Position, sprite and health may match while a random-generator index, a door timer or a delayed projectile differs. Therefore $\pi(s)=\pi(t)$ does not in general give $T_e(s,k)=T_e(t,k)$. The Nuclear Plant witness records a total of 1,017 inputs. Its suffix proof after input 19 accounts for 998 more ticks and 65 ordered actor slots per tick. That is 64,870 slot updates before counting the movement, weapon, projectile and world stages. Changing the state used at a chunk boundary can invalidate the remaining certificate. [Nuclear Plant record](records.html#e1m2) · [Original random-number generator](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/m_random.c) · [Behavior-preserving simulations in CompCert](https://compcert.org/man/manual001.html)

### A runnable function may resist reduction in a proof

Lean elaborates a command into a term. A small *kernel* checks that the term has the claimed type. A *tactic* such as `decide` helps produce a term. A compiled program can execute operations that lack the equations one wants for reduction inside the logic. The upstream weapon controller includes a partial recursive routine. With default weapon state, progressing even without firing can enter that routine. Structural recursion on fuel gives the revised controller a defined result in every case. Opaque conversions and trigonometric calls in enemy code motivated the arithmetic revision. The equation $T_e(s,k)=t$ names the edition, so a successful check cannot silently transfer to another version. [Axioms and computation](https://lean-lang.org/theorem_proving_in_lean4/axioms_and_computation.html) · [Kernel validation](https://lean-lang.org/doc/reference/latest/ValidatingProofs/) · [Recursive definitions](https://lean-lang.org/doc/reference/latest/Definitions/Recursive-Definitions/)

### What exactly does the endpoint establish?

In frozen CombatV2, the two Command Control approaches to the blue-card door have walk-over special 90. The actual crossing callback leaves the map unchanged for every world with a type 90 or 86 line. A controller that expects the door to open there depends on an event that the named edition never supplies. [Map-bound crossing theorem and fresh audit](../evidence/e1m4/result.json)

On Phobos Anomaly the ordinary starting state offers 333 possible linedef targets to the Use dispatcher. For each choice, the resulting exit flag is false. This rules out an immediate dispatcher win from that state. A theorem that *every future keyboard sequence* fails would also have to cover all later reachable states. Conversely, knowing that a switch works from a chosen point gives no route from spawn to that point. These examples illustrate how the order and domain of quantifiers determine a theorem’s strength. [Phobos Anomaly observations](records.html#e1m8) · [Logic and quantifiers](https://leanprover-community.github.io/mathematics_in_lean/C03_Logic.html)

## How to read a long proof {#segments}

Let $R_e(s,K)$ be the state obtained by consuming a list of inputs in order. If $u$ ends at $t$ and $v$ starts at the very same $t$, the endpoints compose.

$$
R_e(s,u{+\!+}v)=R_e(R_e(s,u),v).
$$

A *segment* in the research proof also records safety over its prefixes. A prefix of $u{+\!+}v$ either lies entirely within $u$ or consists of all of $u$ followed by a prefix of $v$. This observation explains the two parts of the safety argument when joining segments. The notebook proves the endpoint equation for every pair of airlock input lists by induction. A three-input equality checked by computation and a composition lemma proved for arbitrary lists belong to the same proof language. [Worked append lemma](https://github.com/nasqret/leandoom-proofs/blob/afb2055be61bc137170b6f8ee21b90b7d9a512ab/public-site/learn/PassageLab.lean#L61-L66) · [Induction and recursion](https://lean-lang.org/theorem_proving_in_lean4/induction_and_recursion.html)

**Goal.** Construct a safe first-exit witness for a named map and edition.

1. **Identify the start.** Establish the parse and ordinary-spawn equalities on the quoted data. Record how a reader can identify the bytes.
2. **Prove each interval.** Expose the physics, interaction and actor updates needed for its starting state. Carry the full endpoint and per-prefix invariants forward.
3. **Join the intervals.** Apply the composition rule at exactly matching endpoints. Check that the concatenation of lists equals the actual submitted tape.
4. **Discharge the exit.** Check the final step, all proper-prefix exit flags, positive health and absence of errors. Use the witness to introduce the existential quantifier.

This organization follows Leslie Lamport’s practice of giving each proof step its own target and justification. A reader can enter the proof at the movement step, append lemma or final result. [Lamport on structured proofs](https://lamport.azurewebsites.net/pubs/proof.pdf)

## What has actually been checked? {#outcomes}

All nine original shareware maps have an ordinary-start, first-exit witness. The Hangar and Nuclear Plant passages shown in the Theater have stock-kernel proofs. The other seven Theater passages use compiler-assisted evaluation. Four films use frozen CombatV2 (E1M1, E1M2, E1M7 and E1M9). Five use named revisions for floor movement, sector actions, Spectres or the Phobos finale. Each map starts with a fresh player inventory and the engine’s ordinary RNG initialization. A continuous episode would have to connect the exit inventory and engine state to the next map, including the secret-level transition. [Current original-map Proof Theater](https://nasqret.github.io/leandoom-proofs/theater/) · [Level evidence and engine editions](https://nasqret.github.io/leandoom-proofs/evidence/)

### Before the Military Base crossing · 11 November 2026

These four cases record what the early frozen-CombatV2 study had established. Compare its question about Military Base with the later crossing described below.

| CombatV2 case | Checked conclusion at that point | Question under study |
| --- | --- | --- |
| Hangar, E1M1 | The stock-kernel controllers finish in 993, 992 and 978 inputs with 48 health and zero shots. A compiler-assisted census finds eight 977-tick winners in the final-turn family. | Can an earlier change beat 977 ticks? |
| Nuclear Plant, E1M2 | The armed 1,017-input controller first exits alive. All 1,018 states are safe. It ends with 73 health and 73 shots. | Can a controller that reacts to enemies win from all 256 post-spawn gameplay cursors? |
| Computer Station, E1M7 | The first collision move, pickup and spatial re-linking are proved for the real opening. | The 4,161-input passage had a compiler-assisted proof. Could the full run also be checked by the stock kernel? |
| Military Base, E1M9 | A compiler-assisted theorem checks all three keys and safety over 1,812 states. Stock Lean checks all three exit-platform boundaries, their 88-unit rises and the unsupported type-20 switch. | The 2,179-input extension tried the raising switch at two health. Could a player reach the exit without operating it? |

On Military Base yellow appears at input 126, red at 933 and blue at 1,664. The compiler-assisted theorem `MilitaryBase.first_three_keys` checks the final pickup. Input 2,179 in the longer recording produces the message `Linedef special 20 is not implemented yet`. Stock Lean also checks that activating this type leaves the map and floor movers unchanged. The original game raises a tagged platform here. Ruling out every controller would also require bounding reachable states and motion. [Three-key recording and proofs](../evidence/e1m9/result.json) · [Original switch implementation](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/p_switch.c#L355-L359)

A subsequent Military Base controller answers that question. It strafe-runs across the trench while the platform stays at its original height. The player’s feet fall from 86 to 68 map units over ticks 1,894–1,898 and return to 88 on tick 1,899. By tick 1,901 the player’s center is over the far side. The safe first exit follows on tick 1,917 with 27 health. The general fact about the switch and the existence of this winning route both hold in the same frozen engine. [Watch the crossing](https://nasqret.github.io/leandoom-proofs/theater/?level=E1M9) · [Crossing theorem](https://github.com/nasqret/leandoom-proofs/blob/afb2055be61bc137170b6f8ee21b90b7d9a512ab/public-site/theater/source/e1m9/Trench.lean#L35-L38)

A quiet Nuclear Plant tape first exits at input 1,013 with 82 health, zero player shots and one credited kill. Its Lean declarations `Recording.passage` and `Recording.finalObservation` use compiler-assisted evaluation. Their axiom reports include the generated `native_decide` assumptions, so interpreting them also trusts the compiler’s evaluation. The armed 1,017-input theorem has an independent stock-kernel proof with the standard Lean axioms. [Compiler-assisted run receipts](../downloads/combat-runs.json) · [Lean on native evaluation](https://lean-lang.org/theorem_proving_in_lean4/axioms_and_computation.html)

Computer Station has a complete compiler-assisted first-exit proof from ordinary spawn. The 4,161st input reaches the exit at 45 health, 25 armor, 35 bullets, 93 shots and 27 credited kills. Its fresh import names a generated `native_decide` axiom for each of `Recording.passage` and `Recording.finalObservation`. [Computed passage and endpoint by input digest](../downloads/combat-runs.json) · [Computer Station stock-kernel movement results](records.html#e1m7)

The earlier research inventory records the ordinary spawns and four constructed scenarios alongside the original-map work. Its declaration names and axiom reports let a reader trace how the collection grew. [Selected declarations, digests and imported axiom reports](records.html)

A win in $n$ commands gives the upper bound $d_{\min}\le n$. A lower bound $b\le d_{\min}$ needs a reason that applies to *every* admissible winning tape. The empty tape cannot finish Nuclear Plant from its ordinary unexited spawn, giving the checked range $1\le d_{\min}\le1017$. Shots are nonnegative. Thus Hangar’s zero-shot witness attains the minimum shot count for its specified class of runs. Collecting ammunition can increase inventory, so final bullet count alone cannot measure shots fired. Try finding a potential function for the notebook’s four-phase airlock, where an exact minimum is within reach. [Nuclear Plant bounds and Hangar shot minimum](records.html) · [Executable lower-bound exercise](notebook.html#shortest)

![In the teaching airlock, interchanging the collect and use inputs prevents the last walk from reaching rank three. The notebook proves a universal step bound for this rank.](media/phase-ranks.png)

## A reading path {#reading}

The [replay experiments chapter](https://nasqret.github.io/leandoom-proofs/learn/replay-experiments.html) uses the Hangar fireball to distinguish proving one run from proving a statement about a family of runs.

### Learn enough Lean to read the certificates

- **Lean installation and editor.** Install the toolchain manager and try the interactive infoview. Open a theorem and place the cursor inside its proof to see the current goal. [Official installation guide](https://lean-lang.org/install/)
- **Jeremy Avigad, Leonardo de Moura, Soonho Kong, Sebastian Ullrich and contributors, *Theorem Proving in Lean 4*.** Begin with propositions, proofs and equality. Then read the induction chapter alongside `runAppend` in the lab. [Textbook](https://lean-lang.org/theorem_proving_in_lean4/) · [Induction and recursion](https://lean-lang.org/theorem_proving_in_lean4/induction_and_recursion.html)
- **David Thrane Christiansen, *Functional Programming in Lean*.** Pattern matching, algebraic data types and the `Option`/error-handling examples explain the shape of a total transition function and a parser that can fail. [Book and exercises](https://lean-lang.org/functional_programming_in_lean/)
- **The mathlib community, *Mathematics in Lean*.** Work through existential witnesses and the uses of `rw` and `apply`. The quantifiers in a shortest-route theorem then become easier to read. [Book](https://leanprover-community.github.io/mathematics_in_lean/) · [Logic exercises](https://leanprover-community.github.io/mathematics_in_lean/C03_Logic.html)
- **Lean community learning resources.** Choose a course or a browser exercise at a suitable difficulty. [Community learning guide](https://leanprover-community.github.io/learn.html) · [Lean’s learning portal](https://lean-lang.org/learn/)

### Understand the trusted boundary

- **Leonardo de Moura and Sebastian Ullrich, *The Lean 4 Theorem Prover and Programming Language*.** The systems paper explains how elaboration, tactics and compilation coexist with kernel checking. [Authors’ paper](https://lean-lang.org/papers/lean4.pdf)
- **Lean Language Reference, *Validating a Lean Proof*.** Read the discussion of verification and trusted components before interpreting an axiom report or an imported compiled module. [Validation reference](https://lean-lang.org/doc/reference/latest/ValidatingProofs/)
- **Lean Language Reference, *Recursive Definitions*.** Use the sections on structural recursion and partial definitions to explain why compiled evaluation and definitional reduction can expose different information. [Recursive definitions](https://lean-lang.org/doc/reference/latest/Definitions/Recursive-Definitions/)
- **Lean Language Reference, *Fixed-Precision Integers* and *Floating-Point Numbers*.** Learn why bit widths, overflow, conversion and rounding must be specified at arithmetic boundaries. [Fixed-precision integers](https://lean-lang.org/doc/reference/latest/Basic-Types/Fixed-Precision-Integers/) · [Floating-point numbers](https://lean-lang.org/doc/reference/latest/Basic-Types/Floating-Point-Numbers/)
- **Lean textbook, *Axioms and Computation*.** Use `#print axioms` on an actual declaration. Distinguish the calculus’s standard principles from added assumptions and placeholders. [Axioms and computation](https://lean-lang.org/theorem_proving_in_lean4/axioms_and_computation.html)
- **NIST, *Secure Hash Standard*.** A digest associates an artifact with particular bytes. The logical content of those bytes is established through parsing and checking. [FIPS 180-4](https://csrc.nist.gov/pubs/fips/180-4/upd1/final)

### Go further into formal methods

- **Benjamin Pierce and collaborators, *Software Foundations*.** The small-step semantics chapter models execution by individual transitions. The Hoare logic chapter connects programs, preconditions and postconditions. The examples use Rocq/Coq. [Small-step semantics](https://softwarefoundations.cis.upenn.edu/plf-current/Smallstep.html) · [Hoare logic](https://softwarefoundations.cis.upenn.edu/plf-current/Hoare.html)
- **Adam Chlipala, *Formal Reasoning About Programs*.** Explore invariants and compositional reasoning across transition systems. Compare the book’s invariants with per-prefix survival in a game run. [Author’s book site](https://adam.chlipala.net/frap/)
- **Xavier Leroy and the CompCert team, *The CompCert C Verified Compiler*.** Its semantic-preservation statement gives a worked example of how to relate two different execution models and choose observable behaviors. [Manual introduction](https://compcert.org/man/manual001.html) · [Formal preservation results](https://compcert.org/doc/html/compcert.driver.Complements.html)
- **George Necula, *Compiling with Proofs*.** A source of the producer/checker idea. A recipient can verify a supplied certificate against a stated property independently of how it was found. [Dissertation record and abstract](https://csd.cs.cmu.edu/academics/doctoral/degrees-conferred/george-ciprian-necula)
- **Leslie Lamport, *How to Write a 21st Century Proof*.** Study the hierarchical presentation and rewrite one of the lab arguments as a short tree of obligations before expanding the tactics. [Author’s paper](https://lamport.azurewebsites.net/pubs/proof.pdf)

### Return to the programs

- **Alaska Hoffman, *(Lean)DOOM*.** Read the proof inventory and the scope of the comparison with the original engine, then inspect the engine’s map and movement modules. [Engine and proof companion](https://github.com/alaskahoffman/leandoom) · [Pinned correspondence plan](https://github.com/alaskahoffman/leandoom/blob/943ccfedd26c73acebc75a61d4322ff8e5fa08df/docs/E1M1_CORRESPONDENCE_PLAN.md)
- **id Software, *DOOM source code*.** Follow the path from a loaded lump to an in-memory map, or follow a movement attempt through collision detection. [Source release](https://github.com/id-Software/DOOM) · [Map movement](https://github.com/id-Software/DOOM/blob/master/linuxdoom-1.10/p_map.c)
- **Project Jupyter, *The notebook file format*.** Inspect a notebook’s editable source, stored output and attached images. Re-execute it when you need evidence about a new input. [Notebook format](https://nbformat.readthedocs.io/en/latest/format_description.html)

## Questions for the next investigation {#questions}

1. Append one wait command *after* the airlock exits. Does the final room change? Which part of the safe first-exit specification distinguishes the new tape?
2. Add an emergency lift that moves from the dock directly outside. Which theorem in `PassageLab.lean` now fails? Propose a new bound and exhibit a witness that attains it.
3. A proposed Computer Station certificate identifies identical health and location at a chunk boundary. Name two additional fields whose equality is needed before following the next tick. How could an incorrect state become visible later?
4. Two engines agree on every screenshot of one recorded run. Write down the quantifiers of an all-input correspondence theorem and the relation you would need between hidden states. [Upstream correspondence plan](https://github.com/alaskahoffman/leandoom/blob/943ccfedd26c73acebc75a61d4322ff8e5fa08df/docs/E1M1_CORRESPONDENCE_PLAN.md)
