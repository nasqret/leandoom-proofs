import OriginalReplay

namespace OriginalReplay
open Doom

def afterKeys (s : Simulation) (ks : List UInt32) : Simulation :=
  ks.foldl (fun t k => t.tickCombatV2 k true) s

/-- Ordinary controls, health/error safety at every prefix, no earlier exit, and an exit at the endpoint. -/
def SafeFirstExit (s : Simulation) (ks : List UInt32) : Prop :=
  (∀ k ∈ ks, ordinary k = true) ∧
  (∀ j, j ≤ ks.length →
    let t := afterKeys s (ks.take j)
    0 < t.inventory.health ∧ t.physicsError.isNone = true) ∧
  (∀ j, j < ks.length → (afterKeys s (ks.take j)).exitRequested = false) ∧
  (afterKeys s ks).exitRequested = true

theorem scan_sound {ks : List UInt32} {s : Simulation} (h : scan s ks = true) :
    SafeFirstExit s ks := by
  induction ks generalizing s with
  | nil =>
    have hs : (0 < s.inventory.health ∧ s.physicsError.isNone = true) ∧ s.exitRequested = true := by
      simpa [scan, and_assoc] using h
    constructor
    · simp
    refine ⟨?_, ?_, hs.2⟩
    · intro j _
      simpa [afterKeys] using hs.1
    · simp
  | cons k rest ih =>
    have hs : 0 < s.inventory.health ∧ s.physicsError.isNone = true ∧
        s.exitRequested = false ∧ ordinary k = true ∧ scan (s.tickCombatV2 k true) rest = true := by
      simpa [scan, and_assoc] using h
    obtain ⟨hp, errorFree, live, key, next⟩ := hs
    obtain ⟨keys, safe, early, final⟩ := ih next
    refine ⟨?_, ?_, ?_, final⟩
    · intro input mem
      rcases List.mem_cons.mp mem with rfl | later
      · exact key
      · exact keys input later
    · intro j hj
      cases j with
      | zero => exact ⟨hp,errorFree⟩
      | succ j => exact safe j (Nat.le_of_succ_le_succ hj)
    · intro j hj
      cases j with
      | zero => exact live
      | succ j => exact early j (Nat.lt_of_succ_lt_succ hj)

theorem passage_sound {group : Array Lump} {mapName : String} {ks : List UInt32}
    (h : passage group mapName ks = true) :
    ∃ s, (Map.load group mapName).bind (fun m => Simulation.spawn m true 1) = .ok s ∧
         SafeFirstExit s ks := by
  unfold passage at h
  split at h
  · contradiction
  next s he => exact ⟨s, he, scan_sound h⟩

end OriginalReplay
