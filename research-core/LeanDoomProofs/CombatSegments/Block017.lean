import LeanDoomProofs.CombatData.Block017
import LeanDoomProofs.CombatData.Block016
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

private theorem safe_132 : combatSafe twoImp_state_132 := by unfold combatSafe; decide +kernel

private theorem safe_133 : combatSafe twoImp_state_133 := by unfold combatSafe; decide +kernel

private theorem safe_134 : combatSafe twoImp_state_134 := by unfold combatSafe; decide +kernel

private theorem safe_135 : combatSafe twoImp_state_135 := by unfold combatSafe; decide +kernel

private theorem safe_136 : combatSafe twoImp_state_136 := by unfold combatSafe; decide +kernel

private theorem safe_137 : combatSafe twoImp_state_137 := by unfold combatSafe; decide +kernel

private theorem safe_138 : combatSafe twoImp_state_138 := by unfold combatSafe; decide +kernel

private theorem safe_139 : combatSafe twoImp_state_139 := by unfold combatSafe; decide +kernel

private theorem safe_140 : combatSafe twoImp_state_140 := by unfold combatSafe; decide +kernel

private theorem safe_141 : combatSafe twoImp_state_141 := by unfold combatSafe; decide +kernel

private theorem safe_142 : combatSafe twoImp_state_142 := by unfold combatSafe; decide +kernel

private theorem safe_143 : combatSafe twoImp_state_143 := by unfold combatSafe; decide +kernel

private theorem safe_144 : combatSafe twoImp_state_144 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 133"
  out.flush

private theorem normalized_132 : combat_tickNormalized twoImp_state_132 8 = twoImp_state_133 := by combat_kernel_close

private theorem actual_132 : twoImp_state_132.tickCombatV1 8 = twoImp_state_133 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_132 8) normalized_132

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 134"
  out.flush

private theorem normalized_133 : combat_tickNormalized twoImp_state_133 8 = twoImp_state_134 := by combat_kernel_close

private theorem actual_133 : twoImp_state_133.tickCombatV1 8 = twoImp_state_134 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_133 8) normalized_133

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 135"
  out.flush

private theorem normalized_134 : combat_tickNormalized twoImp_state_134 8 = twoImp_state_135 := by combat_kernel_close

private theorem actual_134 : twoImp_state_134.tickCombatV1 8 = twoImp_state_135 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_134 8) normalized_134

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 136"
  out.flush

private theorem normalized_135 : combat_tickNormalized twoImp_state_135 8 = twoImp_state_136 := by combat_kernel_close

private theorem actual_135 : twoImp_state_135.tickCombatV1 8 = twoImp_state_136 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_135 8) normalized_135

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 137"
  out.flush

private theorem normalized_136 : combat_tickNormalized twoImp_state_136 8 = twoImp_state_137 := by combat_kernel_close

private theorem actual_136 : twoImp_state_136.tickCombatV1 8 = twoImp_state_137 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_136 8) normalized_136

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 138"
  out.flush

private theorem normalized_137 : combat_tickNormalized twoImp_state_137 8 = twoImp_state_138 := by combat_kernel_close

private theorem actual_137 : twoImp_state_137.tickCombatV1 8 = twoImp_state_138 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_137 8) normalized_137

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 139"
  out.flush

private theorem normalized_138 : combat_tickNormalized twoImp_state_138 8 = twoImp_state_139 := by combat_kernel_close

private theorem actual_138 : twoImp_state_138.tickCombatV1 8 = twoImp_state_139 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_138 8) normalized_138

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 140"
  out.flush

private theorem normalized_139 : combat_tickNormalized twoImp_state_139 8 = twoImp_state_140 := by combat_kernel_close

private theorem actual_139 : twoImp_state_139.tickCombatV1 8 = twoImp_state_140 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_139 8) normalized_139

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 141"
  out.flush

private theorem normalized_140 : combat_tickNormalized twoImp_state_140 8 = twoImp_state_141 := by combat_kernel_close

private theorem actual_140 : twoImp_state_140.tickCombatV1 8 = twoImp_state_141 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_140 8) normalized_140

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 142"
  out.flush

private theorem normalized_141 : combat_tickNormalized twoImp_state_141 8 = twoImp_state_142 := by combat_kernel_close

private theorem actual_141 : twoImp_state_141.tickCombatV1 8 = twoImp_state_142 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_141 8) normalized_141

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 143"
  out.flush

private theorem normalized_142 : combat_tickNormalized twoImp_state_142 8 = twoImp_state_143 := by combat_kernel_close

private theorem actual_142 : twoImp_state_142.tickCombatV1 8 = twoImp_state_143 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_142 8) normalized_142

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 144"
  out.flush

private theorem normalized_143 : combat_tickNormalized twoImp_state_143 8 = twoImp_state_144 := by combat_kernel_close

private theorem actual_143 : twoImp_state_143.tickCombatV1 8 = twoImp_state_144 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_143 8) normalized_143

/-- Complete checked transitions 133 through 144, with every prefix alive and error-free. -/
theorem twoImp_segment_017 : CombatSegment twoImp_state_132 twoImp_inputs_017 twoImp_state_144 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_132 twoImp_state_133 twoImp_state_144 8 [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8] actual_132 safe_132
    (combat_segment_cons twoImp_state_133 twoImp_state_134 twoImp_state_144 8 [8, 8, 8, 8, 8, 8, 8, 8, 8, 8] actual_133 safe_133
    (combat_segment_cons twoImp_state_134 twoImp_state_135 twoImp_state_144 8 [8, 8, 8, 8, 8, 8, 8, 8, 8] actual_134 safe_134
    (combat_segment_cons twoImp_state_135 twoImp_state_136 twoImp_state_144 8 [8, 8, 8, 8, 8, 8, 8, 8] actual_135 safe_135
    (combat_segment_cons twoImp_state_136 twoImp_state_137 twoImp_state_144 8 [8, 8, 8, 8, 8, 8, 8] actual_136 safe_136
    (combat_segment_cons twoImp_state_137 twoImp_state_138 twoImp_state_144 8 [8, 8, 8, 8, 8, 8] actual_137 safe_137
    (combat_segment_cons twoImp_state_138 twoImp_state_139 twoImp_state_144 8 [8, 8, 8, 8, 8] actual_138 safe_138
    (combat_segment_cons twoImp_state_139 twoImp_state_140 twoImp_state_144 8 [8, 8, 8, 8] actual_139 safe_139
    (combat_segment_cons twoImp_state_140 twoImp_state_141 twoImp_state_144 8 [8, 8, 8] actual_140 safe_140
    (combat_segment_cons twoImp_state_141 twoImp_state_142 twoImp_state_144 8 [8, 8] actual_141 safe_141
    (combat_segment_cons twoImp_state_142 twoImp_state_143 twoImp_state_144 8 [8] actual_142 safe_142
    (combat_segment_cons twoImp_state_143 twoImp_state_144 twoImp_state_144 8 [] actual_143 safe_143
    (combat_segment_nil twoImp_state_144 safe_144)))))))))))))

#print axioms twoImp_segment_017
end LeanDoomProofs
