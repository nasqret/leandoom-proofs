import OriginalReplay
namespace TurnFamily
open Doom

structure Run where
  sim : Simulation
  safe : Bool
  firstExit : Nat

structure Answer where
  cut : Nat
  blend : Nat
  approach : Nat
  firstExit : Nat
  safe : Bool
  deriving DecidableEq, Repr, Lean.ToJson

abbrev Sample := Int × Int × Nat

def sample (s : Simulation) : Sample :=
  (s.player.body.x.raw.toInt, s.player.body.y.raw.toInt, s.player.body.angle.raw.toNat)

def safe (s : Simulation) : Bool :=
  s.inventory.health > 0 && s.physicsError.isNone && s.shots == 0

def advance (r : Run) (key : UInt32) : Run :=
  let s := r.sim.tickCombatV2 key true
  ⟨s, r.safe && OriginalReplay.ordinary key && safe s,
    if r.firstExit == 0 && s.exitRequested then s.ticks else r.firstExit⟩

def common (group : Array Lump) (tape : List UInt32) : Option Run := do
  guard (tape.length == 993)
  let s ← ((Map.load group "E1M1").bind (fun m => Simulation.spawn m true 1)).toOption
  let r := (tape.take 942).foldl advance ⟨s, safe s, 0⟩
  guard (r.sim.ticks == 942 && r.safe && r.firstExit == 0)
  return r

/-- The suffix in turnTape, with 942 controls already replayed. -/
def suffix (tape : List UInt32) (cut blend approach : Nat) : List UInt32 :=
  List.replicate (36-cut-blend) 64 ++ List.replicate blend 578 ++
  (tape.drop 978).take (13-approach) ++ [4096]

def one (prefixState : Run) (tape : List UInt32) (cut blend approach : Nat) :
    Answer × Array Sample := Id.run do
  let mut r := prefixState
  let mut points := #[sample r.sim]
  for key in suffix tape cut blend approach do
    r := advance r key
    points := points.push (sample r.sim)
  return (⟨cut,blend,approach,r.firstExit,r.safe⟩,points)

def cases (prefixState : Run) (tape : List UInt32) (cut : Nat) : Array (Answer × Array Sample) :=
  (Array.range 110).map fun i => one prefixState tape cut (i/10) (i%10)

/-- Each path has a one-byte sample count, followed by three little-endian words
per tick: signed fixed-point x and y, then unsigned binary-angle facing. -/
def word (data : ByteArray) (bits : UInt32) : ByteArray :=
  let data := data.push bits.toUInt8
  let data := data.push (bits >>> 8).toUInt8
  let data := data.push (bits >>> 16).toUInt8
  data.push (bits >>> 24).toUInt8

def encodePath (data : ByteArray) (points : Array Sample) : ByteArray :=
  points.foldl (fun data p =>
    word (word (word data (Int32.ofInt p.1).toUInt32) (Int32.ofInt p.2.1).toUInt32) p.2.2.toUInt32)
    (data.push points.size.toUInt8)

abbrev CutData := List Answer × ByteArray

def evaluateCut (group : Array Lump) (tape : List UInt32) (cut : Nat) : Option CutData := do
  guard (cut < 25)
  let start ← common group tape
  let scored := cases start tape cut
  let packed := scored.foldl (fun data item =>
    let a := item.1
    let keys := suffix tape a.cut a.blend a.approach
    keys.foldl word (encodePath data item.2)) ByteArray.empty
  return ((scored.map Prod.fst).toList, packed)

abbrev Table := List (Option (List Answer))

def table (group : Array Lump) (tape : List UInt32) : Table :=
  (List.range 25).map fun cut => (evaluateCut group tape cut).map Prod.fst

def entries (rows : Table) : List Answer := rows.flatMap (·.getD [])
def won (a : Answer) : Bool := a.safe && a.firstExit > 0
def winning (rows : Table) : List Answer := (entries rows).filter won
def minimum (rows : Table) : Option Nat :=
  (winning rows).foldl (fun previous a => some (min (previous.getD a.firstExit) a.firstExit)) none
def settingsAt (rows : Table) (tick : Nat) : List (Nat × Nat × Nat) :=
  ((winning rows).filter (fun a => a.firstExit == tick)).map fun a => (a.cut,a.blend,a.approach)
end TurnFamily
