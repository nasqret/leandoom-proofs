import OriginalReplay
import Doom.Wad

/-! Fast proposal for a subsequent Lean theorem. This executable loads the caller's
whole IWAD and controller list. The proof imports the separate quotation module. -/

open Lean Doom

private def readCommands (path : System.FilePath) : IO (List UInt32) := do
  let words := (← IO.FS.readFile path).splitOn "\n" |>.filter (!·.isEmpty)
  words.mapM fun word => do
    let some k := word.toNat? | throw (IO.userError "expected a decimal keyboard mask")
    unless k < 2^32 && OriginalReplay.ordinary k.toUInt32 do
      throw (IO.userError "unsupported keyboard mask")
    return k.toUInt32

def main (args : List String) : IO UInt32 := do
  try
    let [iwad, level, maskFile] := args | throw (IO.userError "usage: replay-inspect IWAD E1Mx commands.txt")
    let .ok wad := Wad.parse (← IO.FS.readBinFile iwad) | throw (IO.userError "could not load IWAD directory")
    let tape ← readCommands maskFile
    let final := OriginalReplay.observation wad.lumps level tape
    let won := OriginalReplay.passage wad.lumps level tape
    IO.println (Json.mkObj [("final", toJson final), ("passage", toJson won)]).compress
    return 0
  catch e =>
    (← IO.getStderr).putStrLn (toString e)
    return 1
