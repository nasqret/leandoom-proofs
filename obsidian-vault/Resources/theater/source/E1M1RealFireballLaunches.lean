import E1M1Joined611
import E1M1Joined837
import E1M1Joined886
import E1M1Joined935

open Doom LeanDoomProofs
namespace LeanDoomProofs.HangarLaunches

/-- Snapshot the counts before and after the tick, its launch events, and the new body's source and flight status. -/
def launchView (slot : Nat) (before after : Simulation) : Nat × Nat × List (Nat × Nat × Nat) × Nat × Bool :=
  let spawns := after.projectileEvents.toList.filterMap fun (index,e) => match e with
    | .spawn shooter target => some (index,shooter,target)
    | _ => none
  let body := after.projectiles[slot]!
  (before.projectiles.size, after.projectiles.size, spawns, body.source, !body.removed && !body.exploding)

theorem launch611 :
    launchView 0 E1M1FullRoute.state610 (E1M1FullRoute.state610.tickCombatV2 546 true) = (0, 1, [(0, 9, 0)], 9, true) := by
  rw [e1m1RouteEdge610]
  decide +kernel

theorem launch837 :
    launchView 1 E1M1FullRoute.state836 (E1M1FullRoute.state836.tickCombatV2 578 true) = (1, 2, [(1, 17, 0)], 17, true) := by
  rw [e1m1RouteEdge836]
  decide +kernel

theorem launch886 :
    launchView 2 E1M1FullRoute.state885 (E1M1FullRoute.state885.tickCombatV2 514 true) = (2, 3, [(2, 17, 0)], 17, true) := by
  rw [e1m1RouteEdge885]
  decide +kernel

theorem launch935 :
    launchView 3 E1M1FullRoute.state934 (E1M1FullRoute.state934.tickCombatV2 514 true) = (3, 4, [(3, 17, 0)], 17, true) := by
  rw [e1m1RouteEdge934]
  decide +kernel

theorem four_real_fireball_launches :
    [
      launchView 0 E1M1FullRoute.state610 (E1M1FullRoute.state610.tickCombatV2 546 true),
      launchView 1 E1M1FullRoute.state836 (E1M1FullRoute.state836.tickCombatV2 578 true),
      launchView 2 E1M1FullRoute.state885 (E1M1FullRoute.state885.tickCombatV2 514 true),
      launchView 3 E1M1FullRoute.state934 (E1M1FullRoute.state934.tickCombatV2 514 true)] =
    [(0, 1, [(0, 9, 0)], 9, true), (1, 2, [(1, 17, 0)], 17, true), (2, 3, [(2, 17, 0)], 17, true), (3, 4, [(3, 17, 0)], 17, true)] := by
  rw [launch611, launch837, launch886, launch935]

#print axioms four_real_fireball_launches
end LeanDoomProofs.HangarLaunches
