import LeanDoomProofs.CombatData.Block038
import LeanDoomProofs.CombatData.Block037
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

private theorem safe_315 : combatSafe twoImp_state_315 := by unfold combatSafe; decide +kernel

private theorem safe_316 : combatSafe twoImp_state_316 := by unfold combatSafe; decide +kernel

private theorem safe_317 : combatSafe twoImp_state_317 := by unfold combatSafe; decide +kernel

private theorem safe_318 : combatSafe twoImp_state_318 := by unfold combatSafe; decide +kernel

private theorem safe_319 : combatSafe twoImp_state_319 := by unfold combatSafe; decide +kernel

private theorem safe_320 : combatSafe twoImp_state_320 := by unfold combatSafe; decide +kernel

private theorem safe_321 : combatSafe twoImp_state_321 := by unfold combatSafe; decide +kernel

private theorem safe_322 : combatSafe twoImp_state_322 := by unfold combatSafe; decide +kernel

private theorem safe_323 : combatSafe twoImp_state_323 := by unfold combatSafe; decide +kernel

private theorem safe_324 : combatSafe twoImp_state_324 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 316"
  out.flush

private theorem normalized_315 : combat_tickNormalized twoImp_state_315 2 = twoImp_state_316 := by combat_kernel_close

private theorem actual_315 : twoImp_state_315.tickCombatV1 2 = twoImp_state_316 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_315 2) normalized_315

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 317"
  out.flush

private theorem normalized_316 : combat_tickNormalized twoImp_state_316 2 = twoImp_state_317 := by combat_kernel_close

private theorem actual_316 : twoImp_state_316.tickCombatV1 2 = twoImp_state_317 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_316 2) normalized_316

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 318"
  out.flush

private theorem normalized_317 : combat_tickNormalized twoImp_state_317 2 = twoImp_state_318 := by combat_kernel_close

private theorem actual_317 : twoImp_state_317.tickCombatV1 2 = twoImp_state_318 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_317 2) normalized_317

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 319"
  out.flush

private theorem normalized_318 : combat_tickNormalized twoImp_state_318 2 = twoImp_state_319 := by combat_kernel_close

private theorem actual_318 : twoImp_state_318.tickCombatV1 2 = twoImp_state_319 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_318 2) normalized_318

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 320"
  out.flush

private theorem normalized_319 : combat_tickNormalized twoImp_state_319 2 = twoImp_state_320 := by combat_kernel_close

private theorem actual_319 : twoImp_state_319.tickCombatV1 2 = twoImp_state_320 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_319 2) normalized_319

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 321"
  out.flush

private theorem normalized_320 : combat_tickNormalized twoImp_state_320 2 = twoImp_state_321 := by combat_kernel_close

private theorem actual_320 : twoImp_state_320.tickCombatV1 2 = twoImp_state_321 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_320 2) normalized_320

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 322"
  out.flush

private theorem normalized_321 : combat_tickNormalized twoImp_state_321 2 = twoImp_state_322 := by combat_kernel_close

private theorem actual_321 : twoImp_state_321.tickCombatV1 2 = twoImp_state_322 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_321 2) normalized_321

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 323"
  out.flush

private theorem normalized_322 : combat_tickNormalized twoImp_state_322 2 = twoImp_state_323 := by combat_kernel_close

private theorem actual_322 : twoImp_state_322.tickCombatV1 2 = twoImp_state_323 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_322 2) normalized_322

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 324"
  out.flush

private theorem normalized_323 : combat_tickNormalized twoImp_state_323 2 = twoImp_state_324 := by combat_kernel_close

private theorem actual_323 : twoImp_state_323.tickCombatV1 2 = twoImp_state_324 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_323 2) normalized_323

/-- Complete checked transitions 316 through 324, with every prefix alive and error-free. -/
theorem twoImp_segment_038 : CombatSegment twoImp_state_315 twoImp_inputs_038 twoImp_state_324 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_315 twoImp_state_316 twoImp_state_324 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_315 safe_315
    (combat_segment_cons twoImp_state_316 twoImp_state_317 twoImp_state_324 2 [2, 2, 2, 2, 2, 2, 2] actual_316 safe_316
    (combat_segment_cons twoImp_state_317 twoImp_state_318 twoImp_state_324 2 [2, 2, 2, 2, 2, 2] actual_317 safe_317
    (combat_segment_cons twoImp_state_318 twoImp_state_319 twoImp_state_324 2 [2, 2, 2, 2, 2] actual_318 safe_318
    (combat_segment_cons twoImp_state_319 twoImp_state_320 twoImp_state_324 2 [2, 2, 2, 2] actual_319 safe_319
    (combat_segment_cons twoImp_state_320 twoImp_state_321 twoImp_state_324 2 [2, 2, 2] actual_320 safe_320
    (combat_segment_cons twoImp_state_321 twoImp_state_322 twoImp_state_324 2 [2, 2] actual_321 safe_321
    (combat_segment_cons twoImp_state_322 twoImp_state_323 twoImp_state_324 2 [2] actual_322 safe_322
    (combat_segment_cons twoImp_state_323 twoImp_state_324 twoImp_state_324 2 [] actual_323 safe_323
    (combat_segment_nil twoImp_state_324 safe_324))))))))))

#print axioms twoImp_segment_038
end LeanDoomProofs
