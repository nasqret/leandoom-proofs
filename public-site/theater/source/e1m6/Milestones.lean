import Inputs
open Doom
namespace RouteMilestones

structure Summary where
  blue : Option Nat := none
  yellow : Option Nat := none
  red : Option Nat := none
  firstShot : Option Nat := none
  minimumHealth : Nat
  deriving DecidableEq, Repr

def first (current : Option Nat) (seen : Bool) (tick : Nat) : Option Nat :=
  current.orElse fun _ => if seen then some tick else none

def sample (acc : Summary) (s : Simulation) : Summary :=
  ⟨first acc.blue s.inventory.blue s.ticks, first acc.yellow s.inventory.yellow s.ticks,
   first acc.red s.inventory.red s.ticks, first acc.firstShot (s.shots > 0) s.ticks,
   min acc.minimumHealth s.inventory.health⟩

def collect (s : Simulation) (acc : Summary) : List UInt32 → Summary
  | [] => sample acc s
  | k :: ks => collect (s.tickCombatV2 k true) (sample acc s) ks

def inspect (group : Array Lump) (level : String) (tape : List UInt32) : Option Summary := do
  let s ← ((Map.load group level).bind (fun m => Simulation.spawn m true 1)).toOption
  return collect s { minimumHealth := s.inventory.health } tape

end RouteMilestones

namespace Recording
theorem milestones :
    RouteMilestones.inspect group mapName tape =
      some ⟨some 597, some 1396, some 169, some 5, 14⟩ := by native_decide
end Recording
