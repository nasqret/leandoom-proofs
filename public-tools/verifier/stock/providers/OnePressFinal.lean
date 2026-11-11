import OnePressBridge
open Doom LeanDoomProofs
namespace OnePress
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000
set_option Elab.async false

theorem healthy : finish.inventory.health = 100 := by doom_kernel_rfl
theorem errorFree : finish.physicsError = none := by doom_kernel_rfl
theorem safe : combatSafe finish := ⟨errorFree, by rw [healthy]; decide⟩
theorem win : finish.exitRequested = true := by doom_kernel_rfl
#print axioms healthy
#print axioms errorFree
#print axioms win
end OnePress
