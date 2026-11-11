import LeanDoomProofs.CombatSegments.Block000
import LeanDoomProofs.CombatSegments.Block001
import LeanDoomProofs.CombatSegments.Block002
import LeanDoomProofs.CombatSegments.Block003
import LeanDoomProofs.CombatSegments.Block004
import LeanDoomProofs.CombatSegments.Block005
import LeanDoomProofs.CombatSegments.Block006
import LeanDoomProofs.CombatSegments.Block007
import LeanDoomProofs.CombatSegments.Block008
import LeanDoomProofs.CombatSegments.Block009
import LeanDoomProofs.CombatSegments.Block010
import LeanDoomProofs.CombatSegments.Block011
import LeanDoomProofs.CombatSegments.Block012
import LeanDoomProofs.CombatSegments.Block013
import LeanDoomProofs.CombatSegments.Block014
import LeanDoomProofs.CombatSegments.Block015
import LeanDoomProofs.CombatSegments.Block016
import LeanDoomProofs.CombatSegments.Block017
import LeanDoomProofs.CombatSegments.Block018
import LeanDoomProofs.CombatSegments.Block019
import LeanDoomProofs.CombatSegments.Block020
import LeanDoomProofs.CombatSegments.Block021
import LeanDoomProofs.CombatSegments.Block022
import LeanDoomProofs.CombatSegments.Block023
import LeanDoomProofs.CombatSegments.Block024
import LeanDoomProofs.CombatSegments.Block025
import LeanDoomProofs.CombatSegments.Block026
import LeanDoomProofs.CombatSegments.Block027
import LeanDoomProofs.CombatSegments.Block028
import LeanDoomProofs.CombatSegments.Block029
import LeanDoomProofs.CombatSegments.Block030
import LeanDoomProofs.CombatSegments.Block031
import LeanDoomProofs.CombatSegments.Block032
import LeanDoomProofs.CombatSegments.Block033
import LeanDoomProofs.CombatSegments.Block034
import LeanDoomProofs.CombatSegments.Block035
import LeanDoomProofs.CombatSegments.Block036
import LeanDoomProofs.CombatSegments.Block037
import LeanDoomProofs.CombatSegments.Block038
import LeanDoomProofs.CombatSegments.Block039
import LeanDoomProofs.CombatSegments.Block040
import LeanDoomProofs.CombatSegments.Block041
import LeanDoomProofs.CombatSegments.Block042
import LeanDoomProofs.CombatSegments.Block043
import LeanDoomProofs.CombatSegments.Block044
import LeanDoomProofs.CombatObservations

namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000

private theorem twoImp_prefix_12 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 12) twoImp_state_12 := by
  doom_kernel_exact twoImp_segment_000

private theorem twoImp_prefix_24 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 24) twoImp_state_24 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_12 twoImp_state_24
    (twoImpInputs.take 12) twoImp_inputs_001 twoImp_prefix_12 twoImp_segment_001

private theorem twoImp_prefix_26 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 26) twoImp_state_26 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_24 twoImp_state_26
    (twoImpInputs.take 24) twoImp_inputs_002 twoImp_prefix_24 twoImp_segment_002

private theorem twoImp_prefix_36 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 36) twoImp_state_36 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_26 twoImp_state_36
    (twoImpInputs.take 26) twoImp_inputs_003 twoImp_prefix_26 twoImp_segment_003

private theorem twoImp_prefix_48 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 48) twoImp_state_48 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_36 twoImp_state_48
    (twoImpInputs.take 36) twoImp_inputs_004 twoImp_prefix_36 twoImp_segment_004

private theorem twoImp_prefix_60 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 60) twoImp_state_60 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_48 twoImp_state_60
    (twoImpInputs.take 48) twoImp_inputs_005 twoImp_prefix_48 twoImp_segment_005

private theorem twoImp_prefix_64 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 64) twoImp_state_64 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_60 twoImp_state_64
    (twoImpInputs.take 60) twoImp_inputs_006 twoImp_prefix_60 twoImp_segment_006

private theorem twoImp_prefix_72 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 72) twoImp_state_72 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_64 twoImp_state_72
    (twoImpInputs.take 64) twoImp_inputs_007 twoImp_prefix_64 twoImp_segment_007

private theorem twoImp_prefix_84 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 84) twoImp_state_84 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_72 twoImp_state_84
    (twoImpInputs.take 72) twoImp_inputs_008 twoImp_prefix_72 twoImp_segment_008

private theorem twoImp_prefix_87 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 87) twoImp_state_87 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_84 twoImp_state_87
    (twoImpInputs.take 84) twoImp_inputs_009 twoImp_prefix_84 twoImp_segment_009

private theorem twoImp_prefix_96 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 96) twoImp_state_96 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_87 twoImp_state_96
    (twoImpInputs.take 87) twoImp_inputs_010 twoImp_prefix_87 twoImp_segment_010

private theorem twoImp_prefix_101 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 101) twoImp_state_101 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_96 twoImp_state_101
    (twoImpInputs.take 96) twoImp_inputs_011 twoImp_prefix_96 twoImp_segment_011

private theorem twoImp_prefix_108 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 108) twoImp_state_108 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_101 twoImp_state_108
    (twoImpInputs.take 101) twoImp_inputs_012 twoImp_prefix_101 twoImp_segment_012

private theorem twoImp_prefix_111 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 111) twoImp_state_111 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_108 twoImp_state_111
    (twoImpInputs.take 108) twoImp_inputs_013 twoImp_prefix_108 twoImp_segment_013

private theorem twoImp_prefix_117 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 117) twoImp_state_117 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_111 twoImp_state_117
    (twoImpInputs.take 111) twoImp_inputs_014 twoImp_prefix_111 twoImp_segment_014

private theorem twoImp_prefix_120 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 120) twoImp_state_120 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_117 twoImp_state_120
    (twoImpInputs.take 117) twoImp_inputs_015 twoImp_prefix_117 twoImp_segment_015

private theorem twoImp_prefix_132 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 132) twoImp_state_132 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_120 twoImp_state_132
    (twoImpInputs.take 120) twoImp_inputs_016 twoImp_prefix_120 twoImp_segment_016

private theorem twoImp_prefix_144 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 144) twoImp_state_144 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_132 twoImp_state_144
    (twoImpInputs.take 132) twoImp_inputs_017 twoImp_prefix_132 twoImp_segment_017

private theorem twoImp_prefix_156 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 156) twoImp_state_156 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_144 twoImp_state_156
    (twoImpInputs.take 144) twoImp_inputs_018 twoImp_prefix_144 twoImp_segment_018

private theorem twoImp_prefix_168 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 168) twoImp_state_168 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_156 twoImp_state_168
    (twoImpInputs.take 156) twoImp_inputs_019 twoImp_prefix_156 twoImp_segment_019

private theorem twoImp_prefix_169 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 169) twoImp_state_169 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_168 twoImp_state_169
    (twoImpInputs.take 168) twoImp_inputs_020 twoImp_prefix_168 twoImp_segment_020

private theorem twoImp_prefix_170 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 170) twoImp_state_170 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_169 twoImp_state_170
    (twoImpInputs.take 169) twoImp_inputs_021 twoImp_prefix_169 twoImp_segment_021

private theorem twoImp_prefix_180 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 180) twoImp_state_180 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_170 twoImp_state_180
    (twoImpInputs.take 170) twoImp_inputs_022 twoImp_prefix_170 twoImp_segment_022

private theorem twoImp_prefix_192 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 192) twoImp_state_192 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_180 twoImp_state_192
    (twoImpInputs.take 180) twoImp_inputs_023 twoImp_prefix_180 twoImp_segment_023

private theorem twoImp_prefix_204 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 204) twoImp_state_204 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_192 twoImp_state_204
    (twoImpInputs.take 192) twoImp_inputs_024 twoImp_prefix_192 twoImp_segment_024

private theorem twoImp_prefix_216 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 216) twoImp_state_216 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_204 twoImp_state_216
    (twoImpInputs.take 204) twoImp_inputs_025 twoImp_prefix_204 twoImp_segment_025

private theorem twoImp_prefix_228 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 228) twoImp_state_228 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_216 twoImp_state_228
    (twoImpInputs.take 216) twoImp_inputs_026 twoImp_prefix_216 twoImp_segment_026

private theorem twoImp_prefix_235 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 235) twoImp_state_235 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_228 twoImp_state_235
    (twoImpInputs.take 228) twoImp_inputs_027 twoImp_prefix_228 twoImp_segment_027

private theorem twoImp_prefix_240 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 240) twoImp_state_240 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_235 twoImp_state_240
    (twoImpInputs.take 235) twoImp_inputs_028 twoImp_prefix_235 twoImp_segment_028

private theorem twoImp_prefix_252 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 252) twoImp_state_252 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_240 twoImp_state_252
    (twoImpInputs.take 240) twoImp_inputs_029 twoImp_prefix_240 twoImp_segment_029

private theorem twoImp_prefix_264 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 264) twoImp_state_264 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_252 twoImp_state_264
    (twoImpInputs.take 252) twoImp_inputs_030 twoImp_prefix_252 twoImp_segment_030

private theorem twoImp_prefix_276 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 276) twoImp_state_276 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_264 twoImp_state_276
    (twoImpInputs.take 264) twoImp_inputs_031 twoImp_prefix_264 twoImp_segment_031

private theorem twoImp_prefix_288 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 288) twoImp_state_288 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_276 twoImp_state_288
    (twoImpInputs.take 276) twoImp_inputs_032 twoImp_prefix_276 twoImp_segment_032

private theorem twoImp_prefix_300 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 300) twoImp_state_300 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_288 twoImp_state_300
    (twoImpInputs.take 288) twoImp_inputs_033 twoImp_prefix_288 twoImp_segment_033

private theorem twoImp_prefix_301 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 301) twoImp_state_301 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_300 twoImp_state_301
    (twoImpInputs.take 300) twoImp_inputs_034 twoImp_prefix_300 twoImp_segment_034

private theorem twoImp_prefix_310 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 310) twoImp_state_310 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_301 twoImp_state_310
    (twoImpInputs.take 301) twoImp_inputs_035 twoImp_prefix_301 twoImp_segment_035

private theorem twoImp_prefix_312 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 312) twoImp_state_312 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_310 twoImp_state_312
    (twoImpInputs.take 310) twoImp_inputs_036 twoImp_prefix_310 twoImp_segment_036

private theorem twoImp_prefix_315 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 315) twoImp_state_315 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_312 twoImp_state_315
    (twoImpInputs.take 312) twoImp_inputs_037 twoImp_prefix_312 twoImp_segment_037

private theorem twoImp_prefix_324 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 324) twoImp_state_324 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_315 twoImp_state_324
    (twoImpInputs.take 315) twoImp_inputs_038 twoImp_prefix_315 twoImp_segment_038

private theorem twoImp_prefix_336 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 336) twoImp_state_336 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_324 twoImp_state_336
    (twoImpInputs.take 324) twoImp_inputs_039 twoImp_prefix_324 twoImp_segment_039

private theorem twoImp_prefix_348 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 348) twoImp_state_348 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_336 twoImp_state_348
    (twoImpInputs.take 336) twoImp_inputs_040 twoImp_prefix_336 twoImp_segment_040

private theorem twoImp_prefix_360 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 360) twoImp_state_360 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_348 twoImp_state_360
    (twoImpInputs.take 348) twoImp_inputs_041 twoImp_prefix_348 twoImp_segment_041

private theorem twoImp_prefix_372 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 372) twoImp_state_372 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_360 twoImp_state_372
    (twoImpInputs.take 360) twoImp_inputs_042 twoImp_prefix_360 twoImp_segment_042

private theorem twoImp_prefix_384 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 384) twoImp_state_384 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_372 twoImp_state_384
    (twoImpInputs.take 372) twoImp_inputs_043 twoImp_prefix_372 twoImp_segment_043

private theorem twoImp_prefix_386 :
    CombatSegment twoImp_state_0 (twoImpInputs.take 386) twoImp_state_386 := by
  doom_kernel_exact combat_segment_append twoImp_state_0 twoImp_state_384 twoImp_state_386
    (twoImpInputs.take 384) twoImp_inputs_044 twoImp_prefix_384 twoImp_segment_044

/-- The full 386-tick execution, with safety at every prefix including zero. -/
theorem twoImp_passage : CombatSegment twoImp_state_0 twoImpInputs twoImp_state_386 := by
  doom_kernel_exact twoImp_prefix_386

/-- The attack is on the actual reachable trace, not just in a quoted state. -/
theorem twoImp_reached_attack :
    combatAttack (run combatStep twoImp_state_0 (twoImpInputs.take 26)) = true := by
  doom_kernel_exact Eq.trans (congrArg combatAttack twoImp_prefix_26.reaches) twoImp_attack_26

theorem twoImp_reached_first_kill :
    (run combatStep twoImp_state_0 (twoImpInputs.take 87)).kills = 1 := by
  doom_kernel_exact Eq.trans (congrArg Simulation.kills twoImp_prefix_87.reaches) twoImp_first_kill.1

theorem twoImp_reached_key :
    (run combatStep twoImp_state_0 (twoImpInputs.take 111)).inventory.blue = true := by
  doom_kernel_exact Eq.trans (congrArg (fun s : Simulation => s.inventory.blue) twoImp_prefix_111.reaches) twoImp_blue_key

theorem twoImp_reached_second_kill :
    (run combatStep twoImp_state_0 (twoImpInputs.take 310)).deathStats[0].kills = 2 := by
  doom_kernel_exact Eq.trans (congrArg (fun s : Simulation => s.deathStats[0].kills) twoImp_prefix_310.reaches) twoImp_second_kill.2

/-- A complete passage of TWOIMP01 under the explicitly versioned CombatV1
engine: real combat spawn, ordinary inputs, every prefix alive/error-free,
actual enemy attack, two credited kills and ordinary exit with exact resources. -/
theorem twoImp_full_combat_passage :
    ∃ initial finish : Simulation,
      twoImpStart = .ok initial ∧
      combatInitialProfile initial ∧
      twoImpInputs.length = 386 ∧
      (∀ key ∈ twoImpInputs, ordinaryCombatInput key = true) ∧
      (∀ key ∈ twoImpInputs, keyDown key 1024 = false) ∧
      CombatSegment initial twoImpInputs finish ∧
      combatAttack (run combatStep initial (twoImpInputs.take 26)) = true ∧
      (run combatStep initial (twoImpInputs.take 310)).deathStats[0].kills = 2 ∧
      combatFinalProfile finish := by
  exact ⟨twoImp_state_0, twoImp_state_386, twoImp_spawn, twoImp_initial_profile,
    twoImp_inputs_length, twoImp_inputs_ordinary, twoImp_inputs_no_restart,
    twoImp_passage, twoImp_reached_attack, twoImp_reached_second_kill, twoImp_final_profile⟩

#print axioms twoImp_full_combat_passage
end LeanDoomProofs
