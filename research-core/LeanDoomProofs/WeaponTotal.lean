/- Fist/pistol/shotgun controller adapted from Doom/Weapon.lean at the pinned
Lean Doom revision. Copyright 1993-1996 id Software; 2005-2014 Simon Howard.
GPL-2.0-or-later. The frozen upstream file is retained under vendor/leandoom.

Revision V1: replace private partial recursion by structural recursion on fuel.
Exhaustion is an explicit error, never a fabricated successful context. This is
not an equality theorem about the old opaque constants. -/
import Doom.Weapon

namespace LeanDoomProofs.WeaponTotal
open Doom Doom.Weapon Doom.WeaponData

private def pending (c : Context) : Bool := supported c.player.pendingWeapon.val

def exhausted : String := "proof-weapon-v1: recursive action budget exhausted"

mutual
 def enter : Nat → Context → Nat → Except String Context
  | 0, _, _ => .error exhausted
  | fuel+1, initial, id => do
    let mut c := { initial with state := { initial.state with weapon := { initial.state.weapon with frame := id } } }
    if id == 0 then return c
    let f := frames[id]!
    c := { c with state := { c.state with weapon := { c.state.weapon with tics := f.tics } } }
    let w := c.player.readyWeapon.val
    match f.action with
    | "A_WeaponReady" =>
      if pending c || c.player.health == 0 then return ← enter fuel c (down w)
      if c.attack then return ← fire fuel { c with state := { c.state with attackDown := true } }
      let angle : Angle := ⟨((c.time*128).toUInt32 &&& 8191) <<< 19⟩
      let half : Angle := ⟨((c.time*128).toUInt32 &&& 4095) <<< 19⟩
      c := { c with state := { c.state with attackDown := false, weapon := { c.state.weapon with
        x := Fixed.ofInt 1 + c.bob*angle.fineCosine,
        y := Fixed.ofInt 32 + c.bob*half.fineSine } } }
    | "A_Lower" =>
      let y := c.state.weapon.y + Fixed.ofInt 6
      c := { c with state := { c.state with weapon := { c.state.weapon with y } } }
      if y.raw < 128*65536 then return c
      if c.dead then return { c with state := { c.state with weapon := { c.state.weapon with y := Fixed.ofInt 128 } } }
      if c.player.health == 0 then return ← enter fuel c 0
      let w := c.player.pendingWeapon.val
      if h : w < 9 then
        c := { c with player := { c.player with readyWeapon := ⟨w,h⟩, pendingWeapon := 9 }, state := { c.state with weapon := { c.state.weapon with y := Fixed.ofInt 128 } } }
        return ← enter fuel c (up w)
    | "A_Raise" =>
      let y := c.state.weapon.y - Fixed.ofInt 6
      c := { c with state := { c.state with weapon := { c.state.weapon with y } } }
      if y.raw > 32*65536 then return c
      return ← enter fuel { c with state := { c.state with weapon := { c.state.weapon with y := Fixed.ofInt 32 } } } (ready w)
    | "A_ReFire" =>
      if c.attack && !pending c && c.player.health != 0 then
        return ← fire fuel { c with state := { c.state with refire := c.state.refire+1 } }
      c := (← checkAmmo fuel { c with state := { c.state with refire := 0 } }).2
    | "A_FirePistol" | "A_FireShotgun" =>
      let shotgun := f.action == "A_FireShotgun"
      let gun : Fire.Gun := if shotgun then .shotgun else .pistol
      let ammo := gun.ammoIndex.val
      let discharge := Fire.discharge gun c.player.ammo[ammo]!
      let flash := if shotgun then SGUNFLASH1 else PISTOLFLASH
      c := { c with player := { c.player with ammo := c.player.ammo.set! ammo discharge.ammoAfter }, state := { c.state with flash := { c.state.flash with frame := flash, tics := frames[flash]!.tics }, extraLight := 1 }, events := c.events.push (if shotgun then .shotgun else .pistol (c.state.refire == 0)) }
    | "A_Punch" => c := { c with events := c.events.push .punch }
    | _ => pure ()
    if c.state.weapon.tics == 0 then return ← enter fuel c frames[c.state.weapon.frame]!.next
    return c

 def checkAmmo : Nat → Context → Except String (Bool × Context)
  | 0, _ => .error exhausted
  | fuel+1, c => do
    let w := c.player.readyWeapon.val
    if w == 0 || c.player.ammo[if w == 2 then 1 else 0]! > 0 then return (true,c)
    else
      let choice : Fin 10 := if c.player.weapons[2] && c.player.ammo[1] > 0 then 2
        else if c.player.ammo[0] > 0 then 1 else 0
      return (false, ← enter fuel { c with player := { c.player with pendingWeapon := choice } } (down w))

 def fire : Nat → Context → Except String Context
  | 0, _ => .error exhausted
  | fuel+1, c => do
    let (allowed,c) ← checkAmmo fuel c
    if !allowed then return c else
      let c ← enter fuel c (attackState c.player.readyWeapon.val)
      return { c with events := c.events.push .noise }
end

/-- One weapon update with at most 64 nested controller calls. An exhausted
budget propagates as an error to the revised simulation's physicsError field. -/
def tick (initial : Context) : Except String Context := do
  let mut c := { initial with events := #[] }
  if c.state.weapon.frame != 0 && c.state.weapon.tics != -1 then
    c := { c with state := { c.state with weapon := { c.state.weapon with tics := c.state.weapon.tics-1 } } }
    if c.state.weapon.tics == 0 then c ← enter 64 c frames[c.state.weapon.frame]!.next
  if c.state.flash.frame != 0 && c.state.flash.tics != -1 then
    let mut flash := { c.state.flash with tics := c.state.flash.tics-1 }
    let mut light := c.state.extraLight
    if flash.tics == 0 then
      let next := frames[flash.frame]!.next
      if next == LIGHTDONE then flash := { flash with frame := 0 }; light := 0
      else flash := { flash with frame := next, tics := frames[next]!.tics }; light := 2
    c := { c with state := { c.state with flash, extraLight := light } }
  return { c with state := { c.state with flash := { c.state.flash with x := c.state.weapon.x, y := c.state.weapon.y } } }

def drop (c : Context) : Except String Context := enter 64 c (down c.player.readyWeapon.val)

end LeanDoomProofs.WeaponTotal
