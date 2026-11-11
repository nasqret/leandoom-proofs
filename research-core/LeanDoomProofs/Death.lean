import Doom.DeathData
import LeanDoomProofs.Trace

set_option maxRecDepth 8192
set_option maxHeartbeats 1000000

namespace LeanDoomProofs
open Doom

/-- Actual imp death table: lethal health is supplied by the damage caller. -/
def deadImp (health : Int32) : Death.Body := {
  kind := 3001, health, flags := 4194310,
  height := Fixed.ofInt 56,
  info := ⟨60,457,462,"bgdth1",4194310⟩ }

def killImp (health : Int32) : Except String (Death.Body × Death.World) :=
  Death.kill Death.frames (deadImp health) { source := some (some 0) }

/-- Observe the genuine state-table result, keeping all errors observable. -/
def deathSummary (result : Except String (Death.Body × Death.World))
    : Option (Nat × Int × Bool × Int × Int) := do
  let (body,world) ← result.toOption
  return (body.state, body.height.raw.toInt, body.flags &&& 4 != 0,
    world.players[0].kills.toInt, body.tics.toInt)

/-- 128 damage to a 60-HP imp gives health -68 and selects extreme death.
The corpse is immediately quarter-height and nonshootable; solidity is separate. -/
theorem barrel_center_extreme_death :
    deathSummary (killImp (-68)) = some (462,14*65536,false,1,5) := by
  decide +kernel

/-- 84 damage gives health -24 and selects normal death, also one credited kill. -/
theorem barrel_neighbor_normal_death :
    deathSummary (killImp (-24)) = some (457,14*65536,false,1,8) := by
  decide +kernel

/-- Overkill must strictly exceed the spawn health; equality is not extreme. -/
theorem extreme_death_boundary :
    (killImp (-60)).toOption.map (fun p => p.1.state) = some 457 ∧
    (killImp (-61)).toOption.map (fun p => p.1.state) = some 462 := by
  decide +kernel

/-- A dead imp initially still blocks motion until its A_Fall frame. -/
theorem imp_corpse_initially_solid :
    (killImp (-24)).toOption.map (fun p => p.1.flags &&& 2 != 0) = some true := by
  decide +kernel

def corpseSteps : Nat → Except String (Death.Body × Death.World) → Except String (Death.Body × Death.World)
  | 0, state => state
  | n+1, state => corpseSteps n (state.bind fun (b,w) => Death.tick Death.frames b w)

/-- The first normal corpse reaches A_Fall after 22 countdown tics for seed 0. -/
theorem imp_corpse_opens_after_22 :
    (corpseSteps 22 (killImp (-24))).toOption.map (fun p => (p.1.state, p.1.flags &&& 2 != 0)) =
      some (460,false) := by
  decide +kernel

theorem imp_corpse_blocks_at_21 :
    (corpseSteps 21 (killImp (-24))).toOption.map (fun p => p.1.flags &&& 2 != 0) = some true := by
  decide +kernel

/-- Every earlier countdown state is still solid, not just the last one. -/
theorem imp_corpse_blocks_before_22 :
    ∀ n : Fin 22,
      (corpseSteps n.val (killImp (-24))).toOption.map
        (fun p => p.1.flags &&& 2 != 0) = some true := by
  decide +kernel

/-- A sharp lower bound for this seed-0 corpse countdown. -/
theorem imp_corpse_clearance_lower_bound (n : Nat)
    (clear : (corpseSteps n (killImp (-24))).toOption.map
      (fun p => p.1.flags &&& 2 != 0) = some false) : 22 ≤ n := by
  have notSmall : ¬ n < 22 := by
    intro small
    have blocked := imp_corpse_blocks_before_22 ⟨n, small⟩
    rw [clear] at blocked
    contradiction
  omega

end LeanDoomProofs
