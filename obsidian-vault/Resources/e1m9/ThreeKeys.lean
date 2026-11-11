import Inputs

namespace MilitaryBase
open Doom
open Recording

def holdsAll (s : Simulation) : Bool := s.inventory.blue && s.inventory.red && s.inventory.yellow

private def usable (s : Simulation) : Bool :=
  s.inventory.health > 0 && s.physicsError.isNone && !s.exitRequested

private def markKeys (s : Simulation) (first : Option (Nat × Nat)) : Option (Nat × Nat) :=
  if first.isNone && holdsAll s then some (s.ticks, s.inventory.health) else first

/-- Inspect states in order, including spawn and the endpoint. A dead, erroneous,
exited state or reserved control aborts the certificate. -/
def survey (s : Simulation) (first : Option (Nat × Nat)) :
    List UInt32 → Option (Option (Nat × Nat) × Nat × Bool)
  | [] => if usable s then some (markKeys s first, s.ticks, holdsAll s) else none
  | k :: tail => if usable s && OriginalReplay.ordinary k then
      survey (s.tickCombatV2 k true) (markKeys s first) tail
    else none

def observed : Option (Option (Nat × Nat) × Nat × Bool) := do
  let start ← ((Map.load group mapName).bind (fun m => Simulation.spawn m true 1)).toOption
  survey start none tape

set_option maxRecDepth 65536
set_option maxHeartbeats 0

/-- All three keys first coexist at tick 1,664 with two HP. At 1,811 they are
still held; each observed state has strictly positive health, no physics error and no exit. -/
theorem first_three_keys : observed = some (some (1664,2),1811,true) := by native_decide

end MilitaryBase
