import RngExperiment
import Doom.Wad

open Lean Doom RngExperiment

def main (args : List String) : IO Unit := do
  let [wadPath, level, cmdPath, fromArg, toArg] := args
    | throw (IO.userError "usage: rng-scan IWAD LEVEL COMMANDS FROM TO_EXCLUSIVE")
  let some beginIndex := fromArg.toNat? | throw (IO.userError "invalid start index")
  let some endIndex := toArg.toNat? | throw (IO.userError "invalid end index")
  unless beginIndex < endIndex && endIndex ≤ 256 do throw (IO.userError "invalid index range")
  let .ok wad := Wad.parse (← IO.FS.readBinFile wadPath) | throw (IO.userError "invalid IWAD")
  let .ok base := (Map.load wad.lumps level).bind (fun m => Simulation.spawn m true 1)
    | throw (IO.userError "could not spawn")
  let commands ← ((← IO.FS.readFile cmdPath).splitOn "\n" |>.filter (!·.isEmpty)).mapM fun text => do
    let some n := text.toNat? | throw (IO.userError "invalid key mask")
    unless n < 2^32 && OriginalReplay.ordinary n.toUInt32 do throw (IO.userError "abnormal input")
    pure n.toUInt32
  let out ← IO.getStdout
  for i in [beginIndex:endIndex] do
    let (result, frames) := replay base commands i.toUInt8 true
    out.putStrLn (Json.mkObj [("baselineIndex", toJson base.rng.play.toNat),
      ("outcome", toJson result), ("frames", toJson frames)]).compress
