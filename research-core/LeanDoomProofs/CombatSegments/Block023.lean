import LeanDoomProofs.CombatData.Block023
import LeanDoomProofs.CombatData.Block022
import LeanDoomProofs.CombatKernel
import LeanDoomProofs.CombatSequential
import LeanDoomProofs.CombatTables
import LeanDoomProofs.CombatArithmetic
import LeanDoomProofs.CombatPath

namespace LeanDoomProofs
open Doom
set_option maxRecDepth 32768
set_option Elab.async false
set_option maxHeartbeats 10000000
set_option cbv.maxSteps 1000000
attribute [local cbv_opaque] Float.ofNat Float.ofScientific Float.ofBits Fixed.toFloat Tables.fineSine Tables.tanToAngle Tables.fineTangent
attribute [local cbv_eval] Nat.zero_mul Nat.mul_zero Nat.zero_add Nat.add_zero

private theorem safe_180 : combatSafe twoImp_state_180 := by unfold combatSafe; decide +kernel

private theorem safe_181 : combatSafe twoImp_state_181 := by unfold combatSafe; decide +kernel

private theorem safe_182 : combatSafe twoImp_state_182 := by unfold combatSafe; decide +kernel

private theorem safe_183 : combatSafe twoImp_state_183 := by unfold combatSafe; decide +kernel

private theorem safe_184 : combatSafe twoImp_state_184 := by unfold combatSafe; decide +kernel

private theorem safe_185 : combatSafe twoImp_state_185 := by unfold combatSafe; decide +kernel

private theorem safe_186 : combatSafe twoImp_state_186 := by unfold combatSafe; decide +kernel

private theorem safe_187 : combatSafe twoImp_state_187 := by unfold combatSafe; decide +kernel

private theorem safe_188 : combatSafe twoImp_state_188 := by unfold combatSafe; decide +kernel

private theorem safe_189 : combatSafe twoImp_state_189 := by unfold combatSafe; decide +kernel

private theorem safe_190 : combatSafe twoImp_state_190 := by unfold combatSafe; decide +kernel

private theorem safe_191 : combatSafe twoImp_state_191 := by unfold combatSafe; decide +kernel

private theorem safe_192 : combatSafe twoImp_state_192 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 181"
  out.flush

private theorem normalized_180 : combat_tickNormalized twoImp_state_180 0 = twoImp_state_181 := by combat_kernel_close

private theorem actual_180 : twoImp_state_180.tickCombatV1 0 = twoImp_state_181 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_180 0) normalized_180

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 182"
  out.flush

private theorem normalized_181 : combat_tickNormalized twoImp_state_181 0 = twoImp_state_182 := by combat_kernel_close

private theorem actual_181 : twoImp_state_181.tickCombatV1 0 = twoImp_state_182 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_181 0) normalized_181

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 183"
  out.flush

private theorem normalized_182 : combat_tickNormalized twoImp_state_182 0 = twoImp_state_183 := by combat_sequential_close

private theorem actual_182 : twoImp_state_182.tickCombatV1 0 = twoImp_state_183 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_182 0) normalized_182

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 184"
  out.flush

private theorem normalized_183 : combat_tickNormalized twoImp_state_183 0 = twoImp_state_184 := by combat_kernel_close

private theorem actual_183 : twoImp_state_183.tickCombatV1 0 = twoImp_state_184 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_183 0) normalized_183

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 185"
  out.flush

private theorem normalized_184 : combat_tickNormalized twoImp_state_184 0 = twoImp_state_185 := by combat_kernel_close

private theorem actual_184 : twoImp_state_184.tickCombatV1 0 = twoImp_state_185 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_184 0) normalized_184

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 186"
  out.flush

private theorem normalized_185 : combat_tickNormalized twoImp_state_185 0 = twoImp_state_186 := by combat_sequential_close

private theorem actual_185 : twoImp_state_185.tickCombatV1 0 = twoImp_state_186 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_185 0) normalized_185

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 187"
  out.flush

private theorem normalized_186 : combat_tickNormalized twoImp_state_186 0 = twoImp_state_187 := by combat_kernel_close

private theorem actual_186 : twoImp_state_186.tickCombatV1 0 = twoImp_state_187 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_186 0) normalized_186

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 188"
  out.flush

private theorem normalized_187 : combat_tickNormalized twoImp_state_187 0 = twoImp_state_188 := by combat_kernel_close

private theorem actual_187 : twoImp_state_187.tickCombatV1 0 = twoImp_state_188 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_187 0) normalized_187

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 189"
  out.flush

private theorem normalized_188 : combat_tickNormalized twoImp_state_188 0 = twoImp_state_189 := by combat_kernel_close

private theorem actual_188 : twoImp_state_188.tickCombatV1 0 = twoImp_state_189 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_188 0) normalized_188

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 190"
  out.flush

private theorem normalized_189 : combat_tickNormalized twoImp_state_189 0 = twoImp_state_190 := by combat_kernel_close

private theorem actual_189 : twoImp_state_189.tickCombatV1 0 = twoImp_state_190 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_189 0) normalized_189

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 191"
  out.flush

private theorem normalized_190 : combat_tickNormalized twoImp_state_190 0 = twoImp_state_191 := by combat_kernel_close

private theorem actual_190 : twoImp_state_190.tickCombatV1 0 = twoImp_state_191 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_190 0) normalized_190

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 192"
  out.flush

private theorem normalized_191 : combat_tickNormalized twoImp_state_191 0 = twoImp_state_192 := by combat_kernel_close

private theorem actual_191 : twoImp_state_191.tickCombatV1 0 = twoImp_state_192 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_191 0) normalized_191

/-- Complete checked transitions 181 through 192, with every prefix alive and error-free. -/
theorem twoImp_segment_023 : CombatSegment twoImp_state_180 twoImp_inputs_023 twoImp_state_192 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_180 twoImp_state_181 twoImp_state_192 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_180 safe_180
    (combat_segment_cons twoImp_state_181 twoImp_state_182 twoImp_state_192 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_181 safe_181
    (combat_segment_cons twoImp_state_182 twoImp_state_183 twoImp_state_192 0 [0, 0, 0, 0, 0, 0, 0, 0, 0] actual_182 safe_182
    (combat_segment_cons twoImp_state_183 twoImp_state_184 twoImp_state_192 0 [0, 0, 0, 0, 0, 0, 0, 0] actual_183 safe_183
    (combat_segment_cons twoImp_state_184 twoImp_state_185 twoImp_state_192 0 [0, 0, 0, 0, 0, 0, 0] actual_184 safe_184
    (combat_segment_cons twoImp_state_185 twoImp_state_186 twoImp_state_192 0 [0, 0, 0, 0, 0, 0] actual_185 safe_185
    (combat_segment_cons twoImp_state_186 twoImp_state_187 twoImp_state_192 0 [0, 0, 0, 0, 0] actual_186 safe_186
    (combat_segment_cons twoImp_state_187 twoImp_state_188 twoImp_state_192 0 [0, 0, 0, 0] actual_187 safe_187
    (combat_segment_cons twoImp_state_188 twoImp_state_189 twoImp_state_192 0 [0, 0, 0] actual_188 safe_188
    (combat_segment_cons twoImp_state_189 twoImp_state_190 twoImp_state_192 0 [0, 0] actual_189 safe_189
    (combat_segment_cons twoImp_state_190 twoImp_state_191 twoImp_state_192 0 [0] actual_190 safe_190
    (combat_segment_cons twoImp_state_191 twoImp_state_192 twoImp_state_192 0 [] actual_191 safe_191
    (combat_segment_nil twoImp_state_192 safe_192)))))))))))))

#print axioms twoImp_segment_023
end LeanDoomProofs
