import InteractionPhase
import OnePressInteraction
open Doom LeanDoomProofs LeanDoomProofs.RecordedRoute
namespace OnePress
set_option Elab.async false
set_option maxRecDepth 65536

/-- The complete post-tick simulation, including the weapon and world updates. -/
def finish := tickFromInteraction start 4096 true after
theorem edge : start.tickCombatV2 4096 true = finish := by
  doom_kernel_exact Eq.trans (phaseEquation start 4096 true) (congrArg (tickFromInteraction start 4096 true) interact)

theorem guard : (CheckedReplay.allowed 4096 && decide (0 < start.inventory.health) && !start.exitRequested) = true := by decide +kernel
#print axioms edge
end OnePress
