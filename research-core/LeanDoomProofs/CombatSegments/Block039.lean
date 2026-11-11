import LeanDoomProofs.CombatData.Block039
import LeanDoomProofs.CombatData.Block038
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

private theorem safe_324 : combatSafe twoImp_state_324 := by unfold combatSafe; decide +kernel

private theorem safe_325 : combatSafe twoImp_state_325 := by unfold combatSafe; decide +kernel

private theorem safe_326 : combatSafe twoImp_state_326 := by unfold combatSafe; decide +kernel

private theorem safe_327 : combatSafe twoImp_state_327 := by unfold combatSafe; decide +kernel

private theorem safe_328 : combatSafe twoImp_state_328 := by unfold combatSafe; decide +kernel

private theorem safe_329 : combatSafe twoImp_state_329 := by unfold combatSafe; decide +kernel

private theorem safe_330 : combatSafe twoImp_state_330 := by unfold combatSafe; decide +kernel

private theorem safe_331 : combatSafe twoImp_state_331 := by unfold combatSafe; decide +kernel

private theorem safe_332 : combatSafe twoImp_state_332 := by unfold combatSafe; decide +kernel

private theorem safe_333 : combatSafe twoImp_state_333 := by unfold combatSafe; decide +kernel

private theorem safe_334 : combatSafe twoImp_state_334 := by unfold combatSafe; decide +kernel

private theorem safe_335 : combatSafe twoImp_state_335 := by unfold combatSafe; decide +kernel

private theorem safe_336 : combatSafe twoImp_state_336 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 325"
  out.flush

private theorem normalized_324 : combat_tickNormalized twoImp_state_324 2 = twoImp_state_325 := by combat_kernel_close

private theorem actual_324 : twoImp_state_324.tickCombatV1 2 = twoImp_state_325 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_324 2) normalized_324

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 326"
  out.flush

private theorem normalized_325 : combat_tickNormalized twoImp_state_325 2 = twoImp_state_326 := by combat_kernel_close

private theorem actual_325 : twoImp_state_325.tickCombatV1 2 = twoImp_state_326 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_325 2) normalized_325

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 327"
  out.flush

private theorem normalized_326 : combat_tickNormalized twoImp_state_326 2 = twoImp_state_327 := by combat_kernel_close

private theorem actual_326 : twoImp_state_326.tickCombatV1 2 = twoImp_state_327 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_326 2) normalized_326

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 328"
  out.flush

private theorem normalized_327 : combat_tickNormalized twoImp_state_327 2 = twoImp_state_328 := by combat_kernel_close

private theorem actual_327 : twoImp_state_327.tickCombatV1 2 = twoImp_state_328 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_327 2) normalized_327

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 329"
  out.flush

private theorem normalized_328 : combat_tickNormalized twoImp_state_328 2 = twoImp_state_329 := by combat_kernel_close

private theorem actual_328 : twoImp_state_328.tickCombatV1 2 = twoImp_state_329 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_328 2) normalized_328

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 330"
  out.flush

private theorem normalized_329 : combat_tickNormalized twoImp_state_329 2 = twoImp_state_330 := by combat_kernel_close

private theorem actual_329 : twoImp_state_329.tickCombatV1 2 = twoImp_state_330 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_329 2) normalized_329

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 331"
  out.flush

private theorem normalized_330 : combat_tickNormalized twoImp_state_330 2 = twoImp_state_331 := by combat_kernel_close

private theorem actual_330 : twoImp_state_330.tickCombatV1 2 = twoImp_state_331 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_330 2) normalized_330

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 332"
  out.flush

private theorem normalized_331 : combat_tickNormalized twoImp_state_331 2 = twoImp_state_332 := by combat_kernel_close

private theorem actual_331 : twoImp_state_331.tickCombatV1 2 = twoImp_state_332 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_331 2) normalized_331

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 333"
  out.flush

private theorem normalized_332 : combat_tickNormalized twoImp_state_332 2 = twoImp_state_333 := by combat_kernel_close

private theorem actual_332 : twoImp_state_332.tickCombatV1 2 = twoImp_state_333 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_332 2) normalized_332

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 334"
  out.flush

private theorem normalized_333 : combat_tickNormalized twoImp_state_333 2 = twoImp_state_334 := by combat_kernel_close

private theorem actual_333 : twoImp_state_333.tickCombatV1 2 = twoImp_state_334 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_333 2) normalized_333

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 335"
  out.flush

private theorem normalized_334 : combat_tickNormalized twoImp_state_334 2 = twoImp_state_335 := by combat_kernel_close

private theorem actual_334 : twoImp_state_334.tickCombatV1 2 = twoImp_state_335 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_334 2) normalized_334

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 336"
  out.flush

private theorem normalized_335 : combat_tickNormalized twoImp_state_335 2 = twoImp_state_336 := by combat_kernel_close

private theorem actual_335 : twoImp_state_335.tickCombatV1 2 = twoImp_state_336 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_335 2) normalized_335

/-- Complete checked transitions 325 through 336, with every prefix alive and error-free. -/
theorem twoImp_segment_039 : CombatSegment twoImp_state_324 twoImp_inputs_039 twoImp_state_336 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_324 twoImp_state_325 twoImp_state_336 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_324 safe_324
    (combat_segment_cons twoImp_state_325 twoImp_state_326 twoImp_state_336 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_325 safe_325
    (combat_segment_cons twoImp_state_326 twoImp_state_327 twoImp_state_336 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_326 safe_326
    (combat_segment_cons twoImp_state_327 twoImp_state_328 twoImp_state_336 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_327 safe_327
    (combat_segment_cons twoImp_state_328 twoImp_state_329 twoImp_state_336 2 [2, 2, 2, 2, 2, 2, 2] actual_328 safe_328
    (combat_segment_cons twoImp_state_329 twoImp_state_330 twoImp_state_336 2 [2, 2, 2, 2, 2, 2] actual_329 safe_329
    (combat_segment_cons twoImp_state_330 twoImp_state_331 twoImp_state_336 2 [2, 2, 2, 2, 2] actual_330 safe_330
    (combat_segment_cons twoImp_state_331 twoImp_state_332 twoImp_state_336 2 [2, 2, 2, 2] actual_331 safe_331
    (combat_segment_cons twoImp_state_332 twoImp_state_333 twoImp_state_336 2 [2, 2, 2] actual_332 safe_332
    (combat_segment_cons twoImp_state_333 twoImp_state_334 twoImp_state_336 2 [2, 2] actual_333 safe_333
    (combat_segment_cons twoImp_state_334 twoImp_state_335 twoImp_state_336 2 [2] actual_334 safe_334
    (combat_segment_cons twoImp_state_335 twoImp_state_336 twoImp_state_336 2 [] actual_335 safe_335
    (combat_segment_nil twoImp_state_336 safe_336)))))))))))))

#print axioms twoImp_segment_039
end LeanDoomProofs
