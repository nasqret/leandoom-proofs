import LeanDoomProofs.ArenaData.Block000
import LeanDoomProofs.CombatKernel
import LeanDoomProofs.CombatTables
import LeanDoomProofs.CombatArithmetic
import LeanDoomProofs.CombatPath

namespace LeanDoomProofs
open Doom
set_option maxRecDepth 32768
set_option Elab.async false
set_option maxHeartbeats 2000000
set_option cbv.maxSteps 1000000
attribute [local cbv_opaque] Float.ofNat Float.ofScientific Float.ofBits Fixed.toFloat Tables.fineSine Tables.tanToAngle Tables.fineTangent
attribute [local cbv_eval] Nat.zero_mul Nat.mul_zero Nat.zero_add Nat.add_zero

private theorem safe_0 : combatSafe arena_state_0 := by unfold combatSafe; decide +kernel

private theorem safe_1 : combatSafe arena_state_1 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 1"
  out.flush

private theorem normalized_0 : combat_tickNormalized arena_state_0 65538 = arena_state_1 := by combat_kernel_close

private theorem actual_0 : arena_state_0.tickCombatV1 65538 = arena_state_1 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_0 65538) normalized_0

/-- Complete checked transitions 1 through 1, with every prefix alive and error-free. -/
theorem arena_segment_000 : CombatSegment arena_state_0 arena_inputs_000 arena_state_1 := by
  doom_kernel_exact (combat_segment_cons arena_state_0 arena_state_1 arena_state_1 65538 [] actual_0 safe_0
    (combat_segment_nil arena_state_1 safe_1))

#print axioms arena_segment_000
end LeanDoomProofs
