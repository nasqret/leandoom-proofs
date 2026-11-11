import Certificate
import RngConclusionRules
open RngExperiment
namespace Recording
set_option maxRecDepth 65536
set_option maxHeartbeats 0

theorem safeExitCount : winCount (classify group mapName tape) = 8 := by
  rw [all256]
  decide +kernel

theorem lastInputSafeExitCount : lastInputWinCount (classify group mapName tape) tape.length = 8 := by
  rw [all256]
  decide +kernel

theorem ordinaryStartWins : winsAt (classify group mapName tape) 25 = true := by
  rw [all256]
  decide +kernel

theorem alternatePhase5Wins : winsAt (classify group mapName tape) 5 = true := by
  rw [all256]
  decide +kernel

theorem winningCursors : (((outcomes (classify group mapName tape)).filter safeExitWithin).map (·.index)) = [5, 25, 66, 81, 83, 178, 182, 231] := by
  rw [all256]
  decide +kernel

theorem ordinaryPhase25 : eventsAndHealth (classify group mapName tape) 25 = some (some 1017, none, none, 73) := by
  rw [all256]
  decide +kernel

theorem diedPhase0 : eventsAndHealth (classify group mapName tape) 0 = some (none, some 907, none, 0) := by
  rw [all256]
  decide +kernel

theorem aliveWithoutExitPhase1 : eventsAndHealth (classify group mapName tape) 1 = some (none, none, none, 100) := by
  rw [all256]
  decide +kernel

theorem existsLosingCursor : ∃ i : UInt8, winsAt (classify group mapName tape) i.toNat = false := by
  refine ⟨0, ?_⟩
  rw [all256]
  decide +kernel
end Recording
