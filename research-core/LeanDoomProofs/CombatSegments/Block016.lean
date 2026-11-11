import LeanDoomProofs.CombatData.Block016
import LeanDoomProofs.CombatData.Block015
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

private theorem safe_120 : combatSafe twoImp_state_120 := by unfold combatSafe; decide +kernel

private theorem safe_121 : combatSafe twoImp_state_121 := by unfold combatSafe; decide +kernel

private theorem safe_122 : combatSafe twoImp_state_122 := by unfold combatSafe; decide +kernel

private theorem safe_123 : combatSafe twoImp_state_123 := by unfold combatSafe; decide +kernel

private theorem safe_124 : combatSafe twoImp_state_124 := by unfold combatSafe; decide +kernel

private theorem safe_125 : combatSafe twoImp_state_125 := by unfold combatSafe; decide +kernel

private theorem safe_126 : combatSafe twoImp_state_126 := by unfold combatSafe; decide +kernel

private theorem safe_127 : combatSafe twoImp_state_127 := by unfold combatSafe; decide +kernel

private theorem safe_128 : combatSafe twoImp_state_128 := by unfold combatSafe; decide +kernel

private theorem safe_129 : combatSafe twoImp_state_129 := by unfold combatSafe; decide +kernel

private theorem safe_130 : combatSafe twoImp_state_130 := by unfold combatSafe; decide +kernel

private theorem safe_131 : combatSafe twoImp_state_131 := by unfold combatSafe; decide +kernel

private theorem safe_132 : combatSafe twoImp_state_132 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 121"
  out.flush

private theorem normalized_120 : combat_tickNormalized twoImp_state_120 2 = twoImp_state_121 := by combat_kernel_close

private theorem actual_120 : twoImp_state_120.tickCombatV1 2 = twoImp_state_121 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_120 2) normalized_120

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 122"
  out.flush

private theorem normalized_121 : combat_tickNormalized twoImp_state_121 2 = twoImp_state_122 := by combat_kernel_close

private theorem actual_121 : twoImp_state_121.tickCombatV1 2 = twoImp_state_122 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_121 2) normalized_121

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 123"
  out.flush

private theorem normalized_122 : combat_tickNormalized twoImp_state_122 2 = twoImp_state_123 := by combat_kernel_close

private theorem actual_122 : twoImp_state_122.tickCombatV1 2 = twoImp_state_123 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_122 2) normalized_122

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 124"
  out.flush

private theorem normalized_123 : combat_tickNormalized twoImp_state_123 2 = twoImp_state_124 := by combat_kernel_close

private theorem actual_123 : twoImp_state_123.tickCombatV1 2 = twoImp_state_124 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_123 2) normalized_123

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 125"
  out.flush

private theorem normalized_124 : combat_tickNormalized twoImp_state_124 2 = twoImp_state_125 := by combat_kernel_close

private theorem actual_124 : twoImp_state_124.tickCombatV1 2 = twoImp_state_125 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_124 2) normalized_124

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 126"
  out.flush

private theorem normalized_125 : combat_tickNormalized twoImp_state_125 2 = twoImp_state_126 := by combat_kernel_close

private theorem actual_125 : twoImp_state_125.tickCombatV1 2 = twoImp_state_126 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_125 2) normalized_125

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 127"
  out.flush

private theorem normalized_126 : combat_tickNormalized twoImp_state_126 2 = twoImp_state_127 := by combat_kernel_close

private theorem actual_126 : twoImp_state_126.tickCombatV1 2 = twoImp_state_127 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_126 2) normalized_126

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 128"
  out.flush

private theorem normalized_127 : combat_tickNormalized twoImp_state_127 2 = twoImp_state_128 := by combat_kernel_close

private theorem actual_127 : twoImp_state_127.tickCombatV1 2 = twoImp_state_128 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_127 2) normalized_127

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 129"
  out.flush

private theorem normalized_128 : combat_tickNormalized twoImp_state_128 2 = twoImp_state_129 := by combat_kernel_close

private theorem actual_128 : twoImp_state_128.tickCombatV1 2 = twoImp_state_129 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_128 2) normalized_128

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 130"
  out.flush

private theorem normalized_129 : combat_tickNormalized twoImp_state_129 2 = twoImp_state_130 := by combat_kernel_close

private theorem actual_129 : twoImp_state_129.tickCombatV1 2 = twoImp_state_130 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_129 2) normalized_129

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 131"
  out.flush

private theorem normalized_130 : combat_tickNormalized twoImp_state_130 2 = twoImp_state_131 := by combat_kernel_close

private theorem actual_130 : twoImp_state_130.tickCombatV1 2 = twoImp_state_131 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_130 2) normalized_130

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 132"
  out.flush

private theorem normalized_131 : combat_tickNormalized twoImp_state_131 2 = twoImp_state_132 := by combat_kernel_close

private theorem actual_131 : twoImp_state_131.tickCombatV1 2 = twoImp_state_132 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_131 2) normalized_131

/-- Complete checked transitions 121 through 132, with every prefix alive and error-free. -/
theorem twoImp_segment_016 : CombatSegment twoImp_state_120 twoImp_inputs_016 twoImp_state_132 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_120 twoImp_state_121 twoImp_state_132 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_120 safe_120
    (combat_segment_cons twoImp_state_121 twoImp_state_122 twoImp_state_132 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_121 safe_121
    (combat_segment_cons twoImp_state_122 twoImp_state_123 twoImp_state_132 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_122 safe_122
    (combat_segment_cons twoImp_state_123 twoImp_state_124 twoImp_state_132 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_123 safe_123
    (combat_segment_cons twoImp_state_124 twoImp_state_125 twoImp_state_132 2 [2, 2, 2, 2, 2, 2, 2] actual_124 safe_124
    (combat_segment_cons twoImp_state_125 twoImp_state_126 twoImp_state_132 2 [2, 2, 2, 2, 2, 2] actual_125 safe_125
    (combat_segment_cons twoImp_state_126 twoImp_state_127 twoImp_state_132 2 [2, 2, 2, 2, 2] actual_126 safe_126
    (combat_segment_cons twoImp_state_127 twoImp_state_128 twoImp_state_132 2 [2, 2, 2, 2] actual_127 safe_127
    (combat_segment_cons twoImp_state_128 twoImp_state_129 twoImp_state_132 2 [2, 2, 2] actual_128 safe_128
    (combat_segment_cons twoImp_state_129 twoImp_state_130 twoImp_state_132 2 [2, 2] actual_129 safe_129
    (combat_segment_cons twoImp_state_130 twoImp_state_131 twoImp_state_132 2 [2] actual_130 safe_130
    (combat_segment_cons twoImp_state_131 twoImp_state_132 twoImp_state_132 2 [] actual_131 safe_131
    (combat_segment_nil twoImp_state_132 safe_132)))))))))))))

#print axioms twoImp_segment_016
end LeanDoomProofs
