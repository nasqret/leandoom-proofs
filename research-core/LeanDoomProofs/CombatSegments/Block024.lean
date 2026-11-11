import LeanDoomProofs.CombatData.Block024
import LeanDoomProofs.CombatData.Block023
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

private theorem safe_192 : combatSafe twoImp_state_192 := by unfold combatSafe; decide +kernel

private theorem safe_193 : combatSafe twoImp_state_193 := by unfold combatSafe; decide +kernel

private theorem safe_194 : combatSafe twoImp_state_194 := by unfold combatSafe; decide +kernel

private theorem safe_195 : combatSafe twoImp_state_195 := by unfold combatSafe; decide +kernel

private theorem safe_196 : combatSafe twoImp_state_196 := by unfold combatSafe; decide +kernel

private theorem safe_197 : combatSafe twoImp_state_197 := by unfold combatSafe; decide +kernel

private theorem safe_198 : combatSafe twoImp_state_198 := by unfold combatSafe; decide +kernel

private theorem safe_199 : combatSafe twoImp_state_199 := by unfold combatSafe; decide +kernel

private theorem safe_200 : combatSafe twoImp_state_200 := by unfold combatSafe; decide +kernel

private theorem safe_201 : combatSafe twoImp_state_201 := by unfold combatSafe; decide +kernel

private theorem safe_202 : combatSafe twoImp_state_202 := by unfold combatSafe; decide +kernel

private theorem safe_203 : combatSafe twoImp_state_203 := by unfold combatSafe; decide +kernel

private theorem safe_204 : combatSafe twoImp_state_204 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 193"
  out.flush

private theorem normalized_192 : combat_tickNormalized twoImp_state_192 0 = twoImp_state_193 := by combat_kernel_close

private theorem actual_192 : twoImp_state_192.tickCombatV1 0 = twoImp_state_193 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_192 0) normalized_192

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 194"
  out.flush

private theorem normalized_193 : combat_tickNormalized twoImp_state_193 0 = twoImp_state_194 := by combat_kernel_close

private theorem actual_193 : twoImp_state_193.tickCombatV1 0 = twoImp_state_194 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_193 0) normalized_193

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 195"
  out.flush

private theorem normalized_194 : combat_tickNormalized twoImp_state_194 0 = twoImp_state_195 := by combat_kernel_close

private theorem actual_194 : twoImp_state_194.tickCombatV1 0 = twoImp_state_195 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_194 0) normalized_194

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 196"
  out.flush

private theorem normalized_195 : combat_tickNormalized twoImp_state_195 0 = twoImp_state_196 := by combat_kernel_close

private theorem actual_195 : twoImp_state_195.tickCombatV1 0 = twoImp_state_196 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_195 0) normalized_195

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 197"
  out.flush

private theorem normalized_196 : combat_tickNormalized twoImp_state_196 0 = twoImp_state_197 := by combat_kernel_close

private theorem actual_196 : twoImp_state_196.tickCombatV1 0 = twoImp_state_197 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_196 0) normalized_196

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 198"
  out.flush

private theorem normalized_197 : combat_tickNormalized twoImp_state_197 0 = twoImp_state_198 := by combat_kernel_close

private theorem actual_197 : twoImp_state_197.tickCombatV1 0 = twoImp_state_198 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_197 0) normalized_197

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 199"
  out.flush

private theorem normalized_198 : combat_tickNormalized twoImp_state_198 0 = twoImp_state_199 := by combat_kernel_close

private theorem actual_198 : twoImp_state_198.tickCombatV1 0 = twoImp_state_199 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_198 0) normalized_198

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 200"
  out.flush

private theorem normalized_199 : combat_tickNormalized twoImp_state_199 0 = twoImp_state_200 := by combat_kernel_close

private theorem actual_199 : twoImp_state_199.tickCombatV1 0 = twoImp_state_200 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_199 0) normalized_199

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 201"
  out.flush

private theorem normalized_200 : combat_tickNormalized twoImp_state_200 0 = twoImp_state_201 := by combat_kernel_close

private theorem actual_200 : twoImp_state_200.tickCombatV1 0 = twoImp_state_201 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_200 0) normalized_200

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 202"
  out.flush

private theorem normalized_201 : combat_tickNormalized twoImp_state_201 0 = twoImp_state_202 := by combat_kernel_close

private theorem actual_201 : twoImp_state_201.tickCombatV1 0 = twoImp_state_202 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_201 0) normalized_201

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 203"
  out.flush

private theorem normalized_202 : combat_tickNormalized twoImp_state_202 0 = twoImp_state_203 := by combat_kernel_close

private theorem actual_202 : twoImp_state_202.tickCombatV1 0 = twoImp_state_203 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_202 0) normalized_202

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 204"
  out.flush

private theorem normalized_203 : combat_tickNormalized twoImp_state_203 0 = twoImp_state_204 := by combat_kernel_close

private theorem actual_203 : twoImp_state_203.tickCombatV1 0 = twoImp_state_204 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_203 0) normalized_203

/-- Complete checked transitions 193 through 204, with every prefix alive and error-free. -/
theorem twoImp_segment_024 : CombatSegment twoImp_state_192 twoImp_inputs_024 twoImp_state_204 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_192 twoImp_state_193 twoImp_state_204 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_192 safe_192
    (combat_segment_cons twoImp_state_193 twoImp_state_194 twoImp_state_204 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_193 safe_193
    (combat_segment_cons twoImp_state_194 twoImp_state_195 twoImp_state_204 0 [0, 0, 0, 0, 0, 0, 0, 0, 0] actual_194 safe_194
    (combat_segment_cons twoImp_state_195 twoImp_state_196 twoImp_state_204 0 [0, 0, 0, 0, 0, 0, 0, 0] actual_195 safe_195
    (combat_segment_cons twoImp_state_196 twoImp_state_197 twoImp_state_204 0 [0, 0, 0, 0, 0, 0, 0] actual_196 safe_196
    (combat_segment_cons twoImp_state_197 twoImp_state_198 twoImp_state_204 0 [0, 0, 0, 0, 0, 0] actual_197 safe_197
    (combat_segment_cons twoImp_state_198 twoImp_state_199 twoImp_state_204 0 [0, 0, 0, 0, 0] actual_198 safe_198
    (combat_segment_cons twoImp_state_199 twoImp_state_200 twoImp_state_204 0 [0, 0, 0, 0] actual_199 safe_199
    (combat_segment_cons twoImp_state_200 twoImp_state_201 twoImp_state_204 0 [0, 0, 0] actual_200 safe_200
    (combat_segment_cons twoImp_state_201 twoImp_state_202 twoImp_state_204 0 [0, 0] actual_201 safe_201
    (combat_segment_cons twoImp_state_202 twoImp_state_203 twoImp_state_204 0 [0] actual_202 safe_202
    (combat_segment_cons twoImp_state_203 twoImp_state_204 twoImp_state_204 0 [] actual_203 safe_203
    (combat_segment_nil twoImp_state_204 safe_204)))))))))))))

#print axioms twoImp_segment_024
end LeanDoomProofs
