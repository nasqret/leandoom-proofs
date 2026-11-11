import LeanDoomProofs.CombatData.Block027
import LeanDoomProofs.CombatData.Block026
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

private theorem safe_228 : combatSafe twoImp_state_228 := by unfold combatSafe; decide +kernel

private theorem safe_229 : combatSafe twoImp_state_229 := by unfold combatSafe; decide +kernel

private theorem safe_230 : combatSafe twoImp_state_230 := by unfold combatSafe; decide +kernel

private theorem safe_231 : combatSafe twoImp_state_231 := by unfold combatSafe; decide +kernel

private theorem safe_232 : combatSafe twoImp_state_232 := by unfold combatSafe; decide +kernel

private theorem safe_233 : combatSafe twoImp_state_233 := by unfold combatSafe; decide +kernel

private theorem safe_234 : combatSafe twoImp_state_234 := by unfold combatSafe; decide +kernel

private theorem safe_235 : combatSafe twoImp_state_235 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 229"
  out.flush

private theorem normalized_228 : combat_tickNormalized twoImp_state_228 0 = twoImp_state_229 := by combat_kernel_close

private theorem actual_228 : twoImp_state_228.tickCombatV1 0 = twoImp_state_229 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_228 0) normalized_228

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 230"
  out.flush

private theorem normalized_229 : combat_tickNormalized twoImp_state_229 0 = twoImp_state_230 := by combat_kernel_close

private theorem actual_229 : twoImp_state_229.tickCombatV1 0 = twoImp_state_230 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_229 0) normalized_229

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 231"
  out.flush

private theorem normalized_230 : combat_tickNormalized twoImp_state_230 0 = twoImp_state_231 := by combat_kernel_close

private theorem actual_230 : twoImp_state_230.tickCombatV1 0 = twoImp_state_231 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_230 0) normalized_230

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 232"
  out.flush

private theorem normalized_231 : combat_tickNormalized twoImp_state_231 0 = twoImp_state_232 := by combat_kernel_close

private theorem actual_231 : twoImp_state_231.tickCombatV1 0 = twoImp_state_232 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_231 0) normalized_231

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 233"
  out.flush

private theorem normalized_232 : combat_tickNormalized twoImp_state_232 0 = twoImp_state_233 := by combat_kernel_close

private theorem actual_232 : twoImp_state_232.tickCombatV1 0 = twoImp_state_233 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_232 0) normalized_232

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 234"
  out.flush

private theorem normalized_233 : combat_tickNormalized twoImp_state_233 0 = twoImp_state_234 := by combat_kernel_close

private theorem actual_233 : twoImp_state_233.tickCombatV1 0 = twoImp_state_234 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_233 0) normalized_233

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 235"
  out.flush

private theorem normalized_234 : combat_tickNormalized twoImp_state_234 0 = twoImp_state_235 := by combat_kernel_close

private theorem actual_234 : twoImp_state_234.tickCombatV1 0 = twoImp_state_235 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_234 0) normalized_234

/-- Complete checked transitions 229 through 235, with every prefix alive and error-free. -/
theorem twoImp_segment_027 : CombatSegment twoImp_state_228 twoImp_inputs_027 twoImp_state_235 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_228 twoImp_state_229 twoImp_state_235 0 [0, 0, 0, 0, 0, 0] actual_228 safe_228
    (combat_segment_cons twoImp_state_229 twoImp_state_230 twoImp_state_235 0 [0, 0, 0, 0, 0] actual_229 safe_229
    (combat_segment_cons twoImp_state_230 twoImp_state_231 twoImp_state_235 0 [0, 0, 0, 0] actual_230 safe_230
    (combat_segment_cons twoImp_state_231 twoImp_state_232 twoImp_state_235 0 [0, 0, 0] actual_231 safe_231
    (combat_segment_cons twoImp_state_232 twoImp_state_233 twoImp_state_235 0 [0, 0] actual_232 safe_232
    (combat_segment_cons twoImp_state_233 twoImp_state_234 twoImp_state_235 0 [0] actual_233 safe_233
    (combat_segment_cons twoImp_state_234 twoImp_state_235 twoImp_state_235 0 [] actual_234 safe_234
    (combat_segment_nil twoImp_state_235 safe_235))))))))

#print axioms twoImp_segment_027
end LeanDoomProofs
