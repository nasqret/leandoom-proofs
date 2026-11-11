import LeanDoomProofs.CombatData.Block042
import LeanDoomProofs.CombatData.Block041
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

private theorem safe_360 : combatSafe twoImp_state_360 := by unfold combatSafe; decide +kernel

private theorem safe_361 : combatSafe twoImp_state_361 := by unfold combatSafe; decide +kernel

private theorem safe_362 : combatSafe twoImp_state_362 := by unfold combatSafe; decide +kernel

private theorem safe_363 : combatSafe twoImp_state_363 := by unfold combatSafe; decide +kernel

private theorem safe_364 : combatSafe twoImp_state_364 := by unfold combatSafe; decide +kernel

private theorem safe_365 : combatSafe twoImp_state_365 := by unfold combatSafe; decide +kernel

private theorem safe_366 : combatSafe twoImp_state_366 := by unfold combatSafe; decide +kernel

private theorem safe_367 : combatSafe twoImp_state_367 := by unfold combatSafe; decide +kernel

private theorem safe_368 : combatSafe twoImp_state_368 := by unfold combatSafe; decide +kernel

private theorem safe_369 : combatSafe twoImp_state_369 := by unfold combatSafe; decide +kernel

private theorem safe_370 : combatSafe twoImp_state_370 := by unfold combatSafe; decide +kernel

private theorem safe_371 : combatSafe twoImp_state_371 := by unfold combatSafe; decide +kernel

private theorem safe_372 : combatSafe twoImp_state_372 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 361"
  out.flush

private theorem normalized_360 : combat_tickNormalized twoImp_state_360 2 = twoImp_state_361 := by combat_kernel_close

private theorem actual_360 : twoImp_state_360.tickCombatV1 2 = twoImp_state_361 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_360 2) normalized_360

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 362"
  out.flush

private theorem normalized_361 : combat_tickNormalized twoImp_state_361 2 = twoImp_state_362 := by combat_kernel_close

private theorem actual_361 : twoImp_state_361.tickCombatV1 2 = twoImp_state_362 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_361 2) normalized_361

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 363"
  out.flush

private theorem normalized_362 : combat_tickNormalized twoImp_state_362 2 = twoImp_state_363 := by combat_kernel_close

private theorem actual_362 : twoImp_state_362.tickCombatV1 2 = twoImp_state_363 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_362 2) normalized_362

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 364"
  out.flush

private theorem normalized_363 : combat_tickNormalized twoImp_state_363 2 = twoImp_state_364 := by combat_kernel_close

private theorem actual_363 : twoImp_state_363.tickCombatV1 2 = twoImp_state_364 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_363 2) normalized_363

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 365"
  out.flush

private theorem normalized_364 : combat_tickNormalized twoImp_state_364 2 = twoImp_state_365 := by combat_kernel_close

private theorem actual_364 : twoImp_state_364.tickCombatV1 2 = twoImp_state_365 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_364 2) normalized_364

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 366"
  out.flush

private theorem normalized_365 : combat_tickNormalized twoImp_state_365 2 = twoImp_state_366 := by combat_kernel_close

private theorem actual_365 : twoImp_state_365.tickCombatV1 2 = twoImp_state_366 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_365 2) normalized_365

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 367"
  out.flush

private theorem normalized_366 : combat_tickNormalized twoImp_state_366 2 = twoImp_state_367 := by combat_kernel_close

private theorem actual_366 : twoImp_state_366.tickCombatV1 2 = twoImp_state_367 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_366 2) normalized_366

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 368"
  out.flush

private theorem normalized_367 : combat_tickNormalized twoImp_state_367 2 = twoImp_state_368 := by combat_kernel_close

private theorem actual_367 : twoImp_state_367.tickCombatV1 2 = twoImp_state_368 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_367 2) normalized_367

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 369"
  out.flush

private theorem normalized_368 : combat_tickNormalized twoImp_state_368 2 = twoImp_state_369 := by combat_kernel_close

private theorem actual_368 : twoImp_state_368.tickCombatV1 2 = twoImp_state_369 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_368 2) normalized_368

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 370"
  out.flush

private theorem normalized_369 : combat_tickNormalized twoImp_state_369 2 = twoImp_state_370 := by combat_kernel_close

private theorem actual_369 : twoImp_state_369.tickCombatV1 2 = twoImp_state_370 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_369 2) normalized_369

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 371"
  out.flush

private theorem normalized_370 : combat_tickNormalized twoImp_state_370 2 = twoImp_state_371 := by combat_kernel_close

private theorem actual_370 : twoImp_state_370.tickCombatV1 2 = twoImp_state_371 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_370 2) normalized_370

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 372"
  out.flush

private theorem normalized_371 : combat_tickNormalized twoImp_state_371 2 = twoImp_state_372 := by combat_kernel_close

private theorem actual_371 : twoImp_state_371.tickCombatV1 2 = twoImp_state_372 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_371 2) normalized_371

/-- Complete checked transitions 361 through 372, with every prefix alive and error-free. -/
theorem twoImp_segment_042 : CombatSegment twoImp_state_360 twoImp_inputs_042 twoImp_state_372 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_360 twoImp_state_361 twoImp_state_372 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_360 safe_360
    (combat_segment_cons twoImp_state_361 twoImp_state_362 twoImp_state_372 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_361 safe_361
    (combat_segment_cons twoImp_state_362 twoImp_state_363 twoImp_state_372 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_362 safe_362
    (combat_segment_cons twoImp_state_363 twoImp_state_364 twoImp_state_372 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_363 safe_363
    (combat_segment_cons twoImp_state_364 twoImp_state_365 twoImp_state_372 2 [2, 2, 2, 2, 2, 2, 2] actual_364 safe_364
    (combat_segment_cons twoImp_state_365 twoImp_state_366 twoImp_state_372 2 [2, 2, 2, 2, 2, 2] actual_365 safe_365
    (combat_segment_cons twoImp_state_366 twoImp_state_367 twoImp_state_372 2 [2, 2, 2, 2, 2] actual_366 safe_366
    (combat_segment_cons twoImp_state_367 twoImp_state_368 twoImp_state_372 2 [2, 2, 2, 2] actual_367 safe_367
    (combat_segment_cons twoImp_state_368 twoImp_state_369 twoImp_state_372 2 [2, 2, 2] actual_368 safe_368
    (combat_segment_cons twoImp_state_369 twoImp_state_370 twoImp_state_372 2 [2, 2] actual_369 safe_369
    (combat_segment_cons twoImp_state_370 twoImp_state_371 twoImp_state_372 2 [2] actual_370 safe_370
    (combat_segment_cons twoImp_state_371 twoImp_state_372 twoImp_state_372 2 [] actual_371 safe_371
    (combat_segment_nil twoImp_state_372 safe_372)))))))))))))

#print axioms twoImp_segment_042
end LeanDoomProofs
