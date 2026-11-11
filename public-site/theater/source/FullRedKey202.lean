import FullConnected201
import FullConnected202
open Doom LeanDoomProofs
namespace NuclearFullPassage
theorem redKeyAt202 :
    (NuclearWindow.fromMap 201).map (fun s => s.inventory.red) = .ok false ∧
    (NuclearWindow.fromMap 202).map (fun s => s.inventory.red) = .ok true := by
  rw [fromMap201,fromMap202]
  exact ⟨rfl,rfl⟩
#print axioms redKeyAt202
end NuclearFullPassage
