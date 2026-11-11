import LeanDoomProofs.CombatData.Block019
import LeanDoomProofs.CombatData.Block018
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

private theorem safe_156 : combatSafe twoImp_state_156 := by unfold combatSafe; decide +kernel

private theorem safe_157 : combatSafe twoImp_state_157 := by unfold combatSafe; decide +kernel

private theorem safe_158 : combatSafe twoImp_state_158 := by unfold combatSafe; decide +kernel

private theorem safe_159 : combatSafe twoImp_state_159 := by unfold combatSafe; decide +kernel

private theorem safe_160 : combatSafe twoImp_state_160 := by unfold combatSafe; decide +kernel

private theorem safe_161 : combatSafe twoImp_state_161 := by unfold combatSafe; decide +kernel

private theorem safe_162 : combatSafe twoImp_state_162 := by unfold combatSafe; decide +kernel

private theorem safe_163 : combatSafe twoImp_state_163 := by unfold combatSafe; decide +kernel

private theorem safe_164 : combatSafe twoImp_state_164 := by unfold combatSafe; decide +kernel

private theorem safe_165 : combatSafe twoImp_state_165 := by unfold combatSafe; decide +kernel

private theorem safe_166 : combatSafe twoImp_state_166 := by unfold combatSafe; decide +kernel

private theorem safe_167 : combatSafe twoImp_state_167 := by unfold combatSafe; decide +kernel

private theorem safe_168 : combatSafe twoImp_state_168 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 157"
  out.flush

private theorem normalized_156 : combat_tickNormalized twoImp_state_156 2 = twoImp_state_157 := by combat_kernel_close

private theorem actual_156 : twoImp_state_156.tickCombatV1 2 = twoImp_state_157 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_156 2) normalized_156

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 158"
  out.flush

private theorem normalized_157 : combat_tickNormalized twoImp_state_157 2 = twoImp_state_158 := by combat_kernel_close

private theorem actual_157 : twoImp_state_157.tickCombatV1 2 = twoImp_state_158 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_157 2) normalized_157

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 159"
  out.flush

private theorem normalized_158 : combat_tickNormalized twoImp_state_158 2 = twoImp_state_159 := by combat_kernel_close

private theorem actual_158 : twoImp_state_158.tickCombatV1 2 = twoImp_state_159 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_158 2) normalized_158

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 160"
  out.flush

private theorem normalized_159 : combat_tickNormalized twoImp_state_159 2 = twoImp_state_160 := by combat_kernel_close

private theorem actual_159 : twoImp_state_159.tickCombatV1 2 = twoImp_state_160 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_159 2) normalized_159

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 161"
  out.flush

private theorem normalized_160 : combat_tickNormalized twoImp_state_160 2 = twoImp_state_161 := by combat_kernel_close

private theorem actual_160 : twoImp_state_160.tickCombatV1 2 = twoImp_state_161 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_160 2) normalized_160

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 162"
  out.flush

private theorem normalized_161 : combat_tickNormalized twoImp_state_161 2 = twoImp_state_162 := by combat_kernel_close

private theorem actual_161 : twoImp_state_161.tickCombatV1 2 = twoImp_state_162 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_161 2) normalized_161

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 163"
  out.flush

private theorem normalized_162 : combat_tickNormalized twoImp_state_162 2 = twoImp_state_163 := by combat_kernel_close

private theorem actual_162 : twoImp_state_162.tickCombatV1 2 = twoImp_state_163 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_162 2) normalized_162

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 164"
  out.flush

private theorem normalized_163 : combat_tickNormalized twoImp_state_163 2 = twoImp_state_164 := by combat_kernel_close

private theorem actual_163 : twoImp_state_163.tickCombatV1 2 = twoImp_state_164 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_163 2) normalized_163

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 165"
  out.flush

private theorem normalized_164 : combat_tickNormalized twoImp_state_164 2 = twoImp_state_165 := by combat_kernel_close

private theorem actual_164 : twoImp_state_164.tickCombatV1 2 = twoImp_state_165 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_164 2) normalized_164

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 166"
  out.flush

private theorem normalized_165 : combat_tickNormalized twoImp_state_165 2 = twoImp_state_166 := by combat_kernel_close

private theorem actual_165 : twoImp_state_165.tickCombatV1 2 = twoImp_state_166 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_165 2) normalized_165

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 167"
  out.flush

private theorem normalized_166 : combat_tickNormalized twoImp_state_166 2 = twoImp_state_167 := by combat_kernel_close

private theorem actual_166 : twoImp_state_166.tickCombatV1 2 = twoImp_state_167 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_166 2) normalized_166

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 168"
  out.flush

private theorem normalized_167 : combat_tickNormalized twoImp_state_167 2 = twoImp_state_168 := by combat_kernel_close

private theorem actual_167 : twoImp_state_167.tickCombatV1 2 = twoImp_state_168 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_167 2) normalized_167

/-- Complete checked transitions 157 through 168, with every prefix alive and error-free. -/
theorem twoImp_segment_019 : CombatSegment twoImp_state_156 twoImp_inputs_019 twoImp_state_168 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_156 twoImp_state_157 twoImp_state_168 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_156 safe_156
    (combat_segment_cons twoImp_state_157 twoImp_state_158 twoImp_state_168 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_157 safe_157
    (combat_segment_cons twoImp_state_158 twoImp_state_159 twoImp_state_168 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_158 safe_158
    (combat_segment_cons twoImp_state_159 twoImp_state_160 twoImp_state_168 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_159 safe_159
    (combat_segment_cons twoImp_state_160 twoImp_state_161 twoImp_state_168 2 [2, 2, 2, 2, 2, 2, 2] actual_160 safe_160
    (combat_segment_cons twoImp_state_161 twoImp_state_162 twoImp_state_168 2 [2, 2, 2, 2, 2, 2] actual_161 safe_161
    (combat_segment_cons twoImp_state_162 twoImp_state_163 twoImp_state_168 2 [2, 2, 2, 2, 2] actual_162 safe_162
    (combat_segment_cons twoImp_state_163 twoImp_state_164 twoImp_state_168 2 [2, 2, 2, 2] actual_163 safe_163
    (combat_segment_cons twoImp_state_164 twoImp_state_165 twoImp_state_168 2 [2, 2, 2] actual_164 safe_164
    (combat_segment_cons twoImp_state_165 twoImp_state_166 twoImp_state_168 2 [2, 2] actual_165 safe_165
    (combat_segment_cons twoImp_state_166 twoImp_state_167 twoImp_state_168 2 [2] actual_166 safe_166
    (combat_segment_cons twoImp_state_167 twoImp_state_168 twoImp_state_168 2 [] actual_167 safe_167
    (combat_segment_nil twoImp_state_168 safe_168)))))))))))))

#print axioms twoImp_segment_019
end LeanDoomProofs
