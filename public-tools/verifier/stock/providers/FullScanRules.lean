import CheckedReplay
open Doom LeanDoomProofs
namespace NuclearFullPassage
theorem singleton (s t : Simulation) (k : UInt32)
    (guard : (CheckedReplay.allowed k && decide (0 < s.inventory.health) && !s.exitRequested) = true)
    (edge : s.tickCombatV2 k true = t) : CheckedReplay.scan s [k] = some t := by
  simp only [CheckedReplay.scan, guard, ↓reduceIte, CheckedReplay.step, edge]
theorem join {s t u : Simulation} {left right whole : List UInt32}
    (parts : whole = left ++ right) (p : CheckedReplay.scan s left = some t)
    (q : CheckedReplay.scan t right = some u) : CheckedReplay.scan s whole = some u := by
  rw [parts]; exact CheckedReplay.append_checked s t u left right p q
#print axioms singleton
#print axioms join
end NuclearFullPassage
