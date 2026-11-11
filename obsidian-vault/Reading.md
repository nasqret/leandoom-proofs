# Reading

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

