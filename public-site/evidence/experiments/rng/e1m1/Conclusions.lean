import Certificate
import RngConclusionRules
open RngExperiment
namespace Recording
set_option maxRecDepth 65536
set_option maxHeartbeats 0

theorem safeExitCount : winCount (classify group mapName tape) = 254 := by
  rw [all256]
  decide +kernel

theorem lastInputSafeExitCount : lastInputWinCount (classify group mapName tape) tape.length = 254 := by
  rw [all256]
  decide +kernel

theorem ordinaryStartWins : winsAt (classify group mapName tape) 5 = true := by
  rw [all256]
  decide +kernel

theorem alternatePhase0Wins : winsAt (classify group mapName tape) 0 = true := by
  rw [all256]
  decide +kernel

theorem losingCursors : (((outcomes (classify group mapName tape)).filter (fun o => !(safeExitWithin o))).map (·.index)) = [40, 176] := by
  rw [all256]
  decide +kernel

theorem ordinaryPhase5 : eventsAndHealth (classify group mapName tape) 5 = some (some 993, none, none, 48) := by
  rw [all256]
  decide +kernel

theorem diedPhase40 : eventsAndHealth (classify group mapName tape) 40 = some (none, some 918, none, 0) := by
  rw [all256]
  decide +kernel

theorem aliveWithoutExitPhase176 : eventsAndHealth (classify group mapName tape) 176 = some (none, none, none, 69) := by
  rw [all256]
  decide +kernel

theorem existsLosingCursor : ∃ i : UInt8, winsAt (classify group mapName tape) i.toNat = false := by
  refine ⟨40, ?_⟩
  rw [all256]
  decide +kernel
end Recording
