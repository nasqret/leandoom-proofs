import Doom.Combat
import LeanDoomProofs.Trace

namespace LeanDoomProofs
open Doom

/-- At the implemented completion boundary, no stage of the game advances.
Restart is explicitly excluded: it is checked before the exit flag. -/
theorem tick_after_exit (s : Simulation) (keys : UInt32) (walking : Bool)
    (exited : s.exitRequested = true) (noRestart : keyDown keys 1024 = false) :
    s.tick keys walking = { s with restartHeld := false } := by
  simp [Simulation.tick, noRestart, exited]

/-- Even arbitrary fire/move/use inputs cannot advance a held exit state. -/
theorem exited_tick_preserves (s : Simulation) (keys : UInt32) (walking : Bool)
    (exited : s.exitRequested = true) (noRestart : keyDown keys 1024 = false) :
    (s.tick keys walking).exitRequested = true ∧
    (s.tick keys walking).ticks = s.ticks ∧
    (s.tick keys walking).original = s.original ∧
    (s.tick keys walking).inventory = s.inventory := by
  rw [tick_after_exit s keys walking exited noRestart]
  exact ⟨exited, rfl, rfl, rfl⟩

/-- Unbounded temporal statement, with an explicit no-restart input discipline. -/
theorem exited_trace_preserves (s : Simulation) (actions : List UInt32)
    (exited : s.exitRequested = true)
    (noRestart : ∀ k ∈ actions, keyDown k 1024 = false) :
    (run (fun s k => s.tick k) s actions).exitRequested = true ∧
    (run (fun s k => s.tick k) s actions).ticks = s.ticks ∧
    (run (fun s k => s.tick k) s actions).original = s.original ∧
    (run (fun s k => s.tick k) s actions).inventory = s.inventory := by
  induction actions generalizing s with
  | nil => exact ⟨exited, rfl, rfl, rfl⟩
  | cons k actions ih =>
    have nk : keyDown k 1024 = false := noRestart k (by simp)
    have rest := ih { s with restartHeld := false } exited
      (fun j hj => noRestart j (by simp [hj]))
    simpa only [run_cons, tick_after_exit s k true exited nk] using rest

/-- An exit needs no switch artwork: this is the actual dispatch routine. -/
theorem exit_without_texture (t : LevelSpecials.Textures Nat) :
    (LevelSpecials.exitSwitch #[] t 11 true false).completed = true ∧
    (LevelSpecials.exitSwitch #[] t 11 true false).special = 0 := by
  simp [LevelSpecials.exitSwitch]

def exitTextures : LevelSpecials.Textures String := ⟨"-", "SW1EXIT", "-"⟩

theorem normal_exit_switch_certificate :
    let r := LevelSpecials.exitSwitch (LevelSpecials.switchList 1) exitTextures 11 true false
    r.completed = true ∧ r.special = 0 ∧ r.textures.middle = "SW2EXIT" ∧ r.switchSound = true := by
  decide +kernel

theorem nonplayer_cannot_exit (palette : Array Nat) (t : LevelSpecials.Textures Nat)
    (special : Nat) (back : Bool) :
    (LevelSpecials.exitSwitch palette t special false back).completed = false := by
  simp [LevelSpecials.exitSwitch]

theorem backside_cannot_exit (palette : Array Nat) (t : LevelSpecials.Textures Nat)
    (special : Nat) (player : Bool) :
    (LevelSpecials.exitSwitch palette t special player true).completed = false := by
  simp [LevelSpecials.exitSwitch]

end LeanDoomProofs
