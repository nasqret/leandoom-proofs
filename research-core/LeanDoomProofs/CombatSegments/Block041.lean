import LeanDoomProofs.CombatData.Block041
import LeanDoomProofs.CombatData.Block040
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

private theorem safe_348 : combatSafe twoImp_state_348 := by unfold combatSafe; decide +kernel

private theorem safe_349 : combatSafe twoImp_state_349 := by unfold combatSafe; decide +kernel

private theorem safe_350 : combatSafe twoImp_state_350 := by unfold combatSafe; decide +kernel

private theorem safe_351 : combatSafe twoImp_state_351 := by unfold combatSafe; decide +kernel

private theorem safe_352 : combatSafe twoImp_state_352 := by unfold combatSafe; decide +kernel

private theorem safe_353 : combatSafe twoImp_state_353 := by unfold combatSafe; decide +kernel

private theorem safe_354 : combatSafe twoImp_state_354 := by unfold combatSafe; decide +kernel

private theorem safe_355 : combatSafe twoImp_state_355 := by unfold combatSafe; decide +kernel

private theorem safe_356 : combatSafe twoImp_state_356 := by unfold combatSafe; decide +kernel

private theorem safe_357 : combatSafe twoImp_state_357 := by unfold combatSafe; decide +kernel

private theorem safe_358 : combatSafe twoImp_state_358 := by unfold combatSafe; decide +kernel

private theorem safe_359 : combatSafe twoImp_state_359 := by unfold combatSafe; decide +kernel

private theorem safe_360 : combatSafe twoImp_state_360 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 349"
  out.flush

private theorem normalized_348 : combat_tickNormalized twoImp_state_348 2 = twoImp_state_349 := by combat_kernel_close

private theorem actual_348 : twoImp_state_348.tickCombatV1 2 = twoImp_state_349 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_348 2) normalized_348

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 350"
  out.flush

private theorem normalized_349 : combat_tickNormalized twoImp_state_349 2 = twoImp_state_350 := by combat_kernel_close

private theorem actual_349 : twoImp_state_349.tickCombatV1 2 = twoImp_state_350 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_349 2) normalized_349

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 351"
  out.flush

private theorem normalized_350 : combat_tickNormalized twoImp_state_350 2 = twoImp_state_351 := by combat_kernel_close

private theorem actual_350 : twoImp_state_350.tickCombatV1 2 = twoImp_state_351 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_350 2) normalized_350

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 352"
  out.flush

private theorem normalized_351 : combat_tickNormalized twoImp_state_351 2 = twoImp_state_352 := by combat_kernel_close

private theorem actual_351 : twoImp_state_351.tickCombatV1 2 = twoImp_state_352 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_351 2) normalized_351

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 353"
  out.flush

private theorem normalized_352 : combat_tickNormalized twoImp_state_352 2 = twoImp_state_353 := by combat_kernel_close

private theorem actual_352 : twoImp_state_352.tickCombatV1 2 = twoImp_state_353 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_352 2) normalized_352

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 354"
  out.flush

private theorem normalized_353 : combat_tickNormalized twoImp_state_353 2 = twoImp_state_354 := by combat_kernel_close

private theorem actual_353 : twoImp_state_353.tickCombatV1 2 = twoImp_state_354 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_353 2) normalized_353

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 355"
  out.flush

private theorem normalized_354 : combat_tickNormalized twoImp_state_354 2 = twoImp_state_355 := by combat_kernel_close

private theorem actual_354 : twoImp_state_354.tickCombatV1 2 = twoImp_state_355 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_354 2) normalized_354

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 356"
  out.flush

private theorem normalized_355 : combat_tickNormalized twoImp_state_355 2 = twoImp_state_356 := by combat_kernel_close

private theorem actual_355 : twoImp_state_355.tickCombatV1 2 = twoImp_state_356 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_355 2) normalized_355

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 357"
  out.flush

private theorem normalized_356 : combat_tickNormalized twoImp_state_356 2 = twoImp_state_357 := by combat_kernel_close

private theorem actual_356 : twoImp_state_356.tickCombatV1 2 = twoImp_state_357 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_356 2) normalized_356

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 358"
  out.flush

private theorem normalized_357 : combat_tickNormalized twoImp_state_357 2 = twoImp_state_358 := by combat_kernel_close

private theorem actual_357 : twoImp_state_357.tickCombatV1 2 = twoImp_state_358 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_357 2) normalized_357

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 359"
  out.flush

private theorem normalized_358 : combat_tickNormalized twoImp_state_358 2 = twoImp_state_359 := by combat_kernel_close

private theorem actual_358 : twoImp_state_358.tickCombatV1 2 = twoImp_state_359 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_358 2) normalized_358

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 360"
  out.flush

private theorem normalized_359 : combat_tickNormalized twoImp_state_359 2 = twoImp_state_360 := by combat_kernel_close

private theorem actual_359 : twoImp_state_359.tickCombatV1 2 = twoImp_state_360 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_359 2) normalized_359

/-- Complete checked transitions 349 through 360, with every prefix alive and error-free. -/
theorem twoImp_segment_041 : CombatSegment twoImp_state_348 twoImp_inputs_041 twoImp_state_360 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_348 twoImp_state_349 twoImp_state_360 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_348 safe_348
    (combat_segment_cons twoImp_state_349 twoImp_state_350 twoImp_state_360 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_349 safe_349
    (combat_segment_cons twoImp_state_350 twoImp_state_351 twoImp_state_360 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_350 safe_350
    (combat_segment_cons twoImp_state_351 twoImp_state_352 twoImp_state_360 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_351 safe_351
    (combat_segment_cons twoImp_state_352 twoImp_state_353 twoImp_state_360 2 [2, 2, 2, 2, 2, 2, 2] actual_352 safe_352
    (combat_segment_cons twoImp_state_353 twoImp_state_354 twoImp_state_360 2 [2, 2, 2, 2, 2, 2] actual_353 safe_353
    (combat_segment_cons twoImp_state_354 twoImp_state_355 twoImp_state_360 2 [2, 2, 2, 2, 2] actual_354 safe_354
    (combat_segment_cons twoImp_state_355 twoImp_state_356 twoImp_state_360 2 [2, 2, 2, 2] actual_355 safe_355
    (combat_segment_cons twoImp_state_356 twoImp_state_357 twoImp_state_360 2 [2, 2, 2] actual_356 safe_356
    (combat_segment_cons twoImp_state_357 twoImp_state_358 twoImp_state_360 2 [2, 2] actual_357 safe_357
    (combat_segment_cons twoImp_state_358 twoImp_state_359 twoImp_state_360 2 [2] actual_358 safe_358
    (combat_segment_cons twoImp_state_359 twoImp_state_360 twoImp_state_360 2 [] actual_359 safe_359
    (combat_segment_nil twoImp_state_360 safe_360)))))))))))))

#print axioms twoImp_segment_041
end LeanDoomProofs
