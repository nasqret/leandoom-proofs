import TurnFamily
import Doom.Wad
open Doom Lean TurnFamily

def main (args : List String) : IO Unit := do
  let [iwad, commandsFile, cutStr] := args | throw (IO.userError "usage: turn-capture IWAD commands.txt cut")
  let some cut := cutStr.toNat? | throw (IO.userError "bad cut")
  unless cut < 25 do throw (IO.userError "cut outside grid")
  let .ok wad := Wad.parse (← IO.FS.readBinFile iwad) | throw (IO.userError "bad IWAD")
  let commands ← ((← IO.FS.readFile commandsFile).splitOn "\n" |>.filter (!·.isEmpty)).mapM fun w => do
    let some n := w.toNat? | throw (IO.userError "bad mask")
    unless n < 2^32 && OriginalReplay.ordinary n.toUInt32 do throw (IO.userError "unsupported mask")
    pure n.toUInt32
  let some start := common wad.lumps commands | throw (IO.userError "bad common prefix")
  let out ← IO.getStdout
  for (answer, points) in cases start commands cut do
    let path := points.map fun p => Json.arr #[toJson p.1, toJson p.2.1, toJson p.2.2]
    out.putStrLn (Json.mkObj [("answer",toJson answer),("path",Json.arr path)]).compress
