import OnePressFoundation
open Doom LeanDoomProofs
namespace OnePress
set_option maxRecDepth 65536
set_option Elab.async false
set_option maxHeartbeats 4000000

def before (v : ViewState) : Simulation := {beforeUse v with combatEnabled := true}
def after : Simulation := {activateImported (before checkpoint.player.view) 2 with useHeld := true}

theorem beforeTick (useFn : Simulation → Simulation) :
    interactionWithUse useFn start 4096 true =
      {useFn (before (checkpoint.player.view.calcHeight checkpoint.player.body 0 true)) with useHeld := true} := by
  doom_kernel_rfl

theorem query (v : ViewState) : queryUse (before v) = .ok roomUseResult := by
  doom_kernel_exact room_queryUse v

theorem activate (v : ViewState) : (before v).use = activateImported (before v) 2 := by
  calc
    _ = dispatchUse (before v) (queryUse (before v)) := use_as_dispatch _
    _ = dispatchUse (before v) (.ok roomUseResult) := congrArg (dispatchUse (before v)) (query v)
    _ = _ := by doom_kernel_rfl

theorem interact : start.interactionTick 4096 true = after := by
  have h := beforeTick Simulation.use
  rw [interactionWithUse_original, room_view, activate] at h
  exact h
#print axioms interact
end OnePress
