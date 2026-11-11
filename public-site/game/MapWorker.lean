import LeanDoomProofs.CombatV2
import Doom.App
import Doom.CombatView
import Lean.Data.Json

/-! Local graphical player for the walking CombatV2 rules on episode-one maps.
The local bridge hashes the IWAD for recorded inputs. Rendering reads the simulation and owns its
own fuzz phase. No presentation or audio state is written into the game. -/

open Doom Lean

private def metadata (level : String) (s : Simulation) (bytes : Nat) (sounds : Array (Array String)) : Json := Json.mkObj [
  ("map", toJson level), ("width", toJson frameWidth), ("height", toJson frameHeight), ("bytes", toJson bytes),
  ("tick", toJson s.ticks), ("x", toJson s.player.body.x.raw.toInt),
  ("y", toJson s.player.body.y.raw.toInt), ("angle", toJson s.player.body.angle.raw.toNat),
  ("health", toJson s.inventory.health), ("armor", toJson s.inventory.armor),
  ("bullets", toJson s.inventory.bullets), ("shells", toJson s.inventory.shells),
  ("shots", toJson s.shots), ("kills", toJson s.kills),
  ("exit", toJson s.exitRequested), ("error", toJson s.physicsError), ("sounds", toJson sounds)]

private def inputMask (word : String) : IO UInt32 := do
  let some n := word.toNat? | throw (IO.userError "expected a decimal input mask")
  unless n < 2^32 && (n.toUInt32 &&& (~~~ (2 ||| 4 ||| 8 ||| 16 ||| 32 ||| 64 ||| 512 ||| 4096 ||| 8192 ||| 16384 ||| 32768 ||| 65536))) == 0 do
    throw (IO.userError "unsupported input mask for ordinary walking combat")
  return n.toUInt32

private def serve (iwad level : String) : IO Unit := do
  let wad ← checked (Wad.parse (← IO.FS.readBinFile iwad))
  unless wad.kind == "IWAD" do
    throw (IO.userError "expected a local IWAD")
  unless (["E1M1", "E1M2", "E1M3", "E1M4", "E1M5", "E1M6", "E1M7", "E1M8", "E1M9"] : List String).contains level do
    throw (IO.userError "select a map from E1M1 to E1M9")
  let map ← checked (Doom.Map.load wad.lumps level)
  let assets ← checked (Assets.load wad.lumps map true true)
  let start ← checked (Simulation.spawn map true 1)
  let stdin ← IO.getStdin
  let stdout ← IO.getStdout
  let mut s := start
  let mut phase : Fuzz.Phase := 0
  repeat
    let line ← stdin.getLine
    if line.isEmpty then break
    let mut sounds : Array (Array String) := #[]
    match (line.trimAscii.toString.splitOn " ").filter (!·.isEmpty) with
    | ["quit"] => break
    | ["reset"] => s := start; phase := 0
    | ["frame"] => pure ()
    | "step" :: words =>
      if words.isEmpty || words.length > 35 then
        throw (IO.userError "step expects between one and 35 input masks")
      for key in (← words.mapM inputMask) do
        if s.physicsError.isSome then break
        let before := s.ticks
        s := s.tickCombatV2 key true
        sounds := sounds.push (if s.ticks == before then #[] else s.audioEvents.map (·.name))
    | _ => throw (IO.userError "expected frame, step, reset, or quit")
    let (pixels, nextPhase) ← checked (s.drawFrame assets none phase)
    phase := nextPhase
    stdout.putStrLn (metadata level s pixels.size sounds).compress
    stdout.write pixels
    stdout.flush

def main (args : List String) : IO UInt32 := do
  try
    let [iwad, level] := args | throw (IO.userError "usage: map-player path/to/local.wad E1M1")
    serve iwad level
    return 0
  catch e =>
    (← IO.getStderr).putStrLn s!"Map player: {e}"
    return 1
