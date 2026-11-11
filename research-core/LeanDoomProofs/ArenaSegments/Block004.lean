import LeanDoomProofs.ArenaData.Block004
import LeanDoomProofs.ArenaData.Block003
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

private theorem safe_34 : combatSafe arena_state_34 := by unfold combatSafe; decide +kernel

private theorem safe_35 : combatSafe arena_state_35 := by unfold combatSafe; decide +kernel

private theorem safe_36 : combatSafe arena_state_36 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 35"
  out.flush

private theorem normalized_34 : combat_tickNormalized arena_state_34 8192 = arena_state_35 := by combat_kernel_close

private theorem actual_34 : arena_state_34.tickCombatV1 8192 = arena_state_35 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_34 8192) normalized_34

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 36"
  out.flush

private theorem normalized_35 : combat_tickNormalized arena_state_35 8192 = arena_state_36 := by combat_kernel_close

private theorem actual_35 : arena_state_35.tickCombatV1 8192 = arena_state_36 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_35 8192) normalized_35

/-- Complete checked transitions 35 through 36, with every prefix alive and error-free. -/
theorem arena_segment_004 : CombatSegment arena_state_34 arena_inputs_004 arena_state_36 := by
  doom_kernel_exact (combat_segment_cons arena_state_34 arena_state_35 arena_state_36 8192 [8192] actual_34 safe_34
    (combat_segment_cons arena_state_35 arena_state_36 arena_state_36 8192 [] actual_35 safe_35
    (combat_segment_nil arena_state_36 safe_36)))

#print axioms arena_segment_004
end LeanDoomProofs
