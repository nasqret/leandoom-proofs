import LeanDoomProofs.Fixtures
import LeanDoomProofs.Trace

set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace LeanDoomProofs
open Doom Doom.Collision Fixtures

local instance {ε α : Type} [DecidableEq ε] [DecidableEq α] : DecidableEq (Except ε α) :=
  fun x y => match x, y with
    | .ok a, .ok b => if h : a = b then isTrue (by cases h; rfl) else isFalse (by intro e; cases e; exact h rfl)
    | .error a, .error b => if h : a = b then isTrue (by cases h; rfl) else isFalse (by intro e; cases e; exact h rfl)
    | .ok _, .error _ => isFalse (by intro h; cases h)
    | .error _, .ok _ => isFalse (by intro h; cases h)

/-- Exact collision with a player-sized target at the origin. -/
theorem fireball_hits_center : missileContact 0 0 32 = .ok (false, some 0) := by
  decide +kernel

/-- A 22-unit lateral separation is sufficient: radii 16 and 6, strict overlap. -/
theorem fireball_dodge_at_22 : missileContact 0 22 32 = .ok (true, none) := by
  decide +kernel

/-- The threshold is sharp at integral coordinates for this scene. -/
theorem fireball_still_hits_at_21 : missileContact 0 21 32 = .ok (false, some 0) := by
  decide +kernel

/-- The missile passes above a 56-unit-tall target only with strict separation. -/
theorem fireball_overhead_57 : missileContact 0 0 57 = .ok (true, none) := by
  decide +kernel

theorem fireball_touches_at_56 : missileContact 0 0 56 = .ok (false, some 0) := by
  decide +kernel

/-- The production radius routine visits and damages three imps in one blast.
Sight is supplied as clear; the kernel checks BLOCKMAP traversal and damage. -/
theorem triple_barrel_blast :
    blast = .ok #[(0,128),(1,84),(2,84)] := by
  decide +kernel

/-- Every damage request is lethal to a healthy 60-HP imp. -/
theorem triple_blast_lethal :
    (#[128,84,84] : Array Int32).all (fun d => d ≥ 60) = true := by
  decide +kernel

/-- Height alone never changes the damage-falloff stage. Visibility remains a
separate condition in radiusAttack. This quantifies over every target height. -/
theorem blast_damage_ignores_height (source victim : SolidThing) (damage : Int32)
    (kind : Nat) (z h : Fixed) :
    radiusDamage source { victim with z := z, height := h } damage kind =
    radiusDamage source victim damage kind := rfl

/-- The two boss kinds are immune at this routine, independently of coordinates. -/
theorem cyberdemon_blast_immune (source victim : SolidThing) (damage : Int32) :
    radiusDamage source victim damage 16 = .ok 0 := by
  simp [radiusDamage]
  rfl

theorem spider_blast_immune (source victim : SolidThing) (damage : Int32) :
    radiusDamage source victim damage 7 = .ok 0 := by
  simp [radiusDamage]
  rfl

end LeanDoomProofs
