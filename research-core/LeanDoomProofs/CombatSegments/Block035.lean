import LeanDoomProofs.CombatData.Block035
import LeanDoomProofs.CombatData.Block034
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

private theorem safe_301 : combatSafe twoImp_state_301 := by unfold combatSafe; decide +kernel

private theorem safe_302 : combatSafe twoImp_state_302 := by unfold combatSafe; decide +kernel

private theorem safe_303 : combatSafe twoImp_state_303 := by unfold combatSafe; decide +kernel

private theorem safe_304 : combatSafe twoImp_state_304 := by unfold combatSafe; decide +kernel

private theorem safe_305 : combatSafe twoImp_state_305 := by unfold combatSafe; decide +kernel

private theorem safe_306 : combatSafe twoImp_state_306 := by unfold combatSafe; decide +kernel

private theorem safe_307 : combatSafe twoImp_state_307 := by unfold combatSafe; decide +kernel

private theorem safe_308 : combatSafe twoImp_state_308 := by unfold combatSafe; decide +kernel

private theorem safe_309 : combatSafe twoImp_state_309 := by unfold combatSafe; decide +kernel

private theorem safe_310 : combatSafe twoImp_state_310 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 302"
  out.flush

private theorem normalized_301 : combat_tickNormalized twoImp_state_301 8192 = twoImp_state_302 := by combat_kernel_close

private theorem actual_301 : twoImp_state_301.tickCombatV1 8192 = twoImp_state_302 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_301 8192) normalized_301

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 303"
  out.flush

private theorem normalized_302 : combat_tickNormalized twoImp_state_302 8192 = twoImp_state_303 := by combat_kernel_close

private theorem actual_302 : twoImp_state_302.tickCombatV1 8192 = twoImp_state_303 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_302 8192) normalized_302

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 304"
  out.flush

private theorem normalized_303 : combat_tickNormalized twoImp_state_303 8192 = twoImp_state_304 := by combat_kernel_close

private theorem actual_303 : twoImp_state_303.tickCombatV1 8192 = twoImp_state_304 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_303 8192) normalized_303

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 305"
  out.flush

private theorem normalized_304 : combat_tickNormalized twoImp_state_304 8192 = twoImp_state_305 := by combat_kernel_close

private theorem actual_304 : twoImp_state_304.tickCombatV1 8192 = twoImp_state_305 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_304 8192) normalized_304

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 306"
  out.flush

private theorem normalized_305 : combat_tickNormalized twoImp_state_305 8192 = twoImp_state_306 := by combat_kernel_close

private theorem actual_305 : twoImp_state_305.tickCombatV1 8192 = twoImp_state_306 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_305 8192) normalized_305

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 307"
  out.flush

private theorem normalized_306 : combat_tickNormalized twoImp_state_306 8192 = twoImp_state_307 := by combat_kernel_close

private theorem actual_306 : twoImp_state_306.tickCombatV1 8192 = twoImp_state_307 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_306 8192) normalized_306

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 308"
  out.flush

private theorem normalized_307 : combat_tickNormalized twoImp_state_307 8192 = twoImp_state_308 := by combat_kernel_close

private theorem actual_307 : twoImp_state_307.tickCombatV1 8192 = twoImp_state_308 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_307 8192) normalized_307

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 309"
  out.flush

private theorem normalized_308 : combat_tickNormalized twoImp_state_308 8192 = twoImp_state_309 := by combat_kernel_close

private theorem actual_308 : twoImp_state_308.tickCombatV1 8192 = twoImp_state_309 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_308 8192) normalized_308

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 310"
  out.flush

private theorem normalized_309 : combat_tickNormalized twoImp_state_309 8192 = twoImp_state_310 := by combat_kernel_close

private theorem actual_309 : twoImp_state_309.tickCombatV1 8192 = twoImp_state_310 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_309 8192) normalized_309

/-- Complete checked transitions 302 through 310, with every prefix alive and error-free. -/
theorem twoImp_segment_035 : CombatSegment twoImp_state_301 twoImp_inputs_035 twoImp_state_310 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_301 twoImp_state_302 twoImp_state_310 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_301 safe_301
    (combat_segment_cons twoImp_state_302 twoImp_state_303 twoImp_state_310 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_302 safe_302
    (combat_segment_cons twoImp_state_303 twoImp_state_304 twoImp_state_310 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_303 safe_303
    (combat_segment_cons twoImp_state_304 twoImp_state_305 twoImp_state_310 8192 [8192, 8192, 8192, 8192, 8192] actual_304 safe_304
    (combat_segment_cons twoImp_state_305 twoImp_state_306 twoImp_state_310 8192 [8192, 8192, 8192, 8192] actual_305 safe_305
    (combat_segment_cons twoImp_state_306 twoImp_state_307 twoImp_state_310 8192 [8192, 8192, 8192] actual_306 safe_306
    (combat_segment_cons twoImp_state_307 twoImp_state_308 twoImp_state_310 8192 [8192, 8192] actual_307 safe_307
    (combat_segment_cons twoImp_state_308 twoImp_state_309 twoImp_state_310 8192 [8192] actual_308 safe_308
    (combat_segment_cons twoImp_state_309 twoImp_state_310 twoImp_state_310 8192 [] actual_309 safe_309
    (combat_segment_nil twoImp_state_310 safe_310))))))))))

#print axioms twoImp_segment_035
end LeanDoomProofs
