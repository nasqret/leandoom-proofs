import LeanDoomProofs.CombatData.Block043
import LeanDoomProofs.CombatData.Block042
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

private theorem safe_372 : combatSafe twoImp_state_372 := by unfold combatSafe; decide +kernel

private theorem safe_373 : combatSafe twoImp_state_373 := by unfold combatSafe; decide +kernel

private theorem safe_374 : combatSafe twoImp_state_374 := by unfold combatSafe; decide +kernel

private theorem safe_375 : combatSafe twoImp_state_375 := by unfold combatSafe; decide +kernel

private theorem safe_376 : combatSafe twoImp_state_376 := by unfold combatSafe; decide +kernel

private theorem safe_377 : combatSafe twoImp_state_377 := by unfold combatSafe; decide +kernel

private theorem safe_378 : combatSafe twoImp_state_378 := by unfold combatSafe; decide +kernel

private theorem safe_379 : combatSafe twoImp_state_379 := by unfold combatSafe; decide +kernel

private theorem safe_380 : combatSafe twoImp_state_380 := by unfold combatSafe; decide +kernel

private theorem safe_381 : combatSafe twoImp_state_381 := by unfold combatSafe; decide +kernel

private theorem safe_382 : combatSafe twoImp_state_382 := by unfold combatSafe; decide +kernel

private theorem safe_383 : combatSafe twoImp_state_383 := by unfold combatSafe; decide +kernel

private theorem safe_384 : combatSafe twoImp_state_384 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 373"
  out.flush

private theorem normalized_372 : combat_tickNormalized twoImp_state_372 2 = twoImp_state_373 := by combat_kernel_close

private theorem actual_372 : twoImp_state_372.tickCombatV1 2 = twoImp_state_373 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_372 2) normalized_372

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 374"
  out.flush

private theorem normalized_373 : combat_tickNormalized twoImp_state_373 2 = twoImp_state_374 := by combat_kernel_close

private theorem actual_373 : twoImp_state_373.tickCombatV1 2 = twoImp_state_374 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_373 2) normalized_373

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 375"
  out.flush

private theorem normalized_374 : combat_tickNormalized twoImp_state_374 2 = twoImp_state_375 := by combat_kernel_close

private theorem actual_374 : twoImp_state_374.tickCombatV1 2 = twoImp_state_375 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_374 2) normalized_374

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 376"
  out.flush

private theorem normalized_375 : combat_tickNormalized twoImp_state_375 2 = twoImp_state_376 := by combat_kernel_close

private theorem actual_375 : twoImp_state_375.tickCombatV1 2 = twoImp_state_376 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_375 2) normalized_375

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 377"
  out.flush

private theorem normalized_376 : combat_tickNormalized twoImp_state_376 2 = twoImp_state_377 := by combat_kernel_close

private theorem actual_376 : twoImp_state_376.tickCombatV1 2 = twoImp_state_377 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_376 2) normalized_376

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 378"
  out.flush

private theorem normalized_377 : combat_tickNormalized twoImp_state_377 2 = twoImp_state_378 := by combat_kernel_close

private theorem actual_377 : twoImp_state_377.tickCombatV1 2 = twoImp_state_378 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_377 2) normalized_377

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 379"
  out.flush

private theorem normalized_378 : combat_tickNormalized twoImp_state_378 2 = twoImp_state_379 := by combat_kernel_close

private theorem actual_378 : twoImp_state_378.tickCombatV1 2 = twoImp_state_379 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_378 2) normalized_378

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 380"
  out.flush

private theorem normalized_379 : combat_tickNormalized twoImp_state_379 2 = twoImp_state_380 := by combat_kernel_close

private theorem actual_379 : twoImp_state_379.tickCombatV1 2 = twoImp_state_380 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_379 2) normalized_379

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 381"
  out.flush

private theorem normalized_380 : combat_tickNormalized twoImp_state_380 2 = twoImp_state_381 := by combat_kernel_close

private theorem actual_380 : twoImp_state_380.tickCombatV1 2 = twoImp_state_381 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_380 2) normalized_380

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 382"
  out.flush

private theorem normalized_381 : combat_tickNormalized twoImp_state_381 2 = twoImp_state_382 := by combat_kernel_close

private theorem actual_381 : twoImp_state_381.tickCombatV1 2 = twoImp_state_382 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_381 2) normalized_381

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 383"
  out.flush

private theorem normalized_382 : combat_tickNormalized twoImp_state_382 2 = twoImp_state_383 := by combat_kernel_close

private theorem actual_382 : twoImp_state_382.tickCombatV1 2 = twoImp_state_383 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_382 2) normalized_382

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 384"
  out.flush

private theorem normalized_383 : combat_tickNormalized twoImp_state_383 2 = twoImp_state_384 := by combat_kernel_close

private theorem actual_383 : twoImp_state_383.tickCombatV1 2 = twoImp_state_384 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_383 2) normalized_383

/-- Complete checked transitions 373 through 384, with every prefix alive and error-free. -/
theorem twoImp_segment_043 : CombatSegment twoImp_state_372 twoImp_inputs_043 twoImp_state_384 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_372 twoImp_state_373 twoImp_state_384 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_372 safe_372
    (combat_segment_cons twoImp_state_373 twoImp_state_374 twoImp_state_384 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_373 safe_373
    (combat_segment_cons twoImp_state_374 twoImp_state_375 twoImp_state_384 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_374 safe_374
    (combat_segment_cons twoImp_state_375 twoImp_state_376 twoImp_state_384 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_375 safe_375
    (combat_segment_cons twoImp_state_376 twoImp_state_377 twoImp_state_384 2 [2, 2, 2, 2, 2, 2, 2] actual_376 safe_376
    (combat_segment_cons twoImp_state_377 twoImp_state_378 twoImp_state_384 2 [2, 2, 2, 2, 2, 2] actual_377 safe_377
    (combat_segment_cons twoImp_state_378 twoImp_state_379 twoImp_state_384 2 [2, 2, 2, 2, 2] actual_378 safe_378
    (combat_segment_cons twoImp_state_379 twoImp_state_380 twoImp_state_384 2 [2, 2, 2, 2] actual_379 safe_379
    (combat_segment_cons twoImp_state_380 twoImp_state_381 twoImp_state_384 2 [2, 2, 2] actual_380 safe_380
    (combat_segment_cons twoImp_state_381 twoImp_state_382 twoImp_state_384 2 [2, 2] actual_381 safe_381
    (combat_segment_cons twoImp_state_382 twoImp_state_383 twoImp_state_384 2 [2] actual_382 safe_382
    (combat_segment_cons twoImp_state_383 twoImp_state_384 twoImp_state_384 2 [] actual_383 safe_383
    (combat_segment_nil twoImp_state_384 safe_384)))))))))))))

#print axioms twoImp_segment_043
end LeanDoomProofs
