import E1M2MapLoaded
import E1M2Spawn

open Doom
namespace LeanDoomProofs.E1M2

private theorem bind_success (source : Except String α) (f : α → Except String β)
    (a : α) (b : β) (hs : source = .ok a) (hf : f a = .ok b) :
    source.bind f = .ok b := by
  rw [hs]
  exact hf

/-- Ordinary combat initialization of the authentic Nuclear Plant literal map group. -/
theorem loaded_spawn :
    (Map.load group "E1M2").bind (fun m => Simulation.spawn m true 1) = .ok initial :=
  bind_success _ _ levelMap initial map_loaded spawn_checked

#print axioms loaded_spawn
end LeanDoomProofs.E1M2
