import ForkModel
import Lean.Data.Json

open Lean Doom HangarFork

private def track (s : Simulation) : Json :=
  let projectile := s.projectiles[subjectSlot]?
  Json.arr #[toJson s.ticks, toJson s.player.body.x.raw.toInt, toJson s.player.body.y.raw.toInt,
    toJson s.inventory.health, toJson (projectile.map (·.motion.x.raw.toInt)),
    toJson (projectile.map (·.motion.y.raw.toInt)), toJson (phase s), toJson s.player.body.angle.raw.toNat]

private def runTrack (initial : Run) (inputs : Array UInt32) : Run × Array Json := Id.run do
  let mut r := initial
  let mut rows := #[track r.1]
  for mask in inputs do
    if finished r then break
    r := advance r mask
    rows := rows.push (track r.1)
  return (r, rows)

def main (args : List String) : IO Unit := do
  let [iwad, spec, output] := args | throw (IO.userError "expected IWAD, JSON tapes and output")
  let .ok wad := Wad.parse (← IO.FS.readBinFile iwad) | throw (IO.userError "invalid IWAD")
  let .ok input := Json.parse (← IO.FS.readFile spec) | throw (IO.userError "invalid JSON")
  let .ok base := input.getObjValAs? (Array Nat) "baseline" | throw (IO.userError "no baseline")
  let .ok learned := input.getObjValAs? (Array Nat) "learned" | throw (IO.userError "no learned route")
  unless (base ++ learned).all (fun n => n < 2^32 && OriginalReplay.ordinary n.toUInt32) do
    throw (IO.userError "nonordinary controller")
  let base := base.map Nat.toUInt32
  let learned := learned.map Nat.toUInt32
  let .ok initial := start wad.lumps | throw (IO.userError "bad Hangar spawn")
  let controllers := tapes base learned
  let common := base.extract 0 forkPoint
  unless controllers.all (fun tape => tape.extract 0 forkPoint == common) do
    throw (IO.userError "controller prefixes differ")
  let (shared, opening) := runTrack initial common
  let file ← IO.FS.Handle.mk output .write
  for i in [:controllers.size] do
    let tape := controllers[i]!
    let (last, tailRows) := runTrack shared (tape.extract forkPoint tape.size)
    let rows := if i < 3 then (opening.extract 0 forkPoint) ++ tailRows else tailRows
    file.putStrLn (Json.mkObj [("index", toJson i),("outcome",toJson last.2),("tracks",Json.arr rows)]).compress
  file.flush
