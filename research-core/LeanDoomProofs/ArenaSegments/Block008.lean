import LeanDoomProofs.ArenaData.Block008
import LeanDoomProofs.ArenaData.Block007
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

private theorem safe_60 : combatSafe arena_state_60 := by unfold combatSafe; decide +kernel

private theorem safe_61 : combatSafe arena_state_61 := by unfold combatSafe; decide +kernel

private theorem safe_62 : combatSafe arena_state_62 := by unfold combatSafe; decide +kernel

private theorem safe_63 : combatSafe arena_state_63 := by unfold combatSafe; decide +kernel

private theorem safe_64 : combatSafe arena_state_64 := by unfold combatSafe; decide +kernel

private theorem safe_65 : combatSafe arena_state_65 := by unfold combatSafe; decide +kernel

private theorem safe_66 : combatSafe arena_state_66 := by unfold combatSafe; decide +kernel

private theorem safe_67 : combatSafe arena_state_67 := by unfold combatSafe; decide +kernel

private theorem safe_68 : combatSafe arena_state_68 := by unfold combatSafe; decide +kernel

private theorem safe_69 : combatSafe arena_state_69 := by unfold combatSafe; decide +kernel

private theorem safe_70 : combatSafe arena_state_70 := by unfold combatSafe; decide +kernel

private theorem safe_71 : combatSafe arena_state_71 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 61"
  out.flush

private theorem normalized_60 : combat_tickNormalized arena_state_60 8192 = arena_state_61 := by combat_kernel_close

private theorem actual_60 : arena_state_60.tickCombatV1 8192 = arena_state_61 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_60 8192) normalized_60

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 62"
  out.flush

private theorem normalized_61 : combat_tickNormalized arena_state_61 8192 = arena_state_62 := by combat_kernel_close

private theorem actual_61 : arena_state_61.tickCombatV1 8192 = arena_state_62 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_61 8192) normalized_61

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 63"
  out.flush

private theorem normalized_62 : combat_tickNormalized arena_state_62 8192 = arena_state_63 := by combat_kernel_close

private theorem actual_62 : arena_state_62.tickCombatV1 8192 = arena_state_63 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_62 8192) normalized_62

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 64"
  out.flush

private theorem normalized_63 : combat_tickNormalized arena_state_63 8192 = arena_state_64 := by combat_kernel_close

private theorem actual_63 : arena_state_63.tickCombatV1 8192 = arena_state_64 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_63 8192) normalized_63

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 65"
  out.flush

private theorem normalized_64 : combat_tickNormalized arena_state_64 8192 = arena_state_65 := by combat_kernel_close

private theorem actual_64 : arena_state_64.tickCombatV1 8192 = arena_state_65 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_64 8192) normalized_64

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 66"
  out.flush

private theorem normalized_65 : combat_tickNormalized arena_state_65 8192 = arena_state_66 := by combat_kernel_close

private theorem actual_65 : arena_state_65.tickCombatV1 8192 = arena_state_66 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_65 8192) normalized_65

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 67"
  out.flush

private theorem normalized_66 : combat_tickNormalized arena_state_66 8192 = arena_state_67 := by combat_kernel_close

private theorem actual_66 : arena_state_66.tickCombatV1 8192 = arena_state_67 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_66 8192) normalized_66

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 68"
  out.flush

private theorem normalized_67 : combat_tickNormalized arena_state_67 8192 = arena_state_68 := by combat_kernel_close

private theorem actual_67 : arena_state_67.tickCombatV1 8192 = arena_state_68 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_67 8192) normalized_67

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 69"
  out.flush

private theorem normalized_68 : combat_tickNormalized arena_state_68 8192 = arena_state_69 := by combat_kernel_close

private theorem actual_68 : arena_state_68.tickCombatV1 8192 = arena_state_69 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_68 8192) normalized_68

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 70"
  out.flush

private theorem normalized_69 : combat_tickNormalized arena_state_69 8192 = arena_state_70 := by combat_kernel_close

private theorem actual_69 : arena_state_69.tickCombatV1 8192 = arena_state_70 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_69 8192) normalized_69

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 71"
  out.flush

private theorem normalized_70 : combat_tickNormalized arena_state_70 8192 = arena_state_71 := by combat_kernel_close

private theorem actual_70 : arena_state_70.tickCombatV1 8192 = arena_state_71 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_70 8192) normalized_70

/-- Complete checked transitions 61 through 71, with every prefix alive and error-free. -/
theorem arena_segment_008 : CombatSegment arena_state_60 arena_inputs_008 arena_state_71 := by
  doom_kernel_exact (combat_segment_cons arena_state_60 arena_state_61 arena_state_71 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_60 safe_60
    (combat_segment_cons arena_state_61 arena_state_62 arena_state_71 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_61 safe_61
    (combat_segment_cons arena_state_62 arena_state_63 arena_state_71 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_62 safe_62
    (combat_segment_cons arena_state_63 arena_state_64 arena_state_71 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_63 safe_63
    (combat_segment_cons arena_state_64 arena_state_65 arena_state_71 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_64 safe_64
    (combat_segment_cons arena_state_65 arena_state_66 arena_state_71 8192 [8192, 8192, 8192, 8192, 8192] actual_65 safe_65
    (combat_segment_cons arena_state_66 arena_state_67 arena_state_71 8192 [8192, 8192, 8192, 8192] actual_66 safe_66
    (combat_segment_cons arena_state_67 arena_state_68 arena_state_71 8192 [8192, 8192, 8192] actual_67 safe_67
    (combat_segment_cons arena_state_68 arena_state_69 arena_state_71 8192 [8192, 8192] actual_68 safe_68
    (combat_segment_cons arena_state_69 arena_state_70 arena_state_71 8192 [8192] actual_69 safe_69
    (combat_segment_cons arena_state_70 arena_state_71 arena_state_71 8192 [] actual_70 safe_70
    (combat_segment_nil arena_state_71 safe_71))))))))))))

#print axioms arena_segment_008
end LeanDoomProofs
