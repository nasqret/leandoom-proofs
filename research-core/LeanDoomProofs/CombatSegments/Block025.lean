import LeanDoomProofs.CombatData.Block025
import LeanDoomProofs.CombatData.Block024
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

private theorem safe_204 : combatSafe twoImp_state_204 := by unfold combatSafe; decide +kernel

private theorem safe_205 : combatSafe twoImp_state_205 := by unfold combatSafe; decide +kernel

private theorem safe_206 : combatSafe twoImp_state_206 := by unfold combatSafe; decide +kernel

private theorem safe_207 : combatSafe twoImp_state_207 := by unfold combatSafe; decide +kernel

private theorem safe_208 : combatSafe twoImp_state_208 := by unfold combatSafe; decide +kernel

private theorem safe_209 : combatSafe twoImp_state_209 := by unfold combatSafe; decide +kernel

private theorem safe_210 : combatSafe twoImp_state_210 := by unfold combatSafe; decide +kernel

private theorem safe_211 : combatSafe twoImp_state_211 := by unfold combatSafe; decide +kernel

private theorem safe_212 : combatSafe twoImp_state_212 := by unfold combatSafe; decide +kernel

private theorem safe_213 : combatSafe twoImp_state_213 := by unfold combatSafe; decide +kernel

private theorem safe_214 : combatSafe twoImp_state_214 := by unfold combatSafe; decide +kernel

private theorem safe_215 : combatSafe twoImp_state_215 := by unfold combatSafe; decide +kernel

private theorem safe_216 : combatSafe twoImp_state_216 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 205"
  out.flush

private theorem normalized_204 : combat_tickNormalized twoImp_state_204 0 = twoImp_state_205 := by combat_kernel_close

private theorem actual_204 : twoImp_state_204.tickCombatV1 0 = twoImp_state_205 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_204 0) normalized_204

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 206"
  out.flush

private theorem normalized_205 : combat_tickNormalized twoImp_state_205 0 = twoImp_state_206 := by combat_kernel_close

private theorem actual_205 : twoImp_state_205.tickCombatV1 0 = twoImp_state_206 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_205 0) normalized_205

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 207"
  out.flush

private theorem normalized_206 : combat_tickNormalized twoImp_state_206 0 = twoImp_state_207 := by combat_kernel_close

private theorem actual_206 : twoImp_state_206.tickCombatV1 0 = twoImp_state_207 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_206 0) normalized_206

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 208"
  out.flush

private theorem normalized_207 : combat_tickNormalized twoImp_state_207 0 = twoImp_state_208 := by combat_kernel_close

private theorem actual_207 : twoImp_state_207.tickCombatV1 0 = twoImp_state_208 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_207 0) normalized_207

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 209"
  out.flush

private theorem normalized_208 : combat_tickNormalized twoImp_state_208 0 = twoImp_state_209 := by combat_kernel_close

private theorem actual_208 : twoImp_state_208.tickCombatV1 0 = twoImp_state_209 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_208 0) normalized_208

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 210"
  out.flush

private theorem normalized_209 : combat_tickNormalized twoImp_state_209 0 = twoImp_state_210 := by combat_kernel_close

private theorem actual_209 : twoImp_state_209.tickCombatV1 0 = twoImp_state_210 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_209 0) normalized_209

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 211"
  out.flush

private theorem normalized_210 : combat_tickNormalized twoImp_state_210 0 = twoImp_state_211 := by combat_kernel_close

private theorem actual_210 : twoImp_state_210.tickCombatV1 0 = twoImp_state_211 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_210 0) normalized_210

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 212"
  out.flush

private theorem normalized_211 : combat_tickNormalized twoImp_state_211 0 = twoImp_state_212 := by combat_kernel_close

private theorem actual_211 : twoImp_state_211.tickCombatV1 0 = twoImp_state_212 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_211 0) normalized_211

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 213"
  out.flush

private theorem normalized_212 : combat_tickNormalized twoImp_state_212 0 = twoImp_state_213 := by combat_kernel_close

private theorem actual_212 : twoImp_state_212.tickCombatV1 0 = twoImp_state_213 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_212 0) normalized_212

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 214"
  out.flush

private theorem normalized_213 : combat_tickNormalized twoImp_state_213 0 = twoImp_state_214 := by combat_kernel_close

private theorem actual_213 : twoImp_state_213.tickCombatV1 0 = twoImp_state_214 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_213 0) normalized_213

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 215"
  out.flush

private theorem normalized_214 : combat_tickNormalized twoImp_state_214 0 = twoImp_state_215 := by combat_kernel_close

private theorem actual_214 : twoImp_state_214.tickCombatV1 0 = twoImp_state_215 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_214 0) normalized_214

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 216"
  out.flush

private theorem normalized_215 : combat_tickNormalized twoImp_state_215 0 = twoImp_state_216 := by combat_kernel_close

private theorem actual_215 : twoImp_state_215.tickCombatV1 0 = twoImp_state_216 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_215 0) normalized_215

/-- Complete checked transitions 205 through 216, with every prefix alive and error-free. -/
theorem twoImp_segment_025 : CombatSegment twoImp_state_204 twoImp_inputs_025 twoImp_state_216 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_204 twoImp_state_205 twoImp_state_216 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_204 safe_204
    (combat_segment_cons twoImp_state_205 twoImp_state_206 twoImp_state_216 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_205 safe_205
    (combat_segment_cons twoImp_state_206 twoImp_state_207 twoImp_state_216 0 [0, 0, 0, 0, 0, 0, 0, 0, 0] actual_206 safe_206
    (combat_segment_cons twoImp_state_207 twoImp_state_208 twoImp_state_216 0 [0, 0, 0, 0, 0, 0, 0, 0] actual_207 safe_207
    (combat_segment_cons twoImp_state_208 twoImp_state_209 twoImp_state_216 0 [0, 0, 0, 0, 0, 0, 0] actual_208 safe_208
    (combat_segment_cons twoImp_state_209 twoImp_state_210 twoImp_state_216 0 [0, 0, 0, 0, 0, 0] actual_209 safe_209
    (combat_segment_cons twoImp_state_210 twoImp_state_211 twoImp_state_216 0 [0, 0, 0, 0, 0] actual_210 safe_210
    (combat_segment_cons twoImp_state_211 twoImp_state_212 twoImp_state_216 0 [0, 0, 0, 0] actual_211 safe_211
    (combat_segment_cons twoImp_state_212 twoImp_state_213 twoImp_state_216 0 [0, 0, 0] actual_212 safe_212
    (combat_segment_cons twoImp_state_213 twoImp_state_214 twoImp_state_216 0 [0, 0] actual_213 safe_213
    (combat_segment_cons twoImp_state_214 twoImp_state_215 twoImp_state_216 0 [0] actual_214 safe_214
    (combat_segment_cons twoImp_state_215 twoImp_state_216 twoImp_state_216 0 [] actual_215 safe_215
    (combat_segment_nil twoImp_state_216 safe_216)))))))))))))

#print axioms twoImp_segment_025
end LeanDoomProofs
