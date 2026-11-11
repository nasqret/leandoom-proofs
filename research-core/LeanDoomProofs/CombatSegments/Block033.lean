import LeanDoomProofs.CombatData.Block033
import LeanDoomProofs.CombatData.Block032
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

private theorem safe_288 : combatSafe twoImp_state_288 := by unfold combatSafe; decide +kernel

private theorem safe_289 : combatSafe twoImp_state_289 := by unfold combatSafe; decide +kernel

private theorem safe_290 : combatSafe twoImp_state_290 := by unfold combatSafe; decide +kernel

private theorem safe_291 : combatSafe twoImp_state_291 := by unfold combatSafe; decide +kernel

private theorem safe_292 : combatSafe twoImp_state_292 := by unfold combatSafe; decide +kernel

private theorem safe_293 : combatSafe twoImp_state_293 := by unfold combatSafe; decide +kernel

private theorem safe_294 : combatSafe twoImp_state_294 := by unfold combatSafe; decide +kernel

private theorem safe_295 : combatSafe twoImp_state_295 := by unfold combatSafe; decide +kernel

private theorem safe_296 : combatSafe twoImp_state_296 := by unfold combatSafe; decide +kernel

private theorem safe_297 : combatSafe twoImp_state_297 := by unfold combatSafe; decide +kernel

private theorem safe_298 : combatSafe twoImp_state_298 := by unfold combatSafe; decide +kernel

private theorem safe_299 : combatSafe twoImp_state_299 := by unfold combatSafe; decide +kernel

private theorem safe_300 : combatSafe twoImp_state_300 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 289"
  out.flush

private theorem normalized_288 : combat_tickNormalized twoImp_state_288 8192 = twoImp_state_289 := by combat_kernel_close

private theorem actual_288 : twoImp_state_288.tickCombatV1 8192 = twoImp_state_289 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_288 8192) normalized_288

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 290"
  out.flush

private theorem normalized_289 : combat_tickNormalized twoImp_state_289 8192 = twoImp_state_290 := by combat_kernel_close

private theorem actual_289 : twoImp_state_289.tickCombatV1 8192 = twoImp_state_290 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_289 8192) normalized_289

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 291"
  out.flush

private theorem normalized_290 : combat_tickNormalized twoImp_state_290 8192 = twoImp_state_291 := by combat_kernel_close

private theorem actual_290 : twoImp_state_290.tickCombatV1 8192 = twoImp_state_291 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_290 8192) normalized_290

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 292"
  out.flush

private theorem normalized_291 : combat_tickNormalized twoImp_state_291 8192 = twoImp_state_292 := by combat_kernel_close

private theorem actual_291 : twoImp_state_291.tickCombatV1 8192 = twoImp_state_292 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_291 8192) normalized_291

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 293"
  out.flush

private theorem normalized_292 : combat_tickNormalized twoImp_state_292 8192 = twoImp_state_293 := by combat_kernel_close

private theorem actual_292 : twoImp_state_292.tickCombatV1 8192 = twoImp_state_293 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_292 8192) normalized_292

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 294"
  out.flush

private theorem normalized_293 : combat_tickNormalized twoImp_state_293 8192 = twoImp_state_294 := by combat_kernel_close

private theorem actual_293 : twoImp_state_293.tickCombatV1 8192 = twoImp_state_294 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_293 8192) normalized_293

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 295"
  out.flush

private theorem normalized_294 : combat_tickNormalized twoImp_state_294 8192 = twoImp_state_295 := by combat_kernel_close

private theorem actual_294 : twoImp_state_294.tickCombatV1 8192 = twoImp_state_295 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_294 8192) normalized_294

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 296"
  out.flush

private theorem normalized_295 : combat_tickNormalized twoImp_state_295 8192 = twoImp_state_296 := by combat_kernel_close

private theorem actual_295 : twoImp_state_295.tickCombatV1 8192 = twoImp_state_296 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_295 8192) normalized_295

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 297"
  out.flush

private theorem normalized_296 : combat_tickNormalized twoImp_state_296 8192 = twoImp_state_297 := by combat_kernel_close

private theorem actual_296 : twoImp_state_296.tickCombatV1 8192 = twoImp_state_297 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_296 8192) normalized_296

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 298"
  out.flush

private theorem normalized_297 : combat_tickNormalized twoImp_state_297 8192 = twoImp_state_298 := by combat_kernel_close

private theorem actual_297 : twoImp_state_297.tickCombatV1 8192 = twoImp_state_298 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_297 8192) normalized_297

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 299"
  out.flush

private theorem normalized_298 : combat_tickNormalized twoImp_state_298 8192 = twoImp_state_299 := by combat_kernel_close

private theorem actual_298 : twoImp_state_298.tickCombatV1 8192 = twoImp_state_299 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_298 8192) normalized_298

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 300"
  out.flush

private theorem normalized_299 : combat_tickNormalized twoImp_state_299 8192 = twoImp_state_300 := by combat_kernel_close

private theorem actual_299 : twoImp_state_299.tickCombatV1 8192 = twoImp_state_300 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_299 8192) normalized_299

/-- Complete checked transitions 289 through 300, with every prefix alive and error-free. -/
theorem twoImp_segment_033 : CombatSegment twoImp_state_288 twoImp_inputs_033 twoImp_state_300 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_288 twoImp_state_289 twoImp_state_300 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_288 safe_288
    (combat_segment_cons twoImp_state_289 twoImp_state_290 twoImp_state_300 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_289 safe_289
    (combat_segment_cons twoImp_state_290 twoImp_state_291 twoImp_state_300 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_290 safe_290
    (combat_segment_cons twoImp_state_291 twoImp_state_292 twoImp_state_300 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_291 safe_291
    (combat_segment_cons twoImp_state_292 twoImp_state_293 twoImp_state_300 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_292 safe_292
    (combat_segment_cons twoImp_state_293 twoImp_state_294 twoImp_state_300 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_293 safe_293
    (combat_segment_cons twoImp_state_294 twoImp_state_295 twoImp_state_300 8192 [8192, 8192, 8192, 8192, 8192] actual_294 safe_294
    (combat_segment_cons twoImp_state_295 twoImp_state_296 twoImp_state_300 8192 [8192, 8192, 8192, 8192] actual_295 safe_295
    (combat_segment_cons twoImp_state_296 twoImp_state_297 twoImp_state_300 8192 [8192, 8192, 8192] actual_296 safe_296
    (combat_segment_cons twoImp_state_297 twoImp_state_298 twoImp_state_300 8192 [8192, 8192] actual_297 safe_297
    (combat_segment_cons twoImp_state_298 twoImp_state_299 twoImp_state_300 8192 [8192] actual_298 safe_298
    (combat_segment_cons twoImp_state_299 twoImp_state_300 twoImp_state_300 8192 [] actual_299 safe_299
    (combat_segment_nil twoImp_state_300 safe_300)))))))))))))

#print axioms twoImp_segment_033
end LeanDoomProofs
