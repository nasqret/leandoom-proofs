import LeanDoomProofs.CombatData.Block000
import LeanDoomProofs.CombatData.Block002
import LeanDoomProofs.CombatData.Block006
import LeanDoomProofs.CombatData.Block009
import LeanDoomProofs.CombatData.Block013
import LeanDoomProofs.CombatData.Block021
import LeanDoomProofs.CombatData.Block034
import LeanDoomProofs.CombatData.Block035
import LeanDoomProofs.CombatData.Block044
import LeanDoomProofs.Passage

/-! Observations of proposed checkpoints. CombatPassage connects these exact
states to the actual spawn by kernel-checked complete transitions. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000

/-- The real map spawn, not a manually initialized combat state. -/
theorem twoImp_spawn : twoImpStart = .ok twoImp_state_0 := by doom_kernel_rfl

def combatInitialProfile (s : Simulation) : Prop :=
  s.combatEnabled = true ∧ s.audio = none ∧
  s.inventory.health = 100 ∧ s.inventory.bullets = 50 ∧
  s.ticks = 0 ∧ s.shots = 0 ∧ s.kills = 0 ∧
  s.actors.size = 2 ∧
  s.actors.all (fun a => a.kind == 3001 && a.imp.isSome && a.health > 0) = true

def combatFinalProfile (s : Simulation) : Prop :=
  s.exitRequested = true ∧ s.physicsError = none ∧
  s.inventory.health = 52 ∧ s.inventory.bullets = 38 ∧
  s.inventory.blue = true ∧ s.ticks = 386 ∧ s.shots = 12 ∧
  s.kills = 2 ∧ s.deathStats[0].kills = 2 ∧
  (s.actors.map (·.health)) = #[0,0]

theorem twoImp_initial_profile : combatInitialProfile twoImp_state_0 := by
  unfold combatInitialProfile
  decide +kernel

theorem twoImp_final_profile : combatFinalProfile twoImp_state_386 := by
  unfold combatFinalProfile
  decide +kernel

theorem twoImp_attack_26 : combatAttack twoImp_state_26 = true := by decide +kernel

theorem twoImp_attack_64 : combatAttack twoImp_state_64 = true := by decide +kernel

theorem twoImp_attack_301 : combatAttack twoImp_state_301 = true := by decide +kernel

theorem twoImp_first_kill : twoImp_state_87.kills = 1 ∧ twoImp_state_87.deathStats[0].kills = 1 := by
  decide +kernel

theorem twoImp_blue_key : twoImp_state_111.inventory.blue = true := by decide +kernel

theorem twoImp_door_started : twoImp_state_170.doors.size = 1 := by decide +kernel

theorem twoImp_second_kill : twoImp_state_310.kills = 2 ∧ twoImp_state_310.deathStats[0].kills = 2 := by
  decide +kernel

end LeanDoomProofs
