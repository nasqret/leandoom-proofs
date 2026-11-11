import LeanDoomProofs.CombatData.Block040
import LeanDoomProofs.CombatData.Block039
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

private theorem safe_336 : combatSafe twoImp_state_336 := by unfold combatSafe; decide +kernel

private theorem safe_337 : combatSafe twoImp_state_337 := by unfold combatSafe; decide +kernel

private theorem safe_338 : combatSafe twoImp_state_338 := by unfold combatSafe; decide +kernel

private theorem safe_339 : combatSafe twoImp_state_339 := by unfold combatSafe; decide +kernel

private theorem safe_340 : combatSafe twoImp_state_340 := by unfold combatSafe; decide +kernel

private theorem safe_341 : combatSafe twoImp_state_341 := by unfold combatSafe; decide +kernel

private theorem safe_342 : combatSafe twoImp_state_342 := by unfold combatSafe; decide +kernel

private theorem safe_343 : combatSafe twoImp_state_343 := by unfold combatSafe; decide +kernel

private theorem safe_344 : combatSafe twoImp_state_344 := by unfold combatSafe; decide +kernel

private theorem safe_345 : combatSafe twoImp_state_345 := by unfold combatSafe; decide +kernel

private theorem safe_346 : combatSafe twoImp_state_346 := by unfold combatSafe; decide +kernel

private theorem safe_347 : combatSafe twoImp_state_347 := by unfold combatSafe; decide +kernel

private theorem safe_348 : combatSafe twoImp_state_348 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 337"
  out.flush

private theorem normalized_336 : combat_tickNormalized twoImp_state_336 2 = twoImp_state_337 := by combat_kernel_close

private theorem actual_336 : twoImp_state_336.tickCombatV1 2 = twoImp_state_337 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_336 2) normalized_336

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 338"
  out.flush

private theorem normalized_337 : combat_tickNormalized twoImp_state_337 2 = twoImp_state_338 := by combat_kernel_close

private theorem actual_337 : twoImp_state_337.tickCombatV1 2 = twoImp_state_338 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_337 2) normalized_337

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 339"
  out.flush

private theorem normalized_338 : combat_tickNormalized twoImp_state_338 2 = twoImp_state_339 := by combat_kernel_close

private theorem actual_338 : twoImp_state_338.tickCombatV1 2 = twoImp_state_339 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_338 2) normalized_338

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 340"
  out.flush

private theorem normalized_339 : combat_tickNormalized twoImp_state_339 2 = twoImp_state_340 := by combat_kernel_close

private theorem actual_339 : twoImp_state_339.tickCombatV1 2 = twoImp_state_340 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_339 2) normalized_339

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 341"
  out.flush

private theorem normalized_340 : combat_tickNormalized twoImp_state_340 2 = twoImp_state_341 := by combat_kernel_close

private theorem actual_340 : twoImp_state_340.tickCombatV1 2 = twoImp_state_341 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_340 2) normalized_340

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 342"
  out.flush

private theorem normalized_341 : combat_tickNormalized twoImp_state_341 2 = twoImp_state_342 := by combat_kernel_close

private theorem actual_341 : twoImp_state_341.tickCombatV1 2 = twoImp_state_342 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_341 2) normalized_341

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 343"
  out.flush

private theorem normalized_342 : combat_tickNormalized twoImp_state_342 2 = twoImp_state_343 := by combat_kernel_close

private theorem actual_342 : twoImp_state_342.tickCombatV1 2 = twoImp_state_343 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_342 2) normalized_342

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 344"
  out.flush

private theorem normalized_343 : combat_tickNormalized twoImp_state_343 2 = twoImp_state_344 := by combat_kernel_close

private theorem actual_343 : twoImp_state_343.tickCombatV1 2 = twoImp_state_344 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_343 2) normalized_343

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 345"
  out.flush

private theorem normalized_344 : combat_tickNormalized twoImp_state_344 2 = twoImp_state_345 := by combat_kernel_close

private theorem actual_344 : twoImp_state_344.tickCombatV1 2 = twoImp_state_345 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_344 2) normalized_344

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 346"
  out.flush

private theorem normalized_345 : combat_tickNormalized twoImp_state_345 2 = twoImp_state_346 := by combat_kernel_close

private theorem actual_345 : twoImp_state_345.tickCombatV1 2 = twoImp_state_346 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_345 2) normalized_345

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 347"
  out.flush

private theorem normalized_346 : combat_tickNormalized twoImp_state_346 2 = twoImp_state_347 := by combat_kernel_close

private theorem actual_346 : twoImp_state_346.tickCombatV1 2 = twoImp_state_347 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_346 2) normalized_346

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 348"
  out.flush

private theorem normalized_347 : combat_tickNormalized twoImp_state_347 2 = twoImp_state_348 := by combat_kernel_close

private theorem actual_347 : twoImp_state_347.tickCombatV1 2 = twoImp_state_348 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_347 2) normalized_347

/-- Complete checked transitions 337 through 348, with every prefix alive and error-free. -/
theorem twoImp_segment_040 : CombatSegment twoImp_state_336 twoImp_inputs_040 twoImp_state_348 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_336 twoImp_state_337 twoImp_state_348 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_336 safe_336
    (combat_segment_cons twoImp_state_337 twoImp_state_338 twoImp_state_348 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_337 safe_337
    (combat_segment_cons twoImp_state_338 twoImp_state_339 twoImp_state_348 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_338 safe_338
    (combat_segment_cons twoImp_state_339 twoImp_state_340 twoImp_state_348 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_339 safe_339
    (combat_segment_cons twoImp_state_340 twoImp_state_341 twoImp_state_348 2 [2, 2, 2, 2, 2, 2, 2] actual_340 safe_340
    (combat_segment_cons twoImp_state_341 twoImp_state_342 twoImp_state_348 2 [2, 2, 2, 2, 2, 2] actual_341 safe_341
    (combat_segment_cons twoImp_state_342 twoImp_state_343 twoImp_state_348 2 [2, 2, 2, 2, 2] actual_342 safe_342
    (combat_segment_cons twoImp_state_343 twoImp_state_344 twoImp_state_348 2 [2, 2, 2, 2] actual_343 safe_343
    (combat_segment_cons twoImp_state_344 twoImp_state_345 twoImp_state_348 2 [2, 2, 2] actual_344 safe_344
    (combat_segment_cons twoImp_state_345 twoImp_state_346 twoImp_state_348 2 [2, 2] actual_345 safe_345
    (combat_segment_cons twoImp_state_346 twoImp_state_347 twoImp_state_348 2 [2] actual_346 safe_346
    (combat_segment_cons twoImp_state_347 twoImp_state_348 twoImp_state_348 2 [] actual_347 safe_347
    (combat_segment_nil twoImp_state_348 safe_348)))))))))))))

#print axioms twoImp_segment_040
end LeanDoomProofs
