import LeanDoomProofs.CombatData.Block026
import LeanDoomProofs.CombatData.Block025
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

private theorem safe_216 : combatSafe twoImp_state_216 := by unfold combatSafe; decide +kernel

private theorem safe_217 : combatSafe twoImp_state_217 := by unfold combatSafe; decide +kernel

private theorem safe_218 : combatSafe twoImp_state_218 := by unfold combatSafe; decide +kernel

private theorem safe_219 : combatSafe twoImp_state_219 := by unfold combatSafe; decide +kernel

private theorem safe_220 : combatSafe twoImp_state_220 := by unfold combatSafe; decide +kernel

private theorem safe_221 : combatSafe twoImp_state_221 := by unfold combatSafe; decide +kernel

private theorem safe_222 : combatSafe twoImp_state_222 := by unfold combatSafe; decide +kernel

private theorem safe_223 : combatSafe twoImp_state_223 := by unfold combatSafe; decide +kernel

private theorem safe_224 : combatSafe twoImp_state_224 := by unfold combatSafe; decide +kernel

private theorem safe_225 : combatSafe twoImp_state_225 := by unfold combatSafe; decide +kernel

private theorem safe_226 : combatSafe twoImp_state_226 := by unfold combatSafe; decide +kernel

private theorem safe_227 : combatSafe twoImp_state_227 := by unfold combatSafe; decide +kernel

private theorem safe_228 : combatSafe twoImp_state_228 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 217"
  out.flush

private theorem normalized_216 : combat_tickNormalized twoImp_state_216 0 = twoImp_state_217 := by combat_kernel_close

private theorem actual_216 : twoImp_state_216.tickCombatV1 0 = twoImp_state_217 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_216 0) normalized_216

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 218"
  out.flush

private theorem normalized_217 : combat_tickNormalized twoImp_state_217 0 = twoImp_state_218 := by combat_kernel_close

private theorem actual_217 : twoImp_state_217.tickCombatV1 0 = twoImp_state_218 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_217 0) normalized_217

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 219"
  out.flush

private theorem normalized_218 : combat_tickNormalized twoImp_state_218 0 = twoImp_state_219 := by combat_kernel_close

private theorem actual_218 : twoImp_state_218.tickCombatV1 0 = twoImp_state_219 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_218 0) normalized_218

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 220"
  out.flush

private theorem normalized_219 : combat_tickNormalized twoImp_state_219 0 = twoImp_state_220 := by combat_kernel_close

private theorem actual_219 : twoImp_state_219.tickCombatV1 0 = twoImp_state_220 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_219 0) normalized_219

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 221"
  out.flush

private theorem normalized_220 : combat_tickNormalized twoImp_state_220 0 = twoImp_state_221 := by combat_kernel_close

private theorem actual_220 : twoImp_state_220.tickCombatV1 0 = twoImp_state_221 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_220 0) normalized_220

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 222"
  out.flush

private theorem normalized_221 : combat_tickNormalized twoImp_state_221 0 = twoImp_state_222 := by combat_kernel_close

private theorem actual_221 : twoImp_state_221.tickCombatV1 0 = twoImp_state_222 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_221 0) normalized_221

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 223"
  out.flush

private theorem normalized_222 : combat_tickNormalized twoImp_state_222 0 = twoImp_state_223 := by combat_kernel_close

private theorem actual_222 : twoImp_state_222.tickCombatV1 0 = twoImp_state_223 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_222 0) normalized_222

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 224"
  out.flush

private theorem normalized_223 : combat_tickNormalized twoImp_state_223 0 = twoImp_state_224 := by combat_kernel_close

private theorem actual_223 : twoImp_state_223.tickCombatV1 0 = twoImp_state_224 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_223 0) normalized_223

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 225"
  out.flush

private theorem normalized_224 : combat_tickNormalized twoImp_state_224 0 = twoImp_state_225 := by combat_kernel_close

private theorem actual_224 : twoImp_state_224.tickCombatV1 0 = twoImp_state_225 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_224 0) normalized_224

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 226"
  out.flush

private theorem normalized_225 : combat_tickNormalized twoImp_state_225 0 = twoImp_state_226 := by combat_kernel_close

private theorem actual_225 : twoImp_state_225.tickCombatV1 0 = twoImp_state_226 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_225 0) normalized_225

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 227"
  out.flush

private theorem normalized_226 : combat_tickNormalized twoImp_state_226 0 = twoImp_state_227 := by combat_kernel_close

private theorem actual_226 : twoImp_state_226.tickCombatV1 0 = twoImp_state_227 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_226 0) normalized_226

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 228"
  out.flush

private theorem normalized_227 : combat_tickNormalized twoImp_state_227 0 = twoImp_state_228 := by combat_kernel_close

private theorem actual_227 : twoImp_state_227.tickCombatV1 0 = twoImp_state_228 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_227 0) normalized_227

/-- Complete checked transitions 217 through 228, with every prefix alive and error-free. -/
theorem twoImp_segment_026 : CombatSegment twoImp_state_216 twoImp_inputs_026 twoImp_state_228 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_216 twoImp_state_217 twoImp_state_228 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_216 safe_216
    (combat_segment_cons twoImp_state_217 twoImp_state_218 twoImp_state_228 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_217 safe_217
    (combat_segment_cons twoImp_state_218 twoImp_state_219 twoImp_state_228 0 [0, 0, 0, 0, 0, 0, 0, 0, 0] actual_218 safe_218
    (combat_segment_cons twoImp_state_219 twoImp_state_220 twoImp_state_228 0 [0, 0, 0, 0, 0, 0, 0, 0] actual_219 safe_219
    (combat_segment_cons twoImp_state_220 twoImp_state_221 twoImp_state_228 0 [0, 0, 0, 0, 0, 0, 0] actual_220 safe_220
    (combat_segment_cons twoImp_state_221 twoImp_state_222 twoImp_state_228 0 [0, 0, 0, 0, 0, 0] actual_221 safe_221
    (combat_segment_cons twoImp_state_222 twoImp_state_223 twoImp_state_228 0 [0, 0, 0, 0, 0] actual_222 safe_222
    (combat_segment_cons twoImp_state_223 twoImp_state_224 twoImp_state_228 0 [0, 0, 0, 0] actual_223 safe_223
    (combat_segment_cons twoImp_state_224 twoImp_state_225 twoImp_state_228 0 [0, 0, 0] actual_224 safe_224
    (combat_segment_cons twoImp_state_225 twoImp_state_226 twoImp_state_228 0 [0, 0] actual_225 safe_225
    (combat_segment_cons twoImp_state_226 twoImp_state_227 twoImp_state_228 0 [0] actual_226 safe_226
    (combat_segment_cons twoImp_state_227 twoImp_state_228 twoImp_state_228 0 [] actual_227 safe_227
    (combat_segment_nil twoImp_state_228 safe_228)))))))))))))

#print axioms twoImp_segment_026
end LeanDoomProofs
