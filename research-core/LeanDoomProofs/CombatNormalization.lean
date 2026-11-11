import LeanDoomProofs.CombatV1
import LeanDoomProofs.CombatMap
import LeanDoomProofs.Passage
import Init.Data.Slice.Array.Lemmas
import Init.Internal.Order.While
/-! Kernel evaluation interface for the exact CombatV1 tick. Array slices use
an extrinsic iterator fixpoint. We replace slice collection by equal finite
array extraction, using the standard library's proved equality. The public
bridge proves equality of ticks for ALL states and keyboard masks; no trace
assumption, trusted computation or new engine behavior is introduced. -/

namespace LeanDoomProofs
open Doom Lean Meta Elab Tactic
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000

-- The standard library supplies a proved unfolding equation for these loops.
attribute [cbv_eval] repeatM_eq_of_monadTail

/-- Propose a proof by symbolic evaluation and check it with the kernel.
Some state-monad evaluations in Lean 4.33 produce rejected local `s` let
annotations. Inline those bindings only when necessary, preserving other
sharing; the repaired expression must pass the kernel too. Rejected candidates
are never accepted as certificates. -/
elab "combat_certify" : tactic => do
  let original ← getMainGoal
  original.withContext do
    let auxiliary ← mkFreshExprSyntheticOpaqueMVar (← original.getType)
    replaceMainGoal [auxiliary.mvarId!]
    evalTactic (← `(tactic| cbv))
    unless (← getGoals).isEmpty do throwError "evaluation did not close the auxiliary goal"
    let mut proof ← instantiateMVars auxiliary
    let accepted ← try
      checkWithKernel proof
      pure true
    catch _ => pure false
    unless accepted do
      for _ in [:1000] do
        let next := proof.replace fun e => match e with
          | .letE name _ value body _ =>
            if name == `s then some (body.instantiate1 value) else none
          | _ => none
        if next == proof then break
        proof := next
      checkWithKernel proof
    original.assign proof
    setGoals []

theorem combat_subarray_toArray {α : Type} (s : Subarray α) :
    s.toArray = s.array.extract s.start s.stop := by
  apply Array.toList_inj.mp
  rw [Subarray.toList_toArray, Subarray.toList_eq]

def combat_actorOriginal : Simulation → Simulation := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (n,_) =>
      n.toString.endsWith "Doom.Simulation.actorTickCombatV1"
    let [entry] := entries | throwError "private alias ambiguity"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

def combat_actorNormalized : Simulation → Simulation := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (n,_) =>
      n.toString.endsWith "Doom.Simulation.actorTickCombatV1"
    let [entry] := entries | throwError "private alias ambiguity"
    let info ← getConstInfoDefn entry.1
    let mut thms : SimpTheorems := {}
    thms ← thms.addConst ``combat_subarray_toArray
    let ctx ← Simp.mkContext { beta := false, zeta := false, iota := false, proj := false }
      (simpTheorems := #[thms])
    let (result, _) ← Meta.simp info.value ctx
    let g ← getMainGoal
    g.assign result.expr
    replaceMainGoal []

theorem combat_actor_equivalence : combat_actorOriginal = combat_actorNormalized := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (n,_) =>
      n.toString.endsWith "Doom.Simulation.actorTickCombatV1"
    let [entry] := entries | throwError "private alias ambiguity"
    let info ← getConstInfoDefn entry.1
    let mut thms : SimpTheorems := {}
    thms ← thms.addConst ``combat_subarray_toArray
    let ctx ← Simp.mkContext { beta := false, zeta := false, iota := false, proj := false }
      (simpTheorems := #[thms])
    let (result, _) ← Meta.simp info.value ctx
    let g ← getMainGoal
    g.assign (← result.getProof)
    replaceMainGoal []

def combat_tickWithActor (a : Simulation → Simulation) : Simulation → UInt32 → Bool → Simulation := by
  run_tac do
    let g ← getMainGoal
    g.withContext do
      let a ← Term.elabTerm (mkIdent `a) none
      let info ← getConstInfoDefn ``Simulation.tickCombatV1
      g.assign (info.value.replace fun e =>
        if e.isConst && e.constName!.toString.endsWith "Doom.Simulation.actorTickCombatV1"
        then some a else none)
    replaceMainGoal []

theorem combat_tick_original : combat_tickWithActor combat_actorOriginal = @Simulation.tickCombatV1 := by
  doom_kernel_rfl

def combat_tickNormalized (s : Simulation) (keys : UInt32) : Simulation := combat_tickWithActor combat_actorNormalized s keys true

theorem combat_tick_equivalence (s : Simulation) (keys : UInt32) : s.tickCombatV1 keys = combat_tickNormalized s keys := by
  rw [← combat_tick_original, combat_actor_equivalence]
  rfl

theorem combat_first_normalized :
    (twoImpStart.toOption.map fun s => (combat_tickNormalized s 0).inventory.health) = some 100 := by
  doom_kernel_rfl

/-- The complete combat tick, with its actual two-imp spawn, preserves initial
health on tick one. The normalization bridge holds for every simulation state. -/
theorem combat_first_tick_health :
    (twoImpStart.toOption.map fun s => (s.tickCombatV1 0).inventory.health) = some 100 := by
  simp only [combat_tick_equivalence]
  exact combat_first_normalized

end LeanDoomProofs
