import LeanDoomProofs.ArenaData.Block005
import LeanDoomProofs.ArenaData.Block004
import LeanDoomProofs.CombatKernel
import LeanDoomProofs.CombatProjectiles
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

private theorem safe_36 : combatSafe arena_state_36 := by unfold combatSafe; decide +kernel

private theorem safe_37 : combatSafe arena_state_37 := by unfold combatSafe; decide +kernel

private theorem safe_38 : combatSafe arena_state_38 := by unfold combatSafe; decide +kernel

private theorem safe_39 : combatSafe arena_state_39 := by unfold combatSafe; decide +kernel

private theorem safe_40 : combatSafe arena_state_40 := by unfold combatSafe; decide +kernel

private theorem safe_41 : combatSafe arena_state_41 := by unfold combatSafe; decide +kernel

private theorem safe_42 : combatSafe arena_state_42 := by unfold combatSafe; decide +kernel

private theorem safe_43 : combatSafe arena_state_43 := by unfold combatSafe; decide +kernel

private theorem safe_44 : combatSafe arena_state_44 := by unfold combatSafe; decide +kernel

private theorem safe_45 : combatSafe arena_state_45 := by unfold combatSafe; decide +kernel

private theorem safe_46 : combatSafe arena_state_46 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 37"
  out.flush

private theorem normalized_36 : combat_tickNormalized arena_state_36 8192 = arena_state_37 := by combat_kernel_close

private theorem actual_36 : arena_state_36.tickCombatV1 8192 = arena_state_37 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_36 8192) normalized_36

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 38"
  out.flush

private theorem normalized_37 : combat_tickNormalized arena_state_37 8192 = arena_state_38 := by combat_kernel_close

private theorem actual_37 : arena_state_37.tickCombatV1 8192 = arena_state_38 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_37 8192) normalized_37

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 39"
  out.flush

private theorem normalized_38 : combat_tickNormalized arena_state_38 8192 = arena_state_39 := by combat_kernel_close

private theorem actual_38 : arena_state_38.tickCombatV1 8192 = arena_state_39 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_38 8192) normalized_38

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 40"
  out.flush

private theorem normalized_39 : combat_tickNormalized arena_state_39 8192 = arena_state_40 := by combat_kernel_close

private theorem actual_39 : arena_state_39.tickCombatV1 8192 = arena_state_40 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_39 8192) normalized_39

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 41"
  out.flush

private theorem normalized_40 : combat_tickNormalized arena_state_40 8192 = arena_state_41 := by combat_kernel_close

private theorem actual_40 : arena_state_40.tickCombatV1 8192 = arena_state_41 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_40 8192) normalized_40

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 42"
  out.flush

private theorem normalized_41 : combat_tickNormalized arena_state_41 8192 = arena_state_42 := by combat_kernel_close

private theorem actual_41 : arena_state_41.tickCombatV1 8192 = arena_state_42 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_41 8192) normalized_41

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 43"
  out.flush

private theorem normalized_42 : combat_tickNormalized arena_state_42 8192 = arena_state_43 := by combat_kernel_close

private theorem actual_42 : arena_state_42.tickCombatV1 8192 = arena_state_43 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_42 8192) normalized_42

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 44"
  out.flush

private theorem normalized_43 : combat_tickNormalized arena_state_43 8192 = arena_state_44 := by combat_kernel_close

private theorem actual_43 : arena_state_43.tickCombatV1 8192 = arena_state_44 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_43 8192) normalized_43

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 45"
  out.flush

private theorem normalized_44 : combat_tickNormalized arena_state_44 8192 = arena_state_45 := by combat_kernel_close

private theorem actual_44 : arena_state_44.tickCombatV1 8192 = arena_state_45 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_44 8192) normalized_44

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 46"
  out.flush

private theorem normalized_45 : combat_tickNormalized arena_state_45 8192 = arena_state_46 := by combat_kernel_close

private theorem actual_45 : arena_state_45.tickCombatV1 8192 = arena_state_46 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_45 8192) normalized_45

/-- Complete checked transitions 37 through 46, with every prefix alive and error-free. -/
theorem arena_segment_005 : CombatSegment arena_state_36 arena_inputs_005 arena_state_46 := by
  doom_kernel_exact (combat_segment_cons arena_state_36 arena_state_37 arena_state_46 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_36 safe_36
    (combat_segment_cons arena_state_37 arena_state_38 arena_state_46 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_37 safe_37
    (combat_segment_cons arena_state_38 arena_state_39 arena_state_46 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_38 safe_38
    (combat_segment_cons arena_state_39 arena_state_40 arena_state_46 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_39 safe_39
    (combat_segment_cons arena_state_40 arena_state_41 arena_state_46 8192 [8192, 8192, 8192, 8192, 8192] actual_40 safe_40
    (combat_segment_cons arena_state_41 arena_state_42 arena_state_46 8192 [8192, 8192, 8192, 8192] actual_41 safe_41
    (combat_segment_cons arena_state_42 arena_state_43 arena_state_46 8192 [8192, 8192, 8192] actual_42 safe_42
    (combat_segment_cons arena_state_43 arena_state_44 arena_state_46 8192 [8192, 8192] actual_43 safe_43
    (combat_segment_cons arena_state_44 arena_state_45 arena_state_46 8192 [8192] actual_44 safe_44
    (combat_segment_cons arena_state_45 arena_state_46 arena_state_46 8192 [] actual_45 safe_45
    (combat_segment_nil arena_state_46 safe_46)))))))))))

#print axioms arena_segment_005
end LeanDoomProofs
