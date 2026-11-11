import LeanDoomProofs.CombatV2
import LeanDoomProofs.Passage
import Lean

namespace LeanDoomProofs.RecordedRoute
open Doom
set_option Elab.async false
set_option maxRecDepth 65536

/-- The rest of the actual CombatV2 tick given the full result of its interaction call. -/
def tickFromInteraction (s : Simulation) (k : UInt32) (walking : Bool) (phase : Simulation) : Simulation := by
  run_tac do
    let goal ← Lean.Elab.Tactic.getMainGoal
    goal.withContext do
      let actual ← #[`s,`k,`walking].mapM fun n => Lean.Elab.Term.elabTerm (Lean.mkIdent n) none
      let phase ← Lean.Elab.Term.elabTerm (Lean.mkIdent `phase) none
      let info ← Lean.getConstInfoDefn ``Simulation.tickCombatV2
      let body := info.value.beta actual
      let result := body.replace fun e => if e.isAppOfArity ``Simulation.interactionTick 3 then some phase else none
      if body == result then throwError "interaction call not found"
      goal.assign result
    Lean.Elab.Tactic.replaceMainGoal []

theorem phaseEquation (s : Simulation) (k : UInt32) (walking : Bool) :
    s.tickCombatV2 k walking = tickFromInteraction s k walking (s.interactionTick k (walking && decide (0 < s.inventory.health))) := by
  doom_kernel_rfl

#print axioms phaseEquation
end LeanDoomProofs.RecordedRoute
