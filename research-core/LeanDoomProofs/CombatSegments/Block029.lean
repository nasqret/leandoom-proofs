import LeanDoomProofs.CombatData.Block029
import LeanDoomProofs.CombatData.Block028
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

private theorem safe_240 : combatSafe twoImp_state_240 := by unfold combatSafe; decide +kernel

private theorem safe_241 : combatSafe twoImp_state_241 := by unfold combatSafe; decide +kernel

private theorem safe_242 : combatSafe twoImp_state_242 := by unfold combatSafe; decide +kernel

private theorem safe_243 : combatSafe twoImp_state_243 := by unfold combatSafe; decide +kernel

private theorem safe_244 : combatSafe twoImp_state_244 := by unfold combatSafe; decide +kernel

private theorem safe_245 : combatSafe twoImp_state_245 := by unfold combatSafe; decide +kernel

private theorem safe_246 : combatSafe twoImp_state_246 := by unfold combatSafe; decide +kernel

private theorem safe_247 : combatSafe twoImp_state_247 := by unfold combatSafe; decide +kernel

private theorem safe_248 : combatSafe twoImp_state_248 := by unfold combatSafe; decide +kernel

private theorem safe_249 : combatSafe twoImp_state_249 := by unfold combatSafe; decide +kernel

private theorem safe_250 : combatSafe twoImp_state_250 := by unfold combatSafe; decide +kernel

private theorem safe_251 : combatSafe twoImp_state_251 := by unfold combatSafe; decide +kernel

private theorem safe_252 : combatSafe twoImp_state_252 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 241"
  out.flush

private theorem normalized_240 : combat_tickNormalized twoImp_state_240 8192 = twoImp_state_241 := by combat_kernel_close

private theorem actual_240 : twoImp_state_240.tickCombatV1 8192 = twoImp_state_241 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_240 8192) normalized_240

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 242"
  out.flush

private theorem normalized_241 : combat_tickNormalized twoImp_state_241 8192 = twoImp_state_242 := by combat_kernel_close

private theorem actual_241 : twoImp_state_241.tickCombatV1 8192 = twoImp_state_242 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_241 8192) normalized_241

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 243"
  out.flush

private theorem normalized_242 : combat_tickNormalized twoImp_state_242 8192 = twoImp_state_243 := by combat_kernel_close

private theorem actual_242 : twoImp_state_242.tickCombatV1 8192 = twoImp_state_243 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_242 8192) normalized_242

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 244"
  out.flush

private theorem normalized_243 : combat_tickNormalized twoImp_state_243 8192 = twoImp_state_244 := by combat_kernel_close

private theorem actual_243 : twoImp_state_243.tickCombatV1 8192 = twoImp_state_244 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_243 8192) normalized_243

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 245"
  out.flush

private theorem normalized_244 : combat_tickNormalized twoImp_state_244 8192 = twoImp_state_245 := by combat_kernel_close

private theorem actual_244 : twoImp_state_244.tickCombatV1 8192 = twoImp_state_245 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_244 8192) normalized_244

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 246"
  out.flush

private theorem normalized_245 : combat_tickNormalized twoImp_state_245 8192 = twoImp_state_246 := by combat_kernel_close

private theorem actual_245 : twoImp_state_245.tickCombatV1 8192 = twoImp_state_246 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_245 8192) normalized_245

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 247"
  out.flush

private theorem normalized_246 : combat_tickNormalized twoImp_state_246 8192 = twoImp_state_247 := by combat_kernel_close

private theorem actual_246 : twoImp_state_246.tickCombatV1 8192 = twoImp_state_247 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_246 8192) normalized_246

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 248"
  out.flush

private theorem normalized_247 : combat_tickNormalized twoImp_state_247 8192 = twoImp_state_248 := by combat_kernel_close

private theorem actual_247 : twoImp_state_247.tickCombatV1 8192 = twoImp_state_248 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_247 8192) normalized_247

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 249"
  out.flush

private theorem normalized_248 : combat_tickNormalized twoImp_state_248 8192 = twoImp_state_249 := by combat_kernel_close

private theorem actual_248 : twoImp_state_248.tickCombatV1 8192 = twoImp_state_249 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_248 8192) normalized_248

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 250"
  out.flush

private theorem normalized_249 : combat_tickNormalized twoImp_state_249 8192 = twoImp_state_250 := by combat_kernel_close

private theorem actual_249 : twoImp_state_249.tickCombatV1 8192 = twoImp_state_250 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_249 8192) normalized_249

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 251"
  out.flush

private theorem normalized_250 : combat_tickNormalized twoImp_state_250 8192 = twoImp_state_251 := by combat_kernel_close

private theorem actual_250 : twoImp_state_250.tickCombatV1 8192 = twoImp_state_251 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_250 8192) normalized_250

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 252"
  out.flush

private theorem normalized_251 : combat_tickNormalized twoImp_state_251 8192 = twoImp_state_252 := by combat_kernel_close

private theorem actual_251 : twoImp_state_251.tickCombatV1 8192 = twoImp_state_252 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_251 8192) normalized_251

/-- Complete checked transitions 241 through 252, with every prefix alive and error-free. -/
theorem twoImp_segment_029 : CombatSegment twoImp_state_240 twoImp_inputs_029 twoImp_state_252 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_240 twoImp_state_241 twoImp_state_252 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_240 safe_240
    (combat_segment_cons twoImp_state_241 twoImp_state_242 twoImp_state_252 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_241 safe_241
    (combat_segment_cons twoImp_state_242 twoImp_state_243 twoImp_state_252 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_242 safe_242
    (combat_segment_cons twoImp_state_243 twoImp_state_244 twoImp_state_252 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_243 safe_243
    (combat_segment_cons twoImp_state_244 twoImp_state_245 twoImp_state_252 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_244 safe_244
    (combat_segment_cons twoImp_state_245 twoImp_state_246 twoImp_state_252 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_245 safe_245
    (combat_segment_cons twoImp_state_246 twoImp_state_247 twoImp_state_252 8192 [8192, 8192, 8192, 8192, 8192] actual_246 safe_246
    (combat_segment_cons twoImp_state_247 twoImp_state_248 twoImp_state_252 8192 [8192, 8192, 8192, 8192] actual_247 safe_247
    (combat_segment_cons twoImp_state_248 twoImp_state_249 twoImp_state_252 8192 [8192, 8192, 8192] actual_248 safe_248
    (combat_segment_cons twoImp_state_249 twoImp_state_250 twoImp_state_252 8192 [8192, 8192] actual_249 safe_249
    (combat_segment_cons twoImp_state_250 twoImp_state_251 twoImp_state_252 8192 [8192] actual_250 safe_250
    (combat_segment_cons twoImp_state_251 twoImp_state_252 twoImp_state_252 8192 [] actual_251 safe_251
    (combat_segment_nil twoImp_state_252 safe_252)))))))))))))

#print axioms twoImp_segment_029
end LeanDoomProofs
