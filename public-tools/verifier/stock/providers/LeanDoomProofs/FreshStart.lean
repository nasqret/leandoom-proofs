import LeanDoomProofs.Fixtures
import LeanDoomProofs.Trace

namespace LeanDoomProofs
open Doom Fixtures

/-- A failed spawn and every successful fresh spawn both fail our exit goal.
This is universal in the map, without evaluating its geometry or float fields. -/
theorem fresh_spawn_not_won (m : Map) : won (Simulation.spawn m false) = false := by
  cases h : Scrolling.spawn ((SectorLights.spawnMap m {}).1.lines.map (·.special)) <;>
    cases p : Player.spawn (SectorLights.spawnMap m {}).1 <;>
    simp [Simulation.spawn, won, h, p] <;> rfl

/-- Preserve spawn failures rather than silently supplying a fallback state. -/
def resultTick (r : Except String Simulation) (keys : UInt32) : Except String Simulation :=
  r.map (fun s => s.tick keys)

/-- A modest but unconditional lower bound for every map and every winning
input trace from its actual spawn: at least one call to the tick interface. -/
theorem fresh_win_needs_input (m : Map) (actions : List UInt32)
    (wins : won (run resultTick (Simulation.spawn m false) actions) = true) :
    1 ≤ actions.length := by
  cases actions with
  | nil =>
    have initial := fresh_spawn_not_won m
    simp only [run_nil] at wins
    rw [initial] at wins
    contradiction
  | cons a rest => simp

end LeanDoomProofs
