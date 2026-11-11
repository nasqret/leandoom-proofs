import LeanDoomProofs.CombatData.Block028
import LeanDoomProofs.CombatData.Block027
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

private theorem safe_235 : combatSafe twoImp_state_235 := by unfold combatSafe; decide +kernel

private theorem safe_236 : combatSafe twoImp_state_236 := by unfold combatSafe; decide +kernel

private theorem safe_237 : combatSafe twoImp_state_237 := by unfold combatSafe; decide +kernel

private theorem safe_238 : combatSafe twoImp_state_238 := by unfold combatSafe; decide +kernel

private theorem safe_239 : combatSafe twoImp_state_239 := by unfold combatSafe; decide +kernel

private theorem safe_240 : combatSafe twoImp_state_240 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 236"
  out.flush

private theorem normalized_235 : combat_tickNormalized twoImp_state_235 8192 = twoImp_state_236 := by combat_kernel_close

private theorem actual_235 : twoImp_state_235.tickCombatV1 8192 = twoImp_state_236 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_235 8192) normalized_235

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 237"
  out.flush

private theorem normalized_236 : combat_tickNormalized twoImp_state_236 8192 = twoImp_state_237 := by combat_kernel_close

private theorem actual_236 : twoImp_state_236.tickCombatV1 8192 = twoImp_state_237 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_236 8192) normalized_236

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 238"
  out.flush

private theorem normalized_237 : combat_tickNormalized twoImp_state_237 8192 = twoImp_state_238 := by combat_kernel_close

private theorem actual_237 : twoImp_state_237.tickCombatV1 8192 = twoImp_state_238 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_237 8192) normalized_237

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 239"
  out.flush

private theorem normalized_238 : combat_tickNormalized twoImp_state_238 8192 = twoImp_state_239 := by combat_kernel_close

private theorem actual_238 : twoImp_state_238.tickCombatV1 8192 = twoImp_state_239 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_238 8192) normalized_238

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 240"
  out.flush

private theorem normalized_239 : combat_tickNormalized twoImp_state_239 8192 = twoImp_state_240 := by combat_kernel_close

private theorem actual_239 : twoImp_state_239.tickCombatV1 8192 = twoImp_state_240 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_239 8192) normalized_239

/-- Complete checked transitions 236 through 240, with every prefix alive and error-free. -/
theorem twoImp_segment_028 : CombatSegment twoImp_state_235 twoImp_inputs_028 twoImp_state_240 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_235 twoImp_state_236 twoImp_state_240 8192 [8192, 8192, 8192, 8192] actual_235 safe_235
    (combat_segment_cons twoImp_state_236 twoImp_state_237 twoImp_state_240 8192 [8192, 8192, 8192] actual_236 safe_236
    (combat_segment_cons twoImp_state_237 twoImp_state_238 twoImp_state_240 8192 [8192, 8192] actual_237 safe_237
    (combat_segment_cons twoImp_state_238 twoImp_state_239 twoImp_state_240 8192 [8192] actual_238 safe_238
    (combat_segment_cons twoImp_state_239 twoImp_state_240 twoImp_state_240 8192 [] actual_239 safe_239
    (combat_segment_nil twoImp_state_240 safe_240))))))

#print axioms twoImp_segment_028
end LeanDoomProofs
