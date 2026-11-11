import Lean

namespace ProofGrid

structure Room where
  rows : Array (Array Char)
  startX : Nat
  startY : Nat
  facing : Nat
  deriving Inhabited

structure State where
  x : Nat
  y : Nat
  facing : Nat
  hp : Nat := 3
  blue : Bool := false
  opened : Bool := false
  exit : Bool := false
  used : List (Nat × Nat) := []
  deriving DecidableEq, Repr

def initial (l : Room) : State := ⟨l.startX, l.startY, l.facing, 3, false, false, false, []⟩

def neighbor (s : State) (d : Nat) : Int × Int :=
  match d % 4 with
  | 0 => ((s.x : Int) + 1, s.y)
  | 1 => (s.x, (s.y : Int) + 1)
  | 2 => ((s.x : Int) - 1, s.y)
  | _ => (s.x, (s.y : Int) - 1)

def tile (r : Room) (x y : Int) : Char :=
  if x < 0 || y < 0 then '#' else
  ((r.rows[y.toNat]?.bind fun row => row[x.toNat]?).getD '#')

def step (r : Room) (s : State) (c : Nat) : State := Id.run do
  if s.exit || s.hp == 0 then return s
  if c == 0 then return s
  if c == 2 then return { s with facing := (s.facing+3)%4 }
  if c == 3 then return { s with facing := (s.facing+1)%4 }
  let d := match c with
    | 4 => s.facing+3 | 5 => s.facing+1 | 7 => s.facing+2 | _ => s.facing
  let (px,py) := neighbor s d
  let t := tile r px py
  if c == 6 then
    if t == 'X' then return { s with exit := true }
    if t == 'B' && s.blue then return { s with opened := true }
    return s
  if c > 7 || t == '#' || t == 'X' || (t == 'B' && !s.opened) then return s
  let x := px.toNat
  let y := py.toNat
  let next := { s with x, y }
  if t == 'b' then return { next with blue := true }
  if t == '!' then return { next with hp := next.hp-1 }
  if t == 'h' && !s.used.contains (x,y) then
    return { next with hp := min 3 (s.hp+1), used := (x,y)::s.used }
  return next

structure Observed where
  x : Nat
  y : Nat
  facing : Nat
  hp : Nat
  blue : Bool
  opened : Bool
  exit : Bool
  deriving DecidableEq, Lean.ToJson

def observe (s : State) : Observed :=
  ⟨s.x,s.y,s.facing,s.hp,s.blue,s.opened,s.exit⟩

def play (r : Room) (ks : List Nat) : State := ks.foldl (step r) (initial r)

/-- Recursive guards cover every state, including the initial and final states.
An early exit followed by an extra command fails the exact passage condition. -/
def safeFirstExit (r : Room) (s : State) : List Nat → Bool
  | [] => s.hp > 0 && s.exit
  | c :: cs => s.hp > 0 && !s.exit && c < 8 && safeFirstExit r (step r s c) cs

end ProofGrid
