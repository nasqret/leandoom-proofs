import Inputs

open Doom
namespace ToxinRefinery

structure StairMoment where
  switchAtSpawn : Nat
  switchAfterCrossing : Nat
  lastStepAtSpawn : Int
  lastStepHighEnough : Bool
  playerHeightBefore : Int
  playerHeightAfter : Int
  tick : Nat
  deriving DecidableEq

/-- Heights use 16.16 fixed point. The last moving tread is sector 13.
The landing is 136 units high and the player's maximum step is 24. -/
def landing (group : Array Lump) (level : String) (keys : List UInt32)
    (previousTick : Nat) : Option StairMoment := do
  let map ← (Map.load group level).toOption
  let start ← (Simulation.spawn map true 1).toOption
  let command ← keys[previousTick]?
  let before := (keys.take previousTick).foldl (fun s k => s.tickCombatV2 k true) start
  let after := before.tickCombatV2 command true
  let trigger ← map.lines[967]?
  let used ← before.map.lines[967]?
  let initial ← map.sectors[13]?
  let tread ← before.map.sectors[13]?
  return ⟨trigger.special, used.special, initial.floor,
    (Fixed.ofInt 112).raw ≤ tread.floorFixed.raw,
    before.player.body.z.raw.toInt, after.player.body.z.raw.toInt, after.ticks⟩

end ToxinRefinery

namespace Recording
theorem stairLanding :
    ToxinRefinery.landing group mapName tape 1637 =
      some ⟨8, 0, 48, true, 8028160, 8912896, 1638⟩ := by native_decide
end Recording
