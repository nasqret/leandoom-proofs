import LeanDoomProofs.CombatData.Block032
import LeanDoomProofs.CombatData.Block031
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

private theorem safe_276 : combatSafe twoImp_state_276 := by unfold combatSafe; decide +kernel

private theorem safe_277 : combatSafe twoImp_state_277 := by unfold combatSafe; decide +kernel

private theorem safe_278 : combatSafe twoImp_state_278 := by unfold combatSafe; decide +kernel

private theorem safe_279 : combatSafe twoImp_state_279 := by unfold combatSafe; decide +kernel

private theorem safe_280 : combatSafe twoImp_state_280 := by unfold combatSafe; decide +kernel

private theorem safe_281 : combatSafe twoImp_state_281 := by unfold combatSafe; decide +kernel

private theorem safe_282 : combatSafe twoImp_state_282 := by unfold combatSafe; decide +kernel

private theorem safe_283 : combatSafe twoImp_state_283 := by unfold combatSafe; decide +kernel

private theorem safe_284 : combatSafe twoImp_state_284 := by unfold combatSafe; decide +kernel

private theorem safe_285 : combatSafe twoImp_state_285 := by unfold combatSafe; decide +kernel

private theorem safe_286 : combatSafe twoImp_state_286 := by unfold combatSafe; decide +kernel

private theorem safe_287 : combatSafe twoImp_state_287 := by unfold combatSafe; decide +kernel

private theorem safe_288 : combatSafe twoImp_state_288 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 277"
  out.flush

private theorem normalized_276 : combat_tickNormalized twoImp_state_276 8192 = twoImp_state_277 := by combat_kernel_close

private theorem actual_276 : twoImp_state_276.tickCombatV1 8192 = twoImp_state_277 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_276 8192) normalized_276

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 278"
  out.flush

private theorem normalized_277 : combat_tickNormalized twoImp_state_277 8192 = twoImp_state_278 := by combat_kernel_close

private theorem actual_277 : twoImp_state_277.tickCombatV1 8192 = twoImp_state_278 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_277 8192) normalized_277

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 279"
  out.flush

private theorem normalized_278 : combat_tickNormalized twoImp_state_278 8192 = twoImp_state_279 := by combat_kernel_close

private theorem actual_278 : twoImp_state_278.tickCombatV1 8192 = twoImp_state_279 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_278 8192) normalized_278

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 280"
  out.flush

private theorem normalized_279 : combat_tickNormalized twoImp_state_279 8192 = twoImp_state_280 := by combat_kernel_close

private theorem actual_279 : twoImp_state_279.tickCombatV1 8192 = twoImp_state_280 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_279 8192) normalized_279

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 281"
  out.flush

private theorem normalized_280 : combat_tickNormalized twoImp_state_280 8192 = twoImp_state_281 := by combat_kernel_close

private theorem actual_280 : twoImp_state_280.tickCombatV1 8192 = twoImp_state_281 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_280 8192) normalized_280

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 282"
  out.flush

private theorem normalized_281 : combat_tickNormalized twoImp_state_281 8192 = twoImp_state_282 := by combat_kernel_close

private theorem actual_281 : twoImp_state_281.tickCombatV1 8192 = twoImp_state_282 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_281 8192) normalized_281

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 283"
  out.flush

private theorem normalized_282 : combat_tickNormalized twoImp_state_282 8192 = twoImp_state_283 := by combat_kernel_close

private theorem actual_282 : twoImp_state_282.tickCombatV1 8192 = twoImp_state_283 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_282 8192) normalized_282

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 284"
  out.flush

private theorem normalized_283 : combat_tickNormalized twoImp_state_283 8192 = twoImp_state_284 := by combat_kernel_close

private theorem actual_283 : twoImp_state_283.tickCombatV1 8192 = twoImp_state_284 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_283 8192) normalized_283

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 285"
  out.flush

private theorem normalized_284 : combat_tickNormalized twoImp_state_284 8192 = twoImp_state_285 := by combat_kernel_close

private theorem actual_284 : twoImp_state_284.tickCombatV1 8192 = twoImp_state_285 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_284 8192) normalized_284

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 286"
  out.flush

private theorem normalized_285 : combat_tickNormalized twoImp_state_285 8192 = twoImp_state_286 := by combat_kernel_close

private theorem actual_285 : twoImp_state_285.tickCombatV1 8192 = twoImp_state_286 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_285 8192) normalized_285

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 287"
  out.flush

private theorem normalized_286 : combat_tickNormalized twoImp_state_286 8192 = twoImp_state_287 := by combat_kernel_close

private theorem actual_286 : twoImp_state_286.tickCombatV1 8192 = twoImp_state_287 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_286 8192) normalized_286

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 288"
  out.flush

private theorem normalized_287 : combat_tickNormalized twoImp_state_287 8192 = twoImp_state_288 := by combat_kernel_close

private theorem actual_287 : twoImp_state_287.tickCombatV1 8192 = twoImp_state_288 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_287 8192) normalized_287

/-- Complete checked transitions 277 through 288, with every prefix alive and error-free. -/
theorem twoImp_segment_032 : CombatSegment twoImp_state_276 twoImp_inputs_032 twoImp_state_288 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_276 twoImp_state_277 twoImp_state_288 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_276 safe_276
    (combat_segment_cons twoImp_state_277 twoImp_state_278 twoImp_state_288 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_277 safe_277
    (combat_segment_cons twoImp_state_278 twoImp_state_279 twoImp_state_288 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_278 safe_278
    (combat_segment_cons twoImp_state_279 twoImp_state_280 twoImp_state_288 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_279 safe_279
    (combat_segment_cons twoImp_state_280 twoImp_state_281 twoImp_state_288 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_280 safe_280
    (combat_segment_cons twoImp_state_281 twoImp_state_282 twoImp_state_288 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_281 safe_281
    (combat_segment_cons twoImp_state_282 twoImp_state_283 twoImp_state_288 8192 [8192, 8192, 8192, 8192, 8192] actual_282 safe_282
    (combat_segment_cons twoImp_state_283 twoImp_state_284 twoImp_state_288 8192 [8192, 8192, 8192, 8192] actual_283 safe_283
    (combat_segment_cons twoImp_state_284 twoImp_state_285 twoImp_state_288 8192 [8192, 8192, 8192] actual_284 safe_284
    (combat_segment_cons twoImp_state_285 twoImp_state_286 twoImp_state_288 8192 [8192, 8192] actual_285 safe_285
    (combat_segment_cons twoImp_state_286 twoImp_state_287 twoImp_state_288 8192 [8192] actual_286 safe_286
    (combat_segment_cons twoImp_state_287 twoImp_state_288 twoImp_state_288 8192 [] actual_287 safe_287
    (combat_segment_nil twoImp_state_288 safe_288)))))))))))))

#print axioms twoImp_segment_032
end LeanDoomProofs
