import LeanDoomProofs.ArenaSegments.Block000
import LeanDoomProofs.ArenaSegments.Block001
import LeanDoomProofs.ArenaSegments.Block002
import LeanDoomProofs.ArenaSegments.Block003
import LeanDoomProofs.ArenaSegments.Block004
import LeanDoomProofs.ArenaSegments.Block005
import LeanDoomProofs.ArenaSegments.Block006
import LeanDoomProofs.ArenaSegments.Block007
import LeanDoomProofs.ArenaSegments.Block008
import LeanDoomProofs.ArenaSegments.Block009
import LeanDoomProofs.ArenaSegments.Block010
import LeanDoomProofs.ArenaSegments.Block011
import LeanDoomProofs.ArenaSegments.Block012
import LeanDoomProofs.ArenaSegments.Block013
import LeanDoomProofs.ArenaSegments.Block014
import LeanDoomProofs.ArenaSegments.Block015
import LeanDoomProofs.ArenaSegments.Block016
import LeanDoomProofs.ArenaSegments.Block017
import LeanDoomProofs.ArenaSegments.Block018
import LeanDoomProofs.ArenaSegments.Block019
import LeanDoomProofs.ArenaSegments.Block020
import LeanDoomProofs.ArenaSegments.Block021
import LeanDoomProofs.ArenaSegments.Block022
import LeanDoomProofs.ArenaObservations

namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000

private theorem arena_prefix_1 :
    CombatSegment arena_state_0 (arenaInputs.take 1) arena_state_1 := by
  doom_kernel_exact arena_segment_000

private theorem arena_prefix_12 :
    CombatSegment arena_state_0 (arenaInputs.take 12) arena_state_12 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_1 arena_state_12
    (arenaInputs.take 1) arena_inputs_001 arena_prefix_1 arena_segment_001

private theorem arena_prefix_24 :
    CombatSegment arena_state_0 (arenaInputs.take 24) arena_state_24 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_12 arena_state_24
    (arenaInputs.take 12) arena_inputs_002 arena_prefix_12 arena_segment_002

private theorem arena_prefix_34 :
    CombatSegment arena_state_0 (arenaInputs.take 34) arena_state_34 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_24 arena_state_34
    (arenaInputs.take 24) arena_inputs_003 arena_prefix_24 arena_segment_003

private theorem arena_prefix_36 :
    CombatSegment arena_state_0 (arenaInputs.take 36) arena_state_36 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_34 arena_state_36
    (arenaInputs.take 34) arena_inputs_004 arena_prefix_34 arena_segment_004

private theorem arena_prefix_46 :
    CombatSegment arena_state_0 (arenaInputs.take 46) arena_state_46 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_36 arena_state_46
    (arenaInputs.take 36) arena_inputs_005 arena_prefix_36 arena_segment_005

private theorem arena_prefix_48 :
    CombatSegment arena_state_0 (arenaInputs.take 48) arena_state_48 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_46 arena_state_48
    (arenaInputs.take 46) arena_inputs_006 arena_prefix_46 arena_segment_006

private theorem arena_prefix_60 :
    CombatSegment arena_state_0 (arenaInputs.take 60) arena_state_60 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_48 arena_state_60
    (arenaInputs.take 48) arena_inputs_007 arena_prefix_48 arena_segment_007

private theorem arena_prefix_71 :
    CombatSegment arena_state_0 (arenaInputs.take 71) arena_state_71 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_60 arena_state_71
    (arenaInputs.take 60) arena_inputs_008 arena_prefix_60 arena_segment_008

private theorem arena_prefix_72 :
    CombatSegment arena_state_0 (arenaInputs.take 72) arena_state_72 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_71 arena_state_72
    (arenaInputs.take 71) arena_inputs_009 arena_prefix_71 arena_segment_009

private theorem arena_prefix_84 :
    CombatSegment arena_state_0 (arenaInputs.take 84) arena_state_84 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_72 arena_state_84
    (arenaInputs.take 72) arena_inputs_010 arena_prefix_72 arena_segment_010

private theorem arena_prefix_96 :
    CombatSegment arena_state_0 (arenaInputs.take 96) arena_state_96 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_84 arena_state_96
    (arenaInputs.take 84) arena_inputs_011 arena_prefix_84 arena_segment_011

private theorem arena_prefix_108 :
    CombatSegment arena_state_0 (arenaInputs.take 108) arena_state_108 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_96 arena_state_108
    (arenaInputs.take 96) arena_inputs_012 arena_prefix_96 arena_segment_012

private theorem arena_prefix_120 :
    CombatSegment arena_state_0 (arenaInputs.take 120) arena_state_120 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_108 arena_state_120
    (arenaInputs.take 108) arena_inputs_013 arena_prefix_108 arena_segment_013

private theorem arena_prefix_132 :
    CombatSegment arena_state_0 (arenaInputs.take 132) arena_state_132 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_120 arena_state_132
    (arenaInputs.take 120) arena_inputs_014 arena_prefix_120 arena_segment_014

private theorem arena_prefix_144 :
    CombatSegment arena_state_0 (arenaInputs.take 144) arena_state_144 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_132 arena_state_144
    (arenaInputs.take 132) arena_inputs_015 arena_prefix_132 arena_segment_015

private theorem arena_prefix_145 :
    CombatSegment arena_state_0 (arenaInputs.take 145) arena_state_145 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_144 arena_state_145
    (arenaInputs.take 144) arena_inputs_016 arena_prefix_144 arena_segment_016

private theorem arena_prefix_156 :
    CombatSegment arena_state_0 (arenaInputs.take 156) arena_state_156 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_145 arena_state_156
    (arenaInputs.take 145) arena_inputs_017 arena_prefix_145 arena_segment_017

private theorem arena_prefix_168 :
    CombatSegment arena_state_0 (arenaInputs.take 168) arena_state_168 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_156 arena_state_168
    (arenaInputs.take 156) arena_inputs_018 arena_prefix_156 arena_segment_018

private theorem arena_prefix_180 :
    CombatSegment arena_state_0 (arenaInputs.take 180) arena_state_180 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_168 arena_state_180
    (arenaInputs.take 168) arena_inputs_019 arena_prefix_168 arena_segment_019

private theorem arena_prefix_192 :
    CombatSegment arena_state_0 (arenaInputs.take 192) arena_state_192 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_180 arena_state_192
    (arenaInputs.take 180) arena_inputs_020 arena_prefix_180 arena_segment_020

private theorem arena_prefix_204 :
    CombatSegment arena_state_0 (arenaInputs.take 204) arena_state_204 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_192 arena_state_204
    (arenaInputs.take 192) arena_inputs_021 arena_prefix_192 arena_segment_021

private theorem arena_prefix_206 :
    CombatSegment arena_state_0 (arenaInputs.take 206) arena_state_206 := by
  doom_kernel_exact combat_segment_append arena_state_0 arena_state_204 arena_state_206
    (arenaInputs.take 204) arena_inputs_022 arena_prefix_204 arena_segment_022

/-- Full execution, including safety of the initial and final prefixes. -/
theorem arena_passage : CombatSegment arena_state_0 arenaInputs arena_state_206 := by
  doom_kernel_exact arena_prefix_206

theorem arena_reached_attack :
    combatAttack (run combatStep arena_state_0 (arenaInputs.take 46)) = true := by
  doom_kernel_exact Eq.trans (congrArg combatAttack arena_prefix_46.reaches) arena_attack

/-- Complete normal-spawn enemy-level passage in the explicit CombatV1 revision.
Every input is ordinary, every prefix survives, and all enemies are killed. -/
theorem arena_full_combat_passage :
    ∃ initial finish : Simulation,
      arenaStart = .ok initial ∧
      arenaInitialProfile initial ∧
      arenaInputs.length = 206 ∧
      (∀ key ∈ arenaInputs, ordinaryCombatInput key = true) ∧
      (∀ key ∈ arenaInputs, keyDown key 1024 = false) ∧
      CombatSegment initial arenaInputs finish ∧
      combatAttack (run combatStep initial (arenaInputs.take 46)) = true ∧
      arenaFinalProfile finish := by
  exact ⟨arena_state_0, arena_state_206, arena_spawn, arena_initial_profile,
    arena_inputs_length, arena_inputs_ordinary, arena_inputs_no_restart,
    arena_passage, arena_reached_attack, arena_final_profile⟩

#print axioms arena_full_combat_passage
end LeanDoomProofs
