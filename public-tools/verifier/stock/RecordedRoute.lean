import FullScanRules

namespace LeanDoomProofs.RecordedRoute
open Doom

/-- Execute the tape after loading the named map group and spawning the combat player. -/
def fromMap (group : Array Lump) (name : String) (keys : List UInt32) : Except String Simulation := do
  let level ← Map.load group name
  let start ← Simulation.spawn level true 1
  return run CheckedReplay.step start keys

theorem endpoint_of_scan (group : Array Lump) (name : String) (level : Map)
    (start finish : Simulation) (keys : List UInt32)
    (parse : Map.load group name = .ok level) (spawn : Simulation.spawn level true 1 = .ok start)
    (scan : CheckedReplay.scan start keys = some finish) :
    fromMap group name keys = .ok finish := by
  unfold fromMap
  rw [parse]
  change (Simulation.spawn level true 1).bind _ = _
  rw [spawn]
  exact congrArg Except.ok (CheckedReplay.scan_sound start finish keys scan).1

theorem prefixes_of_passage (group : Array Lump) (name : String) (level : Map)
    (start : Simulation) (keys : List UInt32)
    (parse : Map.load group name = .ok level) (spawn : Simulation.spawn level true 1 = .ok start)
    (h : CheckedReplay.Passage group name keys) :
    (∀ j, j ≤ keys.length → combatSafe (run CheckedReplay.step start (keys.take j))) ∧
    (∀ j, (run CheckedReplay.step start (keys.take j)).exitRequested = decide (keys.length ≤ j)) := by
  obtain ⟨_, _, _, hm, hs, _, _, safe, won⟩ := h
  rw [parse] at hm
  cases hm
  rw [spawn] at hs
  cases hs
  exact ⟨safe, won⟩

#print axioms endpoint_of_scan
#print axioms prefixes_of_passage
end LeanDoomProofs.RecordedRoute
