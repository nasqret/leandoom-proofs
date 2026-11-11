import LeanDoomProofs.Passage
import Init.Data.Vector.Lemmas
namespace LeanDoomProofs
open Doom Lean Meta Elab Tactic
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000

elab "combat_expand_rhs" : tactic => do
  let g ← getMainGoal
  g.withContext do
    let some (_, lhs, rhs) := (← whnf (← g.getType)).eq? | throwError "equality expected"
    let info ← getConstInfoDefn rhs.getAppFn.constName!
    let target ← mkEq lhs (info.value.beta rhs.getAppArgs)
    let next ← mkFreshExprSyntheticOpaqueMVar target
    g.assign next
    replaceMainGoal [next.mvarId!]

theorem combat_dite_equality {α : Type} {p : Prop} [Decidable p]
    {x : α} {f : p → α} {g : ¬p → α}
    (yes : ∀ h, x = f h) (no : ∀ h, x = g h) : x = dite p f g := by
  by_cases h : p
  · rw [dif_pos h]; exact yes h
  · rw [dif_neg h]; exact no h

def combat_fineSine_chunk0 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine0"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range0 (i : Nat) (hlo : 0 ≤ i) (hhi : i < 256) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk0[i-0]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk1 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine1"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range1 (i : Nat) (hlo : 256 ≤ i) (hhi : i < 512) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk1[i-256]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk2 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine2"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range2 (i : Nat) (hlo : 512 ≤ i) (hhi : i < 768) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk2[i-512]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk3 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine3"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range3 (i : Nat) (hlo : 768 ≤ i) (hhi : i < 1024) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk3[i-768]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk4 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine4"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range4 (i : Nat) (hlo : 1024 ≤ i) (hhi : i < 1280) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk4[i-1024]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk5 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine5"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range5 (i : Nat) (hlo : 1280 ≤ i) (hhi : i < 1536) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk5[i-1280]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk6 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine6"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range6 (i : Nat) (hlo : 1536 ≤ i) (hhi : i < 1792) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk6[i-1536]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk7 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine7"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range7 (i : Nat) (hlo : 1792 ≤ i) (hhi : i < 2048) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk7[i-1792]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk8 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine8"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range8 (i : Nat) (hlo : 2048 ≤ i) (hhi : i < 2304) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk8[i-2048]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk9 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine9"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range9 (i : Nat) (hlo : 2304 ≤ i) (hhi : i < 2560) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk9[i-2304]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk10 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine10"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range10 (i : Nat) (hlo : 2560 ≤ i) (hhi : i < 2816) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk10[i-2560]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk11 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine11"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range11 (i : Nat) (hlo : 2816 ≤ i) (hhi : i < 3072) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk11[i-2816]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk12 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine12"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range12 (i : Nat) (hlo : 3072 ≤ i) (hhi : i < 3328) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk12[i-3072]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk13 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine13"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range13 (i : Nat) (hlo : 3328 ≤ i) (hhi : i < 3584) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk13[i-3328]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk14 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine14"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range14 (i : Nat) (hlo : 3584 ≤ i) (hhi : i < 3840) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk14[i-3584]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk15 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine15"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range15 (i : Nat) (hlo : 3840 ≤ i) (hhi : i < 4096) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk15[i-3840]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk16 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine16"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range16 (i : Nat) (hlo : 4096 ≤ i) (hhi : i < 4352) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk16[i-4096]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk17 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine17"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range17 (i : Nat) (hlo : 4352 ≤ i) (hhi : i < 4608) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk17[i-4352]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk18 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine18"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range18 (i : Nat) (hlo : 4608 ≤ i) (hhi : i < 4864) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk18[i-4608]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk19 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine19"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range19 (i : Nat) (hlo : 4864 ≤ i) (hhi : i < 5120) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk19[i-4864]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk20 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine20"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range20 (i : Nat) (hlo : 5120 ≤ i) (hhi : i < 5376) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk20[i-5120]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk21 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine21"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range21 (i : Nat) (hlo : 5376 ≤ i) (hhi : i < 5632) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk21[i-5376]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk22 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine22"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range22 (i : Nat) (hlo : 5632 ≤ i) (hhi : i < 5888) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk22[i-5632]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk23 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine23"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range23 (i : Nat) (hlo : 5888 ≤ i) (hhi : i < 6144) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk23[i-5888]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk24 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine24"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range24 (i : Nat) (hlo : 6144 ≤ i) (hhi : i < 6400) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk24[i-6144]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk25 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine25"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range25 (i : Nat) (hlo : 6400 ≤ i) (hhi : i < 6656) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk25[i-6400]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk26 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine26"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range26 (i : Nat) (hlo : 6656 ≤ i) (hhi : i < 6912) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk26[i-6656]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk27 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine27"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range27 (i : Nat) (hlo : 6912 ≤ i) (hhi : i < 7168) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk27[i-6912]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk28 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine28"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range28 (i : Nat) (hlo : 7168 ≤ i) (hhi : i < 7424) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk28[i-7168]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk29 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine29"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range29 (i : Nat) (hlo : 7424 ≤ i) (hhi : i < 7680) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk29[i-7424]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk30 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine30"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range30 (i : Nat) (hlo : 7680 ≤ i) (hhi : i < 7936) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk30[i-7680]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk31 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine31"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range31 (i : Nat) (hlo : 7936 ≤ i) (hhi : i < 8192) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk31[i-7936]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk32 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine32"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range32 (i : Nat) (hlo : 8192 ≤ i) (hhi : i < 8448) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk32[i-8192]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk33 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine33"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range33 (i : Nat) (hlo : 8448 ≤ i) (hhi : i < 8704) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk33[i-8448]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk34 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine34"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range34 (i : Nat) (hlo : 8704 ≤ i) (hhi : i < 8960) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk34[i-8704]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk35 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine35"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range35 (i : Nat) (hlo : 8960 ≤ i) (hhi : i < 9216) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk35[i-8960]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk36 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine36"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range36 (i : Nat) (hlo : 9216 ≤ i) (hhi : i < 9472) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk36[i-9216]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk37 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine37"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range37 (i : Nat) (hlo : 9472 ≤ i) (hhi : i < 9728) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk37[i-9472]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk38 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine38"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range38 (i : Nat) (hlo : 9728 ≤ i) (hhi : i < 9984) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk38[i-9728]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_chunk39 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineSine39"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineSine_range39 (i : Nat) (hlo : 9984 ≤ i) (hhi : i < 10240) :
    Tables.fineSine[i]'(by omega) = combat_fineSine_chunk39[i-9984]'(by omega) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineSine_lookup (i : Fin 10240) : Int32 :=
  if h : i.val < 256 then combat_fineSine_chunk0[i.val-0]'(by have := i.isLt; omega) else
  if h : i.val < 512 then combat_fineSine_chunk1[i.val-256]'(by have := i.isLt; omega) else
  if h : i.val < 768 then combat_fineSine_chunk2[i.val-512]'(by have := i.isLt; omega) else
  if h : i.val < 1024 then combat_fineSine_chunk3[i.val-768]'(by have := i.isLt; omega) else
  if h : i.val < 1280 then combat_fineSine_chunk4[i.val-1024]'(by have := i.isLt; omega) else
  if h : i.val < 1536 then combat_fineSine_chunk5[i.val-1280]'(by have := i.isLt; omega) else
  if h : i.val < 1792 then combat_fineSine_chunk6[i.val-1536]'(by have := i.isLt; omega) else
  if h : i.val < 2048 then combat_fineSine_chunk7[i.val-1792]'(by have := i.isLt; omega) else
  if h : i.val < 2304 then combat_fineSine_chunk8[i.val-2048]'(by have := i.isLt; omega) else
  if h : i.val < 2560 then combat_fineSine_chunk9[i.val-2304]'(by have := i.isLt; omega) else
  if h : i.val < 2816 then combat_fineSine_chunk10[i.val-2560]'(by have := i.isLt; omega) else
  if h : i.val < 3072 then combat_fineSine_chunk11[i.val-2816]'(by have := i.isLt; omega) else
  if h : i.val < 3328 then combat_fineSine_chunk12[i.val-3072]'(by have := i.isLt; omega) else
  if h : i.val < 3584 then combat_fineSine_chunk13[i.val-3328]'(by have := i.isLt; omega) else
  if h : i.val < 3840 then combat_fineSine_chunk14[i.val-3584]'(by have := i.isLt; omega) else
  if h : i.val < 4096 then combat_fineSine_chunk15[i.val-3840]'(by have := i.isLt; omega) else
  if h : i.val < 4352 then combat_fineSine_chunk16[i.val-4096]'(by have := i.isLt; omega) else
  if h : i.val < 4608 then combat_fineSine_chunk17[i.val-4352]'(by have := i.isLt; omega) else
  if h : i.val < 4864 then combat_fineSine_chunk18[i.val-4608]'(by have := i.isLt; omega) else
  if h : i.val < 5120 then combat_fineSine_chunk19[i.val-4864]'(by have := i.isLt; omega) else
  if h : i.val < 5376 then combat_fineSine_chunk20[i.val-5120]'(by have := i.isLt; omega) else
  if h : i.val < 5632 then combat_fineSine_chunk21[i.val-5376]'(by have := i.isLt; omega) else
  if h : i.val < 5888 then combat_fineSine_chunk22[i.val-5632]'(by have := i.isLt; omega) else
  if h : i.val < 6144 then combat_fineSine_chunk23[i.val-5888]'(by have := i.isLt; omega) else
  if h : i.val < 6400 then combat_fineSine_chunk24[i.val-6144]'(by have := i.isLt; omega) else
  if h : i.val < 6656 then combat_fineSine_chunk25[i.val-6400]'(by have := i.isLt; omega) else
  if h : i.val < 6912 then combat_fineSine_chunk26[i.val-6656]'(by have := i.isLt; omega) else
  if h : i.val < 7168 then combat_fineSine_chunk27[i.val-6912]'(by have := i.isLt; omega) else
  if h : i.val < 7424 then combat_fineSine_chunk28[i.val-7168]'(by have := i.isLt; omega) else
  if h : i.val < 7680 then combat_fineSine_chunk29[i.val-7424]'(by have := i.isLt; omega) else
  if h : i.val < 7936 then combat_fineSine_chunk30[i.val-7680]'(by have := i.isLt; omega) else
  if h : i.val < 8192 then combat_fineSine_chunk31[i.val-7936]'(by have := i.isLt; omega) else
  if h : i.val < 8448 then combat_fineSine_chunk32[i.val-8192]'(by have := i.isLt; omega) else
  if h : i.val < 8704 then combat_fineSine_chunk33[i.val-8448]'(by have := i.isLt; omega) else
  if h : i.val < 8960 then combat_fineSine_chunk34[i.val-8704]'(by have := i.isLt; omega) else
  if h : i.val < 9216 then combat_fineSine_chunk35[i.val-8960]'(by have := i.isLt; omega) else
  if h : i.val < 9472 then combat_fineSine_chunk36[i.val-9216]'(by have := i.isLt; omega) else
  if h : i.val < 9728 then combat_fineSine_chunk37[i.val-9472]'(by have := i.isLt; omega) else
  if h : i.val < 9984 then combat_fineSine_chunk38[i.val-9728]'(by have := i.isLt; omega) else
  combat_fineSine_chunk39[i.val-9984]'(by have := i.isLt; omega)

theorem combat_fineSine_lookup_eq (i : Fin 10240) :
    Tables.fineSine.get i = combat_fineSine_lookup i := by
  have ht := i.isLt
  combat_expand_rhs
  apply combat_dite_equality
  · intro h0
    exact combat_fineSine_range0 i.val (by omega) (by omega)
  · intro hn0
    apply combat_dite_equality
    · intro h1
      exact combat_fineSine_range1 i.val (by omega) (by omega)
    · intro hn1
      apply combat_dite_equality
      · intro h2
        exact combat_fineSine_range2 i.val (by omega) (by omega)
      · intro hn2
        apply combat_dite_equality
        · intro h3
          exact combat_fineSine_range3 i.val (by omega) (by omega)
        · intro hn3
          apply combat_dite_equality
          · intro h4
            exact combat_fineSine_range4 i.val (by omega) (by omega)
          · intro hn4
            apply combat_dite_equality
            · intro h5
              exact combat_fineSine_range5 i.val (by omega) (by omega)
            · intro hn5
              apply combat_dite_equality
              · intro h6
                exact combat_fineSine_range6 i.val (by omega) (by omega)
              · intro hn6
                apply combat_dite_equality
                · intro h7
                  exact combat_fineSine_range7 i.val (by omega) (by omega)
                · intro hn7
                  apply combat_dite_equality
                  · intro h8
                    exact combat_fineSine_range8 i.val (by omega) (by omega)
                  · intro hn8
                    apply combat_dite_equality
                    · intro h9
                      exact combat_fineSine_range9 i.val (by omega) (by omega)
                    · intro hn9
                      apply combat_dite_equality
                      · intro h10
                        exact combat_fineSine_range10 i.val (by omega) (by omega)
                      · intro hn10
                        apply combat_dite_equality
                        · intro h11
                          exact combat_fineSine_range11 i.val (by omega) (by omega)
                        · intro hn11
                          apply combat_dite_equality
                          · intro h12
                            exact combat_fineSine_range12 i.val (by omega) (by omega)
                          · intro hn12
                            apply combat_dite_equality
                            · intro h13
                              exact combat_fineSine_range13 i.val (by omega) (by omega)
                            · intro hn13
                              apply combat_dite_equality
                              · intro h14
                                exact combat_fineSine_range14 i.val (by omega) (by omega)
                              · intro hn14
                                apply combat_dite_equality
                                · intro h15
                                  exact combat_fineSine_range15 i.val (by omega) (by omega)
                                · intro hn15
                                  apply combat_dite_equality
                                  · intro h16
                                    exact combat_fineSine_range16 i.val (by omega) (by omega)
                                  · intro hn16
                                    apply combat_dite_equality
                                    · intro h17
                                      exact combat_fineSine_range17 i.val (by omega) (by omega)
                                    · intro hn17
                                      apply combat_dite_equality
                                      · intro h18
                                        exact combat_fineSine_range18 i.val (by omega) (by omega)
                                      · intro hn18
                                        apply combat_dite_equality
                                        · intro h19
                                          exact combat_fineSine_range19 i.val (by omega) (by omega)
                                        · intro hn19
                                          apply combat_dite_equality
                                          · intro h20
                                            exact combat_fineSine_range20 i.val (by omega) (by omega)
                                          · intro hn20
                                            apply combat_dite_equality
                                            · intro h21
                                              exact combat_fineSine_range21 i.val (by omega) (by omega)
                                            · intro hn21
                                              apply combat_dite_equality
                                              · intro h22
                                                exact combat_fineSine_range22 i.val (by omega) (by omega)
                                              · intro hn22
                                                apply combat_dite_equality
                                                · intro h23
                                                  exact combat_fineSine_range23 i.val (by omega) (by omega)
                                                · intro hn23
                                                  apply combat_dite_equality
                                                  · intro h24
                                                    exact combat_fineSine_range24 i.val (by omega) (by omega)
                                                  · intro hn24
                                                    apply combat_dite_equality
                                                    · intro h25
                                                      exact combat_fineSine_range25 i.val (by omega) (by omega)
                                                    · intro hn25
                                                      apply combat_dite_equality
                                                      · intro h26
                                                        exact combat_fineSine_range26 i.val (by omega) (by omega)
                                                      · intro hn26
                                                        apply combat_dite_equality
                                                        · intro h27
                                                          exact combat_fineSine_range27 i.val (by omega) (by omega)
                                                        · intro hn27
                                                          apply combat_dite_equality
                                                          · intro h28
                                                            exact combat_fineSine_range28 i.val (by omega) (by omega)
                                                          · intro hn28
                                                            apply combat_dite_equality
                                                            · intro h29
                                                              exact combat_fineSine_range29 i.val (by omega) (by omega)
                                                            · intro hn29
                                                              apply combat_dite_equality
                                                              · intro h30
                                                                exact combat_fineSine_range30 i.val (by omega) (by omega)
                                                              · intro hn30
                                                                apply combat_dite_equality
                                                                · intro h31
                                                                  exact combat_fineSine_range31 i.val (by omega) (by omega)
                                                                · intro hn31
                                                                  apply combat_dite_equality
                                                                  · intro h32
                                                                    exact combat_fineSine_range32 i.val (by omega) (by omega)
                                                                  · intro hn32
                                                                    apply combat_dite_equality
                                                                    · intro h33
                                                                      exact combat_fineSine_range33 i.val (by omega) (by omega)
                                                                    · intro hn33
                                                                      apply combat_dite_equality
                                                                      · intro h34
                                                                        exact combat_fineSine_range34 i.val (by omega) (by omega)
                                                                      · intro hn34
                                                                        apply combat_dite_equality
                                                                        · intro h35
                                                                          exact combat_fineSine_range35 i.val (by omega) (by omega)
                                                                        · intro hn35
                                                                          apply combat_dite_equality
                                                                          · intro h36
                                                                            exact combat_fineSine_range36 i.val (by omega) (by omega)
                                                                          · intro hn36
                                                                            apply combat_dite_equality
                                                                            · intro h37
                                                                              exact combat_fineSine_range37 i.val (by omega) (by omega)
                                                                            · intro hn37
                                                                              apply combat_dite_equality
                                                                              · intro h38
                                                                                exact combat_fineSine_range38 i.val (by omega) (by omega)
                                                                              · intro hn38
                                                                                exact combat_fineSine_range39 i.val (by omega) (by omega)
attribute [cbv_eval] combat_fineSine_lookup_eq

def combat_tanToAngle_chunk0 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle0"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range0 (i : Nat) (hlo : 0 ≤ i) (hhi : i < 256) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk0[i-0]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk1 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle1"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range1 (i : Nat) (hlo : 256 ≤ i) (hhi : i < 512) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk1[i-256]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk2 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle2"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range2 (i : Nat) (hlo : 512 ≤ i) (hhi : i < 768) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk2[i-512]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk3 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle3"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range3 (i : Nat) (hlo : 768 ≤ i) (hhi : i < 1024) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk3[i-768]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk4 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle4"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range4 (i : Nat) (hlo : 1024 ≤ i) (hhi : i < 1280) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk4[i-1024]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk5 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle5"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range5 (i : Nat) (hlo : 1280 ≤ i) (hhi : i < 1536) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk5[i-1280]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk6 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle6"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range6 (i : Nat) (hlo : 1536 ≤ i) (hhi : i < 1792) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk6[i-1536]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk7 : Vector UInt32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle7"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range7 (i : Nat) (hlo : 1792 ≤ i) (hhi : i < 2048) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk7[i-1792]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_chunk8 : Vector UInt32 1 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.tanToAngle8"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_tanToAngle_range8 (i : Nat) (hlo : 2048 ≤ i) (hhi : i < 2049) :
    Tables.tanToAngle[i]'(by omega) = combat_tanToAngle_chunk8[i-2048]'(by omega) := by
  unfold Tables.tanToAngle
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_tanToAngle_lookup (i : Fin 2049) : UInt32 :=
  if h : i.val < 256 then combat_tanToAngle_chunk0[i.val-0]'(by have := i.isLt; omega) else
  if h : i.val < 512 then combat_tanToAngle_chunk1[i.val-256]'(by have := i.isLt; omega) else
  if h : i.val < 768 then combat_tanToAngle_chunk2[i.val-512]'(by have := i.isLt; omega) else
  if h : i.val < 1024 then combat_tanToAngle_chunk3[i.val-768]'(by have := i.isLt; omega) else
  if h : i.val < 1280 then combat_tanToAngle_chunk4[i.val-1024]'(by have := i.isLt; omega) else
  if h : i.val < 1536 then combat_tanToAngle_chunk5[i.val-1280]'(by have := i.isLt; omega) else
  if h : i.val < 1792 then combat_tanToAngle_chunk6[i.val-1536]'(by have := i.isLt; omega) else
  if h : i.val < 2048 then combat_tanToAngle_chunk7[i.val-1792]'(by have := i.isLt; omega) else
  combat_tanToAngle_chunk8[i.val-2048]'(by have := i.isLt; omega)

theorem combat_tanToAngle_lookup_eq (i : Fin 2049) :
    Tables.tanToAngle.get i = combat_tanToAngle_lookup i := by
  have ht := i.isLt
  combat_expand_rhs
  apply combat_dite_equality
  · intro h0
    exact combat_tanToAngle_range0 i.val (by omega) (by omega)
  · intro hn0
    apply combat_dite_equality
    · intro h1
      exact combat_tanToAngle_range1 i.val (by omega) (by omega)
    · intro hn1
      apply combat_dite_equality
      · intro h2
        exact combat_tanToAngle_range2 i.val (by omega) (by omega)
      · intro hn2
        apply combat_dite_equality
        · intro h3
          exact combat_tanToAngle_range3 i.val (by omega) (by omega)
        · intro hn3
          apply combat_dite_equality
          · intro h4
            exact combat_tanToAngle_range4 i.val (by omega) (by omega)
          · intro hn4
            apply combat_dite_equality
            · intro h5
              exact combat_tanToAngle_range5 i.val (by omega) (by omega)
            · intro hn5
              apply combat_dite_equality
              · intro h6
                exact combat_tanToAngle_range6 i.val (by omega) (by omega)
              · intro hn6
                apply combat_dite_equality
                · intro h7
                  exact combat_tanToAngle_range7 i.val (by omega) (by omega)
                · intro hn7
                  exact combat_tanToAngle_range8 i.val (by omega) (by omega)
attribute [cbv_eval] combat_tanToAngle_lookup_eq

def combat_fineTangent_chunk0 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent0"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range0 (i : Nat) (hlo : 0 ≤ i) (hhi : i < 256) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk0[i-0]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk1 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent1"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range1 (i : Nat) (hlo : 256 ≤ i) (hhi : i < 512) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk1[i-256]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk2 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent2"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range2 (i : Nat) (hlo : 512 ≤ i) (hhi : i < 768) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk2[i-512]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk3 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent3"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range3 (i : Nat) (hlo : 768 ≤ i) (hhi : i < 1024) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk3[i-768]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk4 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent4"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range4 (i : Nat) (hlo : 1024 ≤ i) (hhi : i < 1280) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk4[i-1024]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk5 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent5"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range5 (i : Nat) (hlo : 1280 ≤ i) (hhi : i < 1536) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk5[i-1280]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk6 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent6"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range6 (i : Nat) (hlo : 1536 ≤ i) (hhi : i < 1792) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk6[i-1536]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk7 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent7"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range7 (i : Nat) (hlo : 1792 ≤ i) (hhi : i < 2048) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk7[i-1792]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk8 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent8"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range8 (i : Nat) (hlo : 2048 ≤ i) (hhi : i < 2304) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk8[i-2048]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk9 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent9"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range9 (i : Nat) (hlo : 2304 ≤ i) (hhi : i < 2560) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk9[i-2304]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk10 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent10"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range10 (i : Nat) (hlo : 2560 ≤ i) (hhi : i < 2816) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk10[i-2560]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk11 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent11"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range11 (i : Nat) (hlo : 2816 ≤ i) (hhi : i < 3072) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk11[i-2816]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk12 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent12"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range12 (i : Nat) (hlo : 3072 ≤ i) (hhi : i < 3328) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk12[i-3072]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk13 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent13"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range13 (i : Nat) (hlo : 3328 ≤ i) (hhi : i < 3584) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk13[i-3328]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk14 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent14"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range14 (i : Nat) (hlo : 3584 ≤ i) (hhi : i < 3840) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk14[i-3584]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_chunk15 : Vector Int32 256 := by
  run_tac do
    let entries := (← Lean.getEnv).constants.toList.filter fun (name,_) =>
      name.toString.endsWith "Doom.Tables.fineTangent15"
    let [entry] := entries | throwError "expected one frozen table chunk"
    let g ← getMainGoal
    g.assign (mkConst entry.1)
    replaceMainGoal []

theorem combat_fineTangent_range15 (i : Nat) (hlo : 3840 ≤ i) (hhi : i < 4096) :
    Tables.fineTangent[i]'(by omega) = combat_fineTangent_chunk15[i-3840]'(by omega) := by
  unfold Tables.fineTangent
  repeat rw [Vector.getElem_append_left (by omega)]
  try rw [Vector.getElem_append_right (by omega) (by omega)]
  rfl

def combat_fineTangent_lookup (i : Fin 4096) : Int32 :=
  if h : i.val < 256 then combat_fineTangent_chunk0[i.val-0]'(by have := i.isLt; omega) else
  if h : i.val < 512 then combat_fineTangent_chunk1[i.val-256]'(by have := i.isLt; omega) else
  if h : i.val < 768 then combat_fineTangent_chunk2[i.val-512]'(by have := i.isLt; omega) else
  if h : i.val < 1024 then combat_fineTangent_chunk3[i.val-768]'(by have := i.isLt; omega) else
  if h : i.val < 1280 then combat_fineTangent_chunk4[i.val-1024]'(by have := i.isLt; omega) else
  if h : i.val < 1536 then combat_fineTangent_chunk5[i.val-1280]'(by have := i.isLt; omega) else
  if h : i.val < 1792 then combat_fineTangent_chunk6[i.val-1536]'(by have := i.isLt; omega) else
  if h : i.val < 2048 then combat_fineTangent_chunk7[i.val-1792]'(by have := i.isLt; omega) else
  if h : i.val < 2304 then combat_fineTangent_chunk8[i.val-2048]'(by have := i.isLt; omega) else
  if h : i.val < 2560 then combat_fineTangent_chunk9[i.val-2304]'(by have := i.isLt; omega) else
  if h : i.val < 2816 then combat_fineTangent_chunk10[i.val-2560]'(by have := i.isLt; omega) else
  if h : i.val < 3072 then combat_fineTangent_chunk11[i.val-2816]'(by have := i.isLt; omega) else
  if h : i.val < 3328 then combat_fineTangent_chunk12[i.val-3072]'(by have := i.isLt; omega) else
  if h : i.val < 3584 then combat_fineTangent_chunk13[i.val-3328]'(by have := i.isLt; omega) else
  if h : i.val < 3840 then combat_fineTangent_chunk14[i.val-3584]'(by have := i.isLt; omega) else
  combat_fineTangent_chunk15[i.val-3840]'(by have := i.isLt; omega)

theorem combat_fineTangent_lookup_eq (i : Fin 4096) :
    Tables.fineTangent.get i = combat_fineTangent_lookup i := by
  have ht := i.isLt
  combat_expand_rhs
  apply combat_dite_equality
  · intro h0
    exact combat_fineTangent_range0 i.val (by omega) (by omega)
  · intro hn0
    apply combat_dite_equality
    · intro h1
      exact combat_fineTangent_range1 i.val (by omega) (by omega)
    · intro hn1
      apply combat_dite_equality
      · intro h2
        exact combat_fineTangent_range2 i.val (by omega) (by omega)
      · intro hn2
        apply combat_dite_equality
        · intro h3
          exact combat_fineTangent_range3 i.val (by omega) (by omega)
        · intro hn3
          apply combat_dite_equality
          · intro h4
            exact combat_fineTangent_range4 i.val (by omega) (by omega)
          · intro hn4
            apply combat_dite_equality
            · intro h5
              exact combat_fineTangent_range5 i.val (by omega) (by omega)
            · intro hn5
              apply combat_dite_equality
              · intro h6
                exact combat_fineTangent_range6 i.val (by omega) (by omega)
              · intro hn6
                apply combat_dite_equality
                · intro h7
                  exact combat_fineTangent_range7 i.val (by omega) (by omega)
                · intro hn7
                  apply combat_dite_equality
                  · intro h8
                    exact combat_fineTangent_range8 i.val (by omega) (by omega)
                  · intro hn8
                    apply combat_dite_equality
                    · intro h9
                      exact combat_fineTangent_range9 i.val (by omega) (by omega)
                    · intro hn9
                      apply combat_dite_equality
                      · intro h10
                        exact combat_fineTangent_range10 i.val (by omega) (by omega)
                      · intro hn10
                        apply combat_dite_equality
                        · intro h11
                          exact combat_fineTangent_range11 i.val (by omega) (by omega)
                        · intro hn11
                          apply combat_dite_equality
                          · intro h12
                            exact combat_fineTangent_range12 i.val (by omega) (by omega)
                          · intro hn12
                            apply combat_dite_equality
                            · intro h13
                              exact combat_fineTangent_range13 i.val (by omega) (by omega)
                            · intro hn13
                              apply combat_dite_equality
                              · intro h14
                                exact combat_fineTangent_range14 i.val (by omega) (by omega)
                              · intro hn14
                                exact combat_fineTangent_range15 i.val (by omega) (by omega)
attribute [cbv_eval] combat_fineTangent_lookup_eq

end LeanDoomProofs
