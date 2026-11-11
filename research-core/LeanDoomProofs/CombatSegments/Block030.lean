import LeanDoomProofs.CombatData.Block030
import LeanDoomProofs.CombatData.Block029
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

private theorem safe_252 : combatSafe twoImp_state_252 := by unfold combatSafe; decide +kernel

private theorem safe_253 : combatSafe twoImp_state_253 := by unfold combatSafe; decide +kernel

private theorem safe_254 : combatSafe twoImp_state_254 := by unfold combatSafe; decide +kernel

private theorem safe_255 : combatSafe twoImp_state_255 := by unfold combatSafe; decide +kernel

private theorem safe_256 : combatSafe twoImp_state_256 := by unfold combatSafe; decide +kernel

private theorem safe_257 : combatSafe twoImp_state_257 := by unfold combatSafe; decide +kernel

private theorem safe_258 : combatSafe twoImp_state_258 := by unfold combatSafe; decide +kernel

private theorem safe_259 : combatSafe twoImp_state_259 := by unfold combatSafe; decide +kernel

private theorem safe_260 : combatSafe twoImp_state_260 := by unfold combatSafe; decide +kernel

private theorem safe_261 : combatSafe twoImp_state_261 := by unfold combatSafe; decide +kernel

private theorem safe_262 : combatSafe twoImp_state_262 := by unfold combatSafe; decide +kernel

private theorem safe_263 : combatSafe twoImp_state_263 := by unfold combatSafe; decide +kernel

private theorem safe_264 : combatSafe twoImp_state_264 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 253"
  out.flush

private theorem normalized_252 : combat_tickNormalized twoImp_state_252 8192 = twoImp_state_253 := by combat_kernel_close

private theorem actual_252 : twoImp_state_252.tickCombatV1 8192 = twoImp_state_253 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_252 8192) normalized_252

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 254"
  out.flush

private theorem normalized_253 : combat_tickNormalized twoImp_state_253 8192 = twoImp_state_254 := by combat_kernel_close

private theorem actual_253 : twoImp_state_253.tickCombatV1 8192 = twoImp_state_254 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_253 8192) normalized_253

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 255"
  out.flush

private theorem normalized_254 : combat_tickNormalized twoImp_state_254 8192 = twoImp_state_255 := by combat_kernel_close

private theorem actual_254 : twoImp_state_254.tickCombatV1 8192 = twoImp_state_255 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_254 8192) normalized_254

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 256"
  out.flush

private theorem normalized_255 : combat_tickNormalized twoImp_state_255 8192 = twoImp_state_256 := by combat_kernel_close

private theorem actual_255 : twoImp_state_255.tickCombatV1 8192 = twoImp_state_256 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_255 8192) normalized_255

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 257"
  out.flush

private theorem normalized_256 : combat_tickNormalized twoImp_state_256 8192 = twoImp_state_257 := by combat_kernel_close

private theorem actual_256 : twoImp_state_256.tickCombatV1 8192 = twoImp_state_257 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_256 8192) normalized_256

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 258"
  out.flush

private theorem normalized_257 : combat_tickNormalized twoImp_state_257 8192 = twoImp_state_258 := by combat_kernel_close

private theorem actual_257 : twoImp_state_257.tickCombatV1 8192 = twoImp_state_258 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_257 8192) normalized_257

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 259"
  out.flush

private theorem normalized_258 : combat_tickNormalized twoImp_state_258 8192 = twoImp_state_259 := by combat_kernel_close

private theorem actual_258 : twoImp_state_258.tickCombatV1 8192 = twoImp_state_259 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_258 8192) normalized_258

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 260"
  out.flush

private theorem normalized_259 : combat_tickNormalized twoImp_state_259 8192 = twoImp_state_260 := by combat_kernel_close

private theorem actual_259 : twoImp_state_259.tickCombatV1 8192 = twoImp_state_260 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_259 8192) normalized_259

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 261"
  out.flush

private theorem normalized_260 : combat_tickNormalized twoImp_state_260 8192 = twoImp_state_261 := by combat_kernel_close

private theorem actual_260 : twoImp_state_260.tickCombatV1 8192 = twoImp_state_261 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_260 8192) normalized_260

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 262"
  out.flush

private theorem normalized_261 : combat_tickNormalized twoImp_state_261 8192 = twoImp_state_262 := by combat_kernel_close

private theorem actual_261 : twoImp_state_261.tickCombatV1 8192 = twoImp_state_262 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_261 8192) normalized_261

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 263"
  out.flush

private theorem normalized_262 : combat_tickNormalized twoImp_state_262 8192 = twoImp_state_263 := by combat_kernel_close

private theorem actual_262 : twoImp_state_262.tickCombatV1 8192 = twoImp_state_263 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_262 8192) normalized_262

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 264"
  out.flush

private theorem normalized_263 : combat_tickNormalized twoImp_state_263 8192 = twoImp_state_264 := by combat_kernel_close

private theorem actual_263 : twoImp_state_263.tickCombatV1 8192 = twoImp_state_264 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_263 8192) normalized_263

/-- Complete checked transitions 253 through 264, with every prefix alive and error-free. -/
theorem twoImp_segment_030 : CombatSegment twoImp_state_252 twoImp_inputs_030 twoImp_state_264 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_252 twoImp_state_253 twoImp_state_264 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_252 safe_252
    (combat_segment_cons twoImp_state_253 twoImp_state_254 twoImp_state_264 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_253 safe_253
    (combat_segment_cons twoImp_state_254 twoImp_state_255 twoImp_state_264 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_254 safe_254
    (combat_segment_cons twoImp_state_255 twoImp_state_256 twoImp_state_264 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_255 safe_255
    (combat_segment_cons twoImp_state_256 twoImp_state_257 twoImp_state_264 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_256 safe_256
    (combat_segment_cons twoImp_state_257 twoImp_state_258 twoImp_state_264 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_257 safe_257
    (combat_segment_cons twoImp_state_258 twoImp_state_259 twoImp_state_264 8192 [8192, 8192, 8192, 8192, 8192] actual_258 safe_258
    (combat_segment_cons twoImp_state_259 twoImp_state_260 twoImp_state_264 8192 [8192, 8192, 8192, 8192] actual_259 safe_259
    (combat_segment_cons twoImp_state_260 twoImp_state_261 twoImp_state_264 8192 [8192, 8192, 8192] actual_260 safe_260
    (combat_segment_cons twoImp_state_261 twoImp_state_262 twoImp_state_264 8192 [8192, 8192] actual_261 safe_261
    (combat_segment_cons twoImp_state_262 twoImp_state_263 twoImp_state_264 8192 [8192] actual_262 safe_262
    (combat_segment_cons twoImp_state_263 twoImp_state_264 twoImp_state_264 8192 [] actual_263 safe_263
    (combat_segment_nil twoImp_state_264 safe_264)))))))))))))

#print axioms twoImp_segment_030
end LeanDoomProofs
