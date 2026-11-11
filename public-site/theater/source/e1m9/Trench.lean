import Inputs

open Doom
namespace MilitaryBase

structure Crossing where
  /-- Every sampled map still has its unused type-20 switch and its zero-height bridge. -/
  unraised : Bool := true
  /-- At each recorded tick the fixed-point value is an exact integer. -/
  exactUnits : Bool := true
  /-- Tick, BSP sector under the centre of the player, and feet height in map units. -/
  samples : List (Nat × Nat × Int) := []
  deriving DecidableEq

def sample (acc : Crossing) (s : Simulation) : Crossing := Id.run do
  let fixedBridge := (s.map.sectors[17]?.map (·.floor)) == some 0
  let unusedSwitch := (s.map.lines[567]?.map (·.special)) == some 20
  let mut out := { acc with unraised := acc.unraised && fixedBridge && unusedSwitch }
  if [1890,1894,1895,1896,1897,1898,1899,1901].contains s.ticks then
    let sector := (s.map.sectorAt s.player.body.x s.player.body.y).toOption.getD s.map.sectors.size
    out := { out with exactUnits := out.exactUnits && s.player.body.z.raw.toInt % 65536 == 0, samples := out.samples ++ [(s.ticks, sector, s.player.body.z.raw.toInt / 65536)] }
  return out

def trace (s : Simulation) (acc : Crossing) : List UInt32 → Crossing
  | [] => sample acc s
  | key :: rest => trace (s.tickCombatV2 key true) (sample acc s) rest

def inspect (group : Array Lump) (level : String) (keys : List UInt32) : Option Crossing := do
  let start ← ((Map.load group level).bind (fun m => Simulation.spawn m true 1)).toOption
  return trace start {} keys

end MilitaryBase

namespace Recording
theorem unraisedTrench :
    MilitaryBase.inspect group mapName tape = some ⟨true, true,
      [(1890,15,88), (1894,17,86), (1895,17,83), (1896,17,79),
       (1897,17,74), (1898,17,68), (1899,17,88), (1901,16,88)]⟩ := by native_decide
end Recording
