import LeanDoomProofs.ArenaData.Block006
import LeanDoomProofs.ArenaData.Block005
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

private theorem safe_46 : combatSafe arena_state_46 := by unfold combatSafe; decide +kernel

private theorem safe_47 : combatSafe arena_state_47 := by unfold combatSafe; decide +kernel

private theorem safe_48 : combatSafe arena_state_48 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 47"
  out.flush

private theorem normalized_46 : combat_tickNormalized arena_state_46 8192 = arena_state_47 := by combat_kernel_close

private theorem actual_46 : arena_state_46.tickCombatV1 8192 = arena_state_47 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_46 8192) normalized_46

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 48"
  out.flush

private theorem normalized_47 : combat_tickNormalized arena_state_47 8192 = arena_state_48 := by combat_kernel_close

private theorem actual_47 : arena_state_47.tickCombatV1 8192 = arena_state_48 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_47 8192) normalized_47

/-- Complete checked transitions 47 through 48, with every prefix alive and error-free. -/
theorem arena_segment_006 : CombatSegment arena_state_46 arena_inputs_006 arena_state_48 := by
  doom_kernel_exact (combat_segment_cons arena_state_46 arena_state_47 arena_state_48 8192 [8192] actual_46 safe_46
    (combat_segment_cons arena_state_47 arena_state_48 arena_state_48 8192 [] actual_47 safe_47
    (combat_segment_nil arena_state_48 safe_48)))

#print axioms arena_segment_006
end LeanDoomProofs
