import LeanDoomProofs.ArenaData.Block000
import LeanDoomProofs.ArenaData.Block005
import LeanDoomProofs.ArenaData.Block022
import LeanDoomProofs.Passage

namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000

theorem arena_spawn : arenaStart = .ok arena_state_0 := by doom_kernel_rfl

def arenaInitialProfile (s : Simulation) : Prop :=
  s.combatEnabled = true ∧ s.audio = none ∧
  s.inventory.health = 100 ∧ s.inventory.bullets = 50 ∧
  s.inventory.shells = 0 ∧ s.inventory.weapons = #[0,1] ∧
  s.ticks = 0 ∧ s.shots = 0 ∧ s.kills = 0 ∧
  s.actors.size = 3 ∧
  s.actors.all (fun a => a.kind == 3001 && a.imp.isSome && a.health == 60) = true

def arenaFinalProfile (s : Simulation) : Prop :=
  s.exitRequested = true ∧ s.physicsError = none ∧
  s.inventory.health = 79 ∧ s.inventory.bullets = 50 ∧
  s.inventory.shells = 4 ∧ s.inventory.weapons.contains 2 = true ∧
  s.collected.contains 4 = true ∧
  s.ticks = 206 ∧ s.shots = 4 ∧
  s.kills = 3 ∧ s.deathStats[0].kills = 3 ∧
  s.actors.size = 3 ∧
  s.actors.all (fun a => a.health == 0 && a.death.isSome) = true

theorem arena_initial_profile : arenaInitialProfile arena_state_0 := by
  unfold arenaInitialProfile
  decide +kernel

theorem arena_final_profile : arenaFinalProfile arena_state_206 := by
  unfold arenaFinalProfile
  decide +kernel

theorem arena_attack : combatAttack arena_state_46 = true := by decide +kernel

theorem arena_inputs_length : arenaInputs.length = 206 := by decide +kernel

theorem arena_inputs_ordinary : ∀ key ∈ arenaInputs, ordinaryCombatInput key = true := by
  have h : arenaInputs.all ordinaryCombatInput = true := by decide +kernel
  exact List.all_eq_true.mp h

theorem arena_inputs_no_restart : ∀ key ∈ arenaInputs, keyDown key 1024 = false := by
  have h : arenaInputs.all (fun key => !keyDown key 1024) = true := by decide +kernel
  intro key hk
  have hk' := List.all_eq_true.mp h key hk
  cases hb : keyDown key 1024 <;> simp_all

theorem arena_map_valid : arenaMap.validate.isOk = true := by decide +kernel

end LeanDoomProofs
