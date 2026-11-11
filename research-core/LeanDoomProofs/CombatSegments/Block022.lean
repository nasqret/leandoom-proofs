import LeanDoomProofs.CombatData.Block022
import LeanDoomProofs.CombatData.Block021
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

private theorem safe_170 : combatSafe twoImp_state_170 := by unfold combatSafe; decide +kernel

private theorem safe_171 : combatSafe twoImp_state_171 := by unfold combatSafe; decide +kernel

private theorem safe_172 : combatSafe twoImp_state_172 := by unfold combatSafe; decide +kernel

private theorem safe_173 : combatSafe twoImp_state_173 := by unfold combatSafe; decide +kernel

private theorem safe_174 : combatSafe twoImp_state_174 := by unfold combatSafe; decide +kernel

private theorem safe_175 : combatSafe twoImp_state_175 := by unfold combatSafe; decide +kernel

private theorem safe_176 : combatSafe twoImp_state_176 := by unfold combatSafe; decide +kernel

private theorem safe_177 : combatSafe twoImp_state_177 := by unfold combatSafe; decide +kernel

private theorem safe_178 : combatSafe twoImp_state_178 := by unfold combatSafe; decide +kernel

private theorem safe_179 : combatSafe twoImp_state_179 := by unfold combatSafe; decide +kernel

private theorem safe_180 : combatSafe twoImp_state_180 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 171"
  out.flush

private theorem normalized_170 : combat_tickNormalized twoImp_state_170 0 = twoImp_state_171 := by combat_kernel_close

private theorem actual_170 : twoImp_state_170.tickCombatV1 0 = twoImp_state_171 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_170 0) normalized_170

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 172"
  out.flush

private theorem normalized_171 : combat_tickNormalized twoImp_state_171 0 = twoImp_state_172 := by combat_kernel_close

private theorem actual_171 : twoImp_state_171.tickCombatV1 0 = twoImp_state_172 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_171 0) normalized_171

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 173"
  out.flush

private theorem normalized_172 : combat_tickNormalized twoImp_state_172 0 = twoImp_state_173 := by combat_sequential_close

private theorem actual_172 : twoImp_state_172.tickCombatV1 0 = twoImp_state_173 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_172 0) normalized_172

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 174"
  out.flush

private theorem normalized_173 : combat_tickNormalized twoImp_state_173 0 = twoImp_state_174 := by combat_kernel_close

private theorem actual_173 : twoImp_state_173.tickCombatV1 0 = twoImp_state_174 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_173 0) normalized_173

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 175"
  out.flush

private theorem normalized_174 : combat_tickNormalized twoImp_state_174 0 = twoImp_state_175 := by combat_kernel_close

private theorem actual_174 : twoImp_state_174.tickCombatV1 0 = twoImp_state_175 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_174 0) normalized_174

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 176"
  out.flush

private theorem normalized_175 : combat_tickNormalized twoImp_state_175 0 = twoImp_state_176 := by combat_kernel_close

private theorem actual_175 : twoImp_state_175.tickCombatV1 0 = twoImp_state_176 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_175 0) normalized_175

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 177"
  out.flush

private theorem normalized_176 : combat_tickNormalized twoImp_state_176 0 = twoImp_state_177 := by combat_kernel_close

private theorem actual_176 : twoImp_state_176.tickCombatV1 0 = twoImp_state_177 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_176 0) normalized_176

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 178"
  out.flush

private theorem normalized_177 : combat_tickNormalized twoImp_state_177 0 = twoImp_state_178 := by combat_kernel_close

private theorem actual_177 : twoImp_state_177.tickCombatV1 0 = twoImp_state_178 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_177 0) normalized_177

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 179"
  out.flush

private theorem normalized_178 : combat_tickNormalized twoImp_state_178 0 = twoImp_state_179 := by combat_kernel_close

private theorem actual_178 : twoImp_state_178.tickCombatV1 0 = twoImp_state_179 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_178 0) normalized_178

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 180"
  out.flush

private theorem normalized_179 : combat_tickNormalized twoImp_state_179 0 = twoImp_state_180 := by combat_kernel_close

private theorem actual_179 : twoImp_state_179.tickCombatV1 0 = twoImp_state_180 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_179 0) normalized_179

/-- Complete checked transitions 171 through 180, with every prefix alive and error-free. -/
theorem twoImp_segment_022 : CombatSegment twoImp_state_170 twoImp_inputs_022 twoImp_state_180 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_170 twoImp_state_171 twoImp_state_180 0 [0, 0, 0, 0, 0, 0, 0, 0, 0] actual_170 safe_170
    (combat_segment_cons twoImp_state_171 twoImp_state_172 twoImp_state_180 0 [0, 0, 0, 0, 0, 0, 0, 0] actual_171 safe_171
    (combat_segment_cons twoImp_state_172 twoImp_state_173 twoImp_state_180 0 [0, 0, 0, 0, 0, 0, 0] actual_172 safe_172
    (combat_segment_cons twoImp_state_173 twoImp_state_174 twoImp_state_180 0 [0, 0, 0, 0, 0, 0] actual_173 safe_173
    (combat_segment_cons twoImp_state_174 twoImp_state_175 twoImp_state_180 0 [0, 0, 0, 0, 0] actual_174 safe_174
    (combat_segment_cons twoImp_state_175 twoImp_state_176 twoImp_state_180 0 [0, 0, 0, 0] actual_175 safe_175
    (combat_segment_cons twoImp_state_176 twoImp_state_177 twoImp_state_180 0 [0, 0, 0] actual_176 safe_176
    (combat_segment_cons twoImp_state_177 twoImp_state_178 twoImp_state_180 0 [0, 0] actual_177 safe_177
    (combat_segment_cons twoImp_state_178 twoImp_state_179 twoImp_state_180 0 [0] actual_178 safe_178
    (combat_segment_cons twoImp_state_179 twoImp_state_180 twoImp_state_180 0 [] actual_179 safe_179
    (combat_segment_nil twoImp_state_180 safe_180)))))))))))

#print axioms twoImp_segment_022
end LeanDoomProofs
