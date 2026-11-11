import LeanDoomProofs.CombatV2
import Lean

namespace OriginalReplay
open Doom

/-- Input masks admitted by the ordinary CombatV2 keyboard contract. -/
def ordinary (k : UInt32) : Bool :=
  k &&& (~~~ (2 ||| 4 ||| 8 ||| 16 ||| 32 ||| 64 ||| 512 ||| 4096 ||| 8192 ||| 16384 ||| 32768 ||| 65536)) == 0

/-- Map bytes are supplied from the user's local IWAD. The concrete generator uses only
lowercase ASCII hex pairs; a digest of those exact bytes is recorded alongside the proof. -/
def decodeHex (text : String) : ByteArray := Id.run do
  let mut data := ByteArray.empty
  let mut high := none
  for ch in text.toList do
    let v := if ch.toNat ≤ 57 then ch.toNat - 48 else ch.toNat - 87
    match high with
    | none => high := some v
    | some h => data := data.push (UInt8.ofNat (16*h+v)); high := none
  return data

/-- Every prefix must be alive and error-free, and only the final state may have the exit flag. -/
def scan (s : Simulation) : List UInt32 → Bool
  | [] => s.inventory.health > 0 && s.physicsError.isNone && s.exitRequested
  | k :: ks => s.inventory.health > 0 && s.physicsError.isNone && !s.exitRequested &&
    ordinary k && scan (s.tickCombatV2 k true) ks

def passage (group : Array Lump) (level : String) (commands : List UInt32) : Bool :=
  match (Map.load group level).bind (fun m => Simulation.spawn m true 1) with
  | .error _ => false
  | .ok start => scan start commands

structure Observed where
  tick : Nat
  x : Int
  y : Int
  health : Nat
  armor : Nat
  bullets : Nat
  shells : Nat
  shots : Nat
  kills : Nat
  exit : Bool
  errorFree : Bool
  deriving DecidableEq, Lean.ToJson

def observation (group : Array Lump) (level : String) (commands : List UInt32) : Option Observed := do
  let start ← ((Map.load group level).bind (fun m => Simulation.spawn m true 1)).toOption
  let s := commands.foldl (fun state k => state.tickCombatV2 k true) start
  return ⟨s.ticks, s.player.body.x.raw.toInt, s.player.body.y.raw.toInt, s.inventory.health,
          s.inventory.armor,s.inventory.bullets,s.inventory.shells,s.shots,s.kills,s.exitRequested,s.physicsError.isNone⟩

end OriginalReplay
