import LeanDoomProofs.CombatData.Block011
import LeanDoomProofs.CombatData.Block010
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

private theorem safe_96 : combatSafe twoImp_state_96 := by unfold combatSafe; decide +kernel

private theorem safe_97 : combatSafe twoImp_state_97 := by unfold combatSafe; decide +kernel

private theorem safe_98 : combatSafe twoImp_state_98 := by unfold combatSafe; decide +kernel

private theorem safe_99 : combatSafe twoImp_state_99 := by unfold combatSafe; decide +kernel

private theorem safe_100 : combatSafe twoImp_state_100 := by unfold combatSafe; decide +kernel

private theorem safe_101 : combatSafe twoImp_state_101 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 97"
  out.flush

private theorem normalized_96 : combat_tickNormalized twoImp_state_96 8192 = twoImp_state_97 := by combat_kernel_close

private theorem actual_96 : twoImp_state_96.tickCombatV1 8192 = twoImp_state_97 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_96 8192) normalized_96

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 98"
  out.flush

private theorem normalized_97 : combat_tickNormalized twoImp_state_97 8192 = twoImp_state_98 := by combat_kernel_close

private theorem actual_97 : twoImp_state_97.tickCombatV1 8192 = twoImp_state_98 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_97 8192) normalized_97

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 99"
  out.flush

private theorem normalized_98 : combat_tickNormalized twoImp_state_98 8192 = twoImp_state_99 := by combat_kernel_close

private theorem actual_98 : twoImp_state_98.tickCombatV1 8192 = twoImp_state_99 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_98 8192) normalized_98

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 100"
  out.flush

private theorem normalized_99 : combat_tickNormalized twoImp_state_99 8192 = twoImp_state_100 := by combat_kernel_close

private theorem actual_99 : twoImp_state_99.tickCombatV1 8192 = twoImp_state_100 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_99 8192) normalized_99

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 101"
  out.flush

private theorem normalized_100 : combat_tickNormalized twoImp_state_100 8192 = twoImp_state_101 := by combat_kernel_close

private theorem actual_100 : twoImp_state_100.tickCombatV1 8192 = twoImp_state_101 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_100 8192) normalized_100

/-- Complete checked transitions 97 through 101, with every prefix alive and error-free. -/
theorem twoImp_segment_011 : CombatSegment twoImp_state_96 twoImp_inputs_011 twoImp_state_101 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_96 twoImp_state_97 twoImp_state_101 8192 [8192, 8192, 8192, 8192] actual_96 safe_96
    (combat_segment_cons twoImp_state_97 twoImp_state_98 twoImp_state_101 8192 [8192, 8192, 8192] actual_97 safe_97
    (combat_segment_cons twoImp_state_98 twoImp_state_99 twoImp_state_101 8192 [8192, 8192] actual_98 safe_98
    (combat_segment_cons twoImp_state_99 twoImp_state_100 twoImp_state_101 8192 [8192] actual_99 safe_99
    (combat_segment_cons twoImp_state_100 twoImp_state_101 twoImp_state_101 8192 [] actual_100 safe_100
    (combat_segment_nil twoImp_state_101 safe_101))))))

#print axioms twoImp_segment_011
end LeanDoomProofs
