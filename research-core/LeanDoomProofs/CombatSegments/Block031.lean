import LeanDoomProofs.CombatData.Block031
import LeanDoomProofs.CombatData.Block030
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

private theorem safe_264 : combatSafe twoImp_state_264 := by unfold combatSafe; decide +kernel

private theorem safe_265 : combatSafe twoImp_state_265 := by unfold combatSafe; decide +kernel

private theorem safe_266 : combatSafe twoImp_state_266 := by unfold combatSafe; decide +kernel

private theorem safe_267 : combatSafe twoImp_state_267 := by unfold combatSafe; decide +kernel

private theorem safe_268 : combatSafe twoImp_state_268 := by unfold combatSafe; decide +kernel

private theorem safe_269 : combatSafe twoImp_state_269 := by unfold combatSafe; decide +kernel

private theorem safe_270 : combatSafe twoImp_state_270 := by unfold combatSafe; decide +kernel

private theorem safe_271 : combatSafe twoImp_state_271 := by unfold combatSafe; decide +kernel

private theorem safe_272 : combatSafe twoImp_state_272 := by unfold combatSafe; decide +kernel

private theorem safe_273 : combatSafe twoImp_state_273 := by unfold combatSafe; decide +kernel

private theorem safe_274 : combatSafe twoImp_state_274 := by unfold combatSafe; decide +kernel

private theorem safe_275 : combatSafe twoImp_state_275 := by unfold combatSafe; decide +kernel

private theorem safe_276 : combatSafe twoImp_state_276 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 265"
  out.flush

private theorem normalized_264 : combat_tickNormalized twoImp_state_264 8192 = twoImp_state_265 := by combat_kernel_close

private theorem actual_264 : twoImp_state_264.tickCombatV1 8192 = twoImp_state_265 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_264 8192) normalized_264

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 266"
  out.flush

private theorem normalized_265 : combat_tickNormalized twoImp_state_265 8192 = twoImp_state_266 := by combat_kernel_close

private theorem actual_265 : twoImp_state_265.tickCombatV1 8192 = twoImp_state_266 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_265 8192) normalized_265

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 267"
  out.flush

private theorem normalized_266 : combat_tickNormalized twoImp_state_266 8192 = twoImp_state_267 := by combat_kernel_close

private theorem actual_266 : twoImp_state_266.tickCombatV1 8192 = twoImp_state_267 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_266 8192) normalized_266

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 268"
  out.flush

private theorem normalized_267 : combat_tickNormalized twoImp_state_267 8192 = twoImp_state_268 := by combat_kernel_close

private theorem actual_267 : twoImp_state_267.tickCombatV1 8192 = twoImp_state_268 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_267 8192) normalized_267

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 269"
  out.flush

private theorem normalized_268 : combat_tickNormalized twoImp_state_268 8192 = twoImp_state_269 := by combat_kernel_close

private theorem actual_268 : twoImp_state_268.tickCombatV1 8192 = twoImp_state_269 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_268 8192) normalized_268

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 270"
  out.flush

private theorem normalized_269 : combat_tickNormalized twoImp_state_269 8192 = twoImp_state_270 := by combat_kernel_close

private theorem actual_269 : twoImp_state_269.tickCombatV1 8192 = twoImp_state_270 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_269 8192) normalized_269

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 271"
  out.flush

private theorem normalized_270 : combat_tickNormalized twoImp_state_270 8192 = twoImp_state_271 := by combat_kernel_close

private theorem actual_270 : twoImp_state_270.tickCombatV1 8192 = twoImp_state_271 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_270 8192) normalized_270

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 272"
  out.flush

private theorem normalized_271 : combat_tickNormalized twoImp_state_271 8192 = twoImp_state_272 := by combat_kernel_close

private theorem actual_271 : twoImp_state_271.tickCombatV1 8192 = twoImp_state_272 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_271 8192) normalized_271

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 273"
  out.flush

private theorem normalized_272 : combat_tickNormalized twoImp_state_272 8192 = twoImp_state_273 := by combat_kernel_close

private theorem actual_272 : twoImp_state_272.tickCombatV1 8192 = twoImp_state_273 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_272 8192) normalized_272

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 274"
  out.flush

private theorem normalized_273 : combat_tickNormalized twoImp_state_273 8192 = twoImp_state_274 := by combat_kernel_close

private theorem actual_273 : twoImp_state_273.tickCombatV1 8192 = twoImp_state_274 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_273 8192) normalized_273

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 275"
  out.flush

private theorem normalized_274 : combat_tickNormalized twoImp_state_274 8192 = twoImp_state_275 := by combat_kernel_close

private theorem actual_274 : twoImp_state_274.tickCombatV1 8192 = twoImp_state_275 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_274 8192) normalized_274

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 276"
  out.flush

private theorem normalized_275 : combat_tickNormalized twoImp_state_275 8192 = twoImp_state_276 := by combat_kernel_close

private theorem actual_275 : twoImp_state_275.tickCombatV1 8192 = twoImp_state_276 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_275 8192) normalized_275

/-- Complete checked transitions 265 through 276, with every prefix alive and error-free. -/
theorem twoImp_segment_031 : CombatSegment twoImp_state_264 twoImp_inputs_031 twoImp_state_276 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_264 twoImp_state_265 twoImp_state_276 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_264 safe_264
    (combat_segment_cons twoImp_state_265 twoImp_state_266 twoImp_state_276 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_265 safe_265
    (combat_segment_cons twoImp_state_266 twoImp_state_267 twoImp_state_276 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_266 safe_266
    (combat_segment_cons twoImp_state_267 twoImp_state_268 twoImp_state_276 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_267 safe_267
    (combat_segment_cons twoImp_state_268 twoImp_state_269 twoImp_state_276 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_268 safe_268
    (combat_segment_cons twoImp_state_269 twoImp_state_270 twoImp_state_276 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_269 safe_269
    (combat_segment_cons twoImp_state_270 twoImp_state_271 twoImp_state_276 8192 [8192, 8192, 8192, 8192, 8192] actual_270 safe_270
    (combat_segment_cons twoImp_state_271 twoImp_state_272 twoImp_state_276 8192 [8192, 8192, 8192, 8192] actual_271 safe_271
    (combat_segment_cons twoImp_state_272 twoImp_state_273 twoImp_state_276 8192 [8192, 8192, 8192] actual_272 safe_272
    (combat_segment_cons twoImp_state_273 twoImp_state_274 twoImp_state_276 8192 [8192, 8192] actual_273 safe_273
    (combat_segment_cons twoImp_state_274 twoImp_state_275 twoImp_state_276 8192 [8192] actual_274 safe_274
    (combat_segment_cons twoImp_state_275 twoImp_state_276 twoImp_state_276 8192 [] actual_275 safe_275
    (combat_segment_nil twoImp_state_276 safe_276)))))))))))))

#print axioms twoImp_segment_031
end LeanDoomProofs
