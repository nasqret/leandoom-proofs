import LeanDoomProofs.FreshStart
import LeanDoomProofs.Exit
import Lean
import Init.Data.Vector.Lemmas
/-!
# A complete synthetic-level passage

The final certificates use the frozen imported `Simulation.spawn` and the whole
`Simulation.tick`, with one ordinary use input. Combat is explicitly disabled.
`checkpoint` is proposed data, then proved equal to the actual successful spawn.
Every factored interface has a kernel-checked bridge to the imported definition.
The helper elaborators below construct ordinary proof terms; they add no axioms.
-/
namespace LeanDoomProofs
open Doom Doom.Collision Fixtures
set_option maxRecDepth 8192
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000

-- These elaborators avoid expensive speculative conversion on closed game
-- states. `doom_kernel_rfl` emits Eq.refl; `doom_kernel_exact` emits a supplied
-- proof term. The kernel still checks each declaration, including conversion.
open Lean Meta Elab Tactic in
elab "doom_kernel_rfl" : tactic => do
  let goal ← getMainGoal
  goal.withContext do
    let target ← goal.getType
    let some (_, _, rhs) := target.eq? | throwError "equality expected"
    goal.assign (← mkEqRefl rhs)
  replaceMainGoal []

open Lean Meta Elab Tactic in
elab "doom_kernel_exact " term:term : tactic => do
  let goal ← getMainGoal
  goal.withContext do
    goal.assign (← Elab.Term.elabTerm term none)
  replaceMainGoal []

local instance passageExceptDecidableEq {ε α : Type} [DecidableEq ε] [DecidableEq α] : DecidableEq (Except ε α) :=
  fun x y => match x, y with
    | .ok a, .ok b => if h : a = b then isTrue (by cases h; rfl) else isFalse (by intro e; cases e; exact h rfl)
    | .error a, .error b => if h : a = b then isTrue (by cases h; rfl) else isFalse (by intro e; cases e; exact h rfl)
    | .ok _, .error _ => isFalse (by intro h; cases h)
    | .error _, .ok _ => isFalse (by intro h; cases h)


def roomLines : Array Line := #[
 { x := Fixed.ofInt (-64), y := Fixed.ofInt (-64), dx := Fixed.ofInt 0, dy := Fixed.ofInt 128,
   bbox := ⟨Fixed.ofInt 64,Fixed.ofInt (-64),Fixed.ofInt (-64),Fixed.ofInt (-64)⟩,
   slope := .vertical, front := ⟨Fixed.ofInt 0,Fixed.ofInt 128⟩, blocking := true },
 { x := Fixed.ofInt (-64), y := Fixed.ofInt 64, dx := Fixed.ofInt 128, dy := Fixed.ofInt 0,
   bbox := ⟨Fixed.ofInt 64,Fixed.ofInt 64,Fixed.ofInt (-64),Fixed.ofInt 64⟩,
   slope := .horizontal, front := ⟨Fixed.ofInt 0,Fixed.ofInt 128⟩, blocking := true },
 { x := Fixed.ofInt 64, y := Fixed.ofInt 64, dx := Fixed.ofInt 0, dy := Fixed.ofInt (-128),
   bbox := ⟨Fixed.ofInt 64,Fixed.ofInt (-64),Fixed.ofInt 64,Fixed.ofInt 64⟩,
   slope := .vertical, front := ⟨Fixed.ofInt 0,Fixed.ofInt 128⟩, blocking := true, special := true },
 { x := Fixed.ofInt 64, y := Fixed.ofInt (-64), dx := Fixed.ofInt (-128), dy := Fixed.ofInt 0,
   bbox := ⟨Fixed.ofInt (-64),Fixed.ofInt (-64),Fixed.ofInt (-64),Fixed.ofInt 64⟩,
   slope := .horizontal, front := ⟨Fixed.ofInt 0,Fixed.ofInt 128⟩, blocking := true }]

def roomPlayer : SolidThing := {
 x := Fixed.ofInt 32, y := Fixed.ofInt 0, radius := Fixed.ofInt 16,
 health := 100, shootable := true, canPickup := true, moveFlags := {dropoff := true} }

def roomDummy : SolidThing := {
 kind := 1, x := Fixed.ofInt 32, y := Fixed.ofInt 0,
 radius := Fixed.ofInt 0, height := Fixed.ofInt 0, solid := false,
 moveFlags := {noSector := true, noBlockmap := true} }

def roomScene (lighting : Option SectorLights.World := none) : Scene := {
 grid := exitRoom.blockmap, lines := roomLines,
 things := #[roomPlayer,roomDummy], links := #[#[],#[],#[],#[0]],
 sectors := #[⟨Fixed.ofInt 0, Fixed.ofInt 128⟩], sectorLinks := #[#[0]],
 pickupPlayer := some {actor := 0, profile := {commercial := false}}, lighting }

def checkpoint : Simulation := {
 map := exitRoom, original := exitRoom, soundTargets := #[none],
 player := {
   camera := ⟨Fixed.ofInt 32, Fixed.ofInt 0, Fixed.ofInt 41, ⟨0⟩⟩,
   feet := (Fixed.ofInt 0).toFloat,
   body := {x := Fixed.ofInt 32}, view := {z := Fixed.ofInt 41},
   mapActors := exitRoom.things,
   scene := some (roomScene none) } }

theorem table_sine_zero : Tables.fineSine[0] = (25 : Int32) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by decide)]
  decide +kernel

theorem table_cosine_zero : Tables.fineSine[2048] = (65535 : Int32) := by
  unfold Tables.fineSine
  repeat rw [Vector.getElem_append_left (by decide)]
  rw [Vector.getElem_append_right (by decide) (by decide)]
  decide +kernel

theorem sine_lookup_zero :
    Tables.fineSine.get ⟨0, by decide⟩ = (25 : Int32) := table_sine_zero

theorem sine_lookup_quarter :
    Tables.fineSine.get ⟨2048, by decide⟩ = (65535 : Int32) := table_cosine_zero

theorem angle_sine_zero : (⟨0⟩ : Angle).fineSine = ⟨25⟩ := by
  change (⟨Tables.fineSine[0]⟩ : Fixed) = ⟨25⟩
  rw [table_sine_zero]

theorem angle_cosine_zero : (⟨0⟩ : Angle).fineCosine = ⟨65535⟩ := by
  change (⟨Tables.fineSine[2048]⟩ : Fixed) = ⟨65535⟩
  rw [table_cosine_zero]


deriving instance DecidableEq for Divline

deriving instance DecidableEq for Intercept

deriving instance DecidableEq for PathResult

deriving instance DecidableEq for UseAction

deriving instance DecidableEq for UseResult

def roomUseResult : UseResult := {
 action := .special 2 false,
 path := {
  completed := false,
  trace := ⟨⟨2097152⟩, ⟨65536⟩, ⟨4194240⟩, ⟨-63936⟩⟩,
  blocks := #[(true,1,1)],
  collected := #[⟨⟨32768⟩,true,2⟩],
  visited := #[⟨⟨32768⟩,true,2⟩] } }

-- A factored interface, with a definitional bridge to the imported use routine.
def rayWithTrig (scene : Scene) (x y : Fixed) (cosine sine : Int32) : Except String UseResult := do
  let endX := x + (⟨64 * cosine⟩ : Fixed)
  let endY := y + (⟨64 * sine⟩ : Fixed)
  let openLine (line : Line) : Bool := match line.back with
    | none => false
    | some back => (min line.front.ceiling.raw back.ceiling.raw - max line.front.floor.raw back.floor.raw) > 0
  let path ← scene.pathTraverse x y endX endY 1 fun hit _ =>
    let line := scene.lines[hit.id]!
    !line.special && openLine line
  let action := match path.visited.back? with
    | none => UseAction.nothing
    | some hit =>
      let line := scene.lines[hit.id]!
      if line.special then .special hit.id (line.pointSide x y)
      else if !openLine line then .blocked else .nothing
  return ⟨action,path⟩

theorem useLines_as_ray (scene : Scene) (x y : Fixed) (a : Angle) :
    scene.useLines x y a = rayWithTrig scene x y a.fineCosine.raw a.fineSine.raw := by
  doom_kernel_rfl

theorem room_ray_none :
    rayWithTrig (roomScene none) (Fixed.ofInt 32) (Fixed.ofInt 0) 65535 25 = .ok roomUseResult := by
  decide +kernel

theorem room_ray (lighting : Option SectorLights.World) :
    rayWithTrig (roomScene lighting) (Fixed.ofInt 32) (Fixed.ofInt 0) 65535 25 = .ok roomUseResult := by
  doom_kernel_exact room_ray_none

theorem room_use_lines (lighting : Option SectorLights.World) :
    (roomScene lighting).useLines (Fixed.ofInt 32) (Fixed.ofInt 0) ⟨0⟩ = .ok roomUseResult := by
  rw [useLines_as_ray, angle_cosine_zero, angle_sine_zero]
  exact room_ray lighting

theorem view_sine :
    Tables.fineSine.get ⟨(ViewState.bobIndex 0).val,
      by have h := (ViewState.bobIndex 0).isLt; omega⟩ = (25 : Int32) := by
  doom_kernel_exact sine_lookup_zero

theorem room_view : checkpoint.player.view.calcHeight checkpoint.player.body 0 true = checkpoint.player.view := by
  unfold ViewState.calcHeight
  dsimp only
  rw [view_sine]
  doom_kernel_rfl

theorem checkpoint_is_spawn : passiveStart = .ok checkpoint := by
  doom_kernel_rfl

def playerAfter (lighting : Option SectorLights.World) (v : ViewState) : Player := {
 checkpoint.player with
 inventory := Inventory.fromPickup {},
 camera := ⟨Fixed.ofInt 32, Fixed.ofInt 0, v.z, ⟨0⟩⟩,
 velocityZ := (⟨0⟩ : Fixed).toFloat,
 view := v,
 scene := some (roomScene lighting),
 levelTime := 1 }

theorem room_player_formula (lighting : Option SectorLights.World) :
    Player.tick exitRoom checkpoint.player 4096 #[] lighting =
      .ok (playerAfter lighting (checkpoint.player.view.calcHeight checkpoint.player.body 0 true)) := by
  doom_kernel_rfl

theorem room_player_tick (lighting : Option SectorLights.World) :
    Player.tick exitRoom checkpoint.player 4096 #[] lighting =
      .ok (playerAfter lighting checkpoint.player.view) := by
  rw [room_player_formula, room_view]

def roomLighting : SectorLights.World := { map := exitRoom }

def beforeUse (v : ViewState) : Simulation := {
 checkpoint with
 ticks := 1, messageTicks := 174,
 player := playerAfter (some roomLighting) v,
 inventory := Inventory.fromPickup {} }

-- Factor one call out of the imported definition. The bridge below is checked.
def interactionWithUse (useFn : Simulation → Simulation) : Simulation → UInt32 → Bool → Simulation := by
  run_tac do
    let goal ← Lean.Elab.Tactic.getMainGoal
    goal.withContext do
      let f ← Lean.Elab.Term.elabTerm (Lean.mkIdent `useFn) none
      let info ← Lean.getConstInfoDefn ``Simulation.interactionTick
      let body := info.value.replace fun e =>
        if e.isConstOf ``Simulation.use then some f else none
      goal.assign body
    Lean.Elab.Tactic.replaceMainGoal []

theorem interactionWithUse_original :
    interactionWithUse Simulation.use = @Simulation.interactionTick := by
  doom_kernel_rfl

theorem room_interaction_using (useFn : Simulation → Simulation) :
    interactionWithUse useFn checkpoint 4096 true =
      { useFn (beforeUse (checkpoint.player.view.calcHeight checkpoint.player.body 0 true)) with useHeld := true } := by
  doom_kernel_rfl

theorem room_interaction_formula :
    checkpoint.interactionTick 4096 =
      { (beforeUse (checkpoint.player.view.calcHeight checkpoint.player.body 0 true)).use with useHeld := true } := by
  have h := room_interaction_using Simulation.use
  rw [interactionWithUse_original] at h
  exact h

theorem room_interaction_tick :
    checkpoint.interactionTick 4096 = { (beforeUse checkpoint.player.view).use with useHeld := true } := by
  rw [room_interaction_formula, room_view]

theorem room_syncScene (v : ViewState) :
    (beforeUse v).player.syncScene (beforeUse v).map = .ok (roomScene (some roomLighting)) := by
  doom_kernel_rfl

def queryUse (s : Simulation) : Except String UseResult := do
  let scene ← s.player.syncScene s.map
  scene.useLines s.player.body.x s.player.body.y s.player.body.angle

-- A typed alias for the pinned engine's private dispatch function.
def activateImported : Simulation → Nat → Simulation := by
  run_tac do
    let goal ← Lean.Elab.Tactic.getMainGoal
    let env ← Lean.getEnv
    let entries := env.constants.toList.filter (fun (name, _) =>
      name.toString.endsWith "Doom.Simulation.activate")
    let [entry] := entries | throwError "expected exactly one imported activation"
    goal.assign (Lean.mkConst entry.1)
    Lean.Elab.Tactic.replaceMainGoal []

def dispatchUse (s : Simulation) (r : Except String UseResult) : Simulation :=
  match r with
  | .error error => { s with physicsError := some error }
  | .ok result => match result.action with
    | .nothing => { s with message := "Nothing in reach", messageTicks := 105 }
    | .blocked => { s.sound "noway" with message := "Cannot use through this wall", messageTicks := 105 }
    | .special index back =>
      if back then { s with message := "Cannot use this wall", messageTicks := 105 }
      else activateImported s index

theorem use_as_dispatch (s : Simulation) : s.use = dispatchUse s (queryUse s) := by
  doom_kernel_rfl

theorem queryUse_of_sync (s : Simulation) (scene : Scene)
    (hs : s.player.syncScene s.map = .ok scene) :
    queryUse s = scene.useLines s.player.body.x s.player.body.y s.player.body.angle := by
  unfold queryUse
  rewrite [hs]
  doom_kernel_rfl

theorem room_query_equation (v : ViewState) :
    queryUse (beforeUse v) =
      (roomScene (some roomLighting)).useLines (Fixed.ofInt 32) (Fixed.ofInt 0) ⟨0⟩ := by
  doom_kernel_exact (queryUse_of_sync (beforeUse v) (roomScene (some roomLighting)) (room_syncScene v))

theorem room_queryUse (v : ViewState) : queryUse (beforeUse v) = .ok roomUseResult :=
  Eq.trans (room_query_equation v) (room_use_lines (some roomLighting))

theorem room_use_formula (v : ViewState) :
    (beforeUse v).use = activateImported (beforeUse v) 2 := by
  calc
    (beforeUse v).use = dispatchUse (beforeUse v) (queryUse (beforeUse v)) := use_as_dispatch _
    _ = dispatchUse (beforeUse v) (.ok roomUseResult) := congrArg (dispatchUse (beforeUse v)) (room_queryUse v)
    _ = activateImported (beforeUse v) 2 := by doom_kernel_rfl

theorem room_interaction_for_tick :
    checkpoint.interactionTick 4096 (true && decide (checkpoint.inventory.health > 0)) =
      { (beforeUse checkpoint.player.view).use with useHeld := true } := by
  doom_kernel_exact room_interaction_tick

def observations (s : Simulation) : Bool × Option String × Nat × Nat × Nat × Nat :=
  (s.exitRequested, s.physicsError, s.inventory.health, s.ticks, s.shots, s.inventory.bullets)

def tickWithInteraction (interactionFn : Simulation → UInt32 → Bool → Simulation) :
    Simulation → UInt32 → Bool → Simulation := by
  run_tac do
    let goal ← Lean.Elab.Tactic.getMainGoal
    goal.withContext do
      let f ← Lean.Elab.Term.elabTerm (Lean.mkIdent `interactionFn) none
      let info ← Lean.getConstInfoDefn ``Simulation.tick
      let body := info.value.replace fun e =>
        if e.isConstOf ``Simulation.interactionTick then some f else none
      goal.assign body
    Lean.Elab.Tactic.replaceMainGoal []

theorem tickWithInteraction_original :
    tickWithInteraction (@Simulation.interactionTick) = @Simulation.tick := by
  doom_kernel_rfl

theorem tickWithInteraction_congr
    (f g : Simulation → UInt32 → Bool → Simulation)
    (h : ∀ b, f checkpoint 4096 b = g checkpoint 4096 b) :
    tickWithInteraction f checkpoint 4096 true = tickWithInteraction g checkpoint 4096 true := by
  unfold tickWithInteraction
  simp only [h]

def completedInteraction : Simulation :=
  { (activateImported (beforeUse checkpoint.player.view) 2) with useHeld := true }

theorem room_interaction_complete :
    checkpoint.interactionTick 4096 true = completedInteraction :=
  Eq.trans room_interaction_tick
    (congrArg (fun s : Simulation => { s with useHeld := true }) (room_use_formula checkpoint.player.view))

def proposedInteraction (_ : Simulation) (_ : UInt32) (walking : Bool) : Simulation :=
  if walking then completedInteraction else checkpoint.interactionTick 4096 false

theorem bool_replace_true {S : Type} (f : Bool → S) (x : S) (h : f true = x) (b : Bool) :
    f b = (if b then x else f false) := by
  cases b
  · rfl
  · exact h

theorem room_interaction_pointwise (walking : Bool) :
    checkpoint.interactionTick 4096 walking = proposedInteraction checkpoint 4096 walking := by
  doom_kernel_exact (bool_replace_true (fun b => checkpoint.interactionTick 4096 b)
    completedInteraction room_interaction_complete walking)

theorem room_tick_rewrite :
    checkpoint.tick 4096 = tickWithInteraction proposedInteraction checkpoint 4096 true := by
  have h := tickWithInteraction_congr (@Simulation.interactionTick) proposedInteraction room_interaction_pointwise
  rewrite [tickWithInteraction_original] at h
  exact h

theorem room_tick_tail_observations :
    observations (tickWithInteraction proposedInteraction checkpoint 4096 true) = (true, none, 100, 1, 0, 50) := by
  decide +kernel

theorem room_tick_observations :
    observations (checkpoint.tick 4096) = (true, none, 100, 1, 0, 50) :=
  Eq.trans (congrArg observations room_tick_rewrite) room_tick_tail_observations

/-! ## Public passage contract and its concrete witness -/

/-- An error result cannot satisfy the passage-safety contract. -/
def safeResult : Except String Simulation → Prop
  | .error _ => False
  | .ok s => s.physicsError = none ∧ 0 < s.inventory.health

/-- The whole script: one ordinary use input, with no restart or attack. -/
def proof01Inputs : List UInt32 := [4096]

/-- Decode observations on a variable before instantiating a large game term. -/
theorem observations_certificate (s : Simulation)
    (h : observations s = (true, none, 100, 1, 0, 50)) :
    s.exitRequested = true ∧ s.physicsError = none ∧
    s.inventory.health = 100 ∧ s.ticks = 1 ∧ s.shots = 0 ∧
    s.inventory.bullets = 50 := by
  simpa only [observations, Prod.mk.injEq] using h

theorem proof01_final_state :
    run resultTick passiveStart proof01Inputs = .ok (checkpoint.tick 4096) := by
  doom_kernel_exact (congrArg (fun r => resultTick r 4096) checkpoint_is_spawn)

theorem safe_of_observations (s : Simulation)
    (h : observations s = (true, none, 100, 1, 0, 50)) : safeResult (.ok s) := by
  obtain ⟨_, he, hh, _⟩ := observations_certificate s h
  exact ⟨he, by rw [hh]; decide⟩

theorem won_of_observations (s : Simulation)
    (h : observations s = (true, none, 100, 1, 0, 50)) : won (.ok s) = true := by
  obtain ⟨hx, he, _⟩ := observations_certificate s h
  simp only [won, hx, he, Option.isNone_none, Bool.and_self]

theorem proof01_start_safe : safeResult passiveStart := by
  rw [checkpoint_is_spawn]
  exact ⟨rfl, by decide⟩

theorem proof01_final_safe : safeResult (run resultTick passiveStart proof01Inputs) := by
  rw [proof01_final_state]
  exact safe_of_observations _ room_tick_observations

/-- Prove the prefix argument generically, avoiding reduction of a closed tick. -/
theorem singleton_prefix_safe {S A : Type} (step : S → A → S)
    (s : S) (a : A) (P : S → Prop) (h0 : P s) (h1 : P (step s a)) (j : Nat) :
    P (run step s ([a].take j)) := by
  cases j with
  | zero => exact h0
  | succ j => simpa only [List.take_succ_cons, List.take_nil, run_cons, run_nil] using h1

/-- Every prefix, including the initial state, is alive and error-free. -/
theorem proof01_prefix_safe (j : Nat) :
    safeResult (run resultTick passiveStart (proof01Inputs.take j)) := by
  doom_kernel_exact (singleton_prefix_safe resultTick passiveStart 4096 safeResult
    proof01_start_safe proof01_final_safe j)

theorem proof01_inputs_ordinary :
    ∀ k ∈ proof01Inputs, k = 4096 ∧ keyDown k 1024 = false := by
  intro k hk
  have hk' : k = 4096 := by simpa only [proof01Inputs, List.mem_singleton] using hk
  subst k
  exact ⟨rfl, by decide +kernel⟩

/-- The actual spawn and complete game tick reach the implemented exit goal. -/
theorem proof01_wins : won (run resultTick passiveStart proof01Inputs) = true := by
  rw [proof01_final_state]
  exact won_of_observations _ room_tick_observations

/-- This is the original micro-room question, now proved rather than evaluated. -/
theorem proof01_afterUse_wins : won afterUse = true := by
  doom_kernel_exact proof01_wins

/-- A concrete passage theorem: legal input, every prefix safe, and final victory. -/
theorem proof01_passage :
    (∀ k ∈ proof01Inputs, k = 4096 ∧ keyDown k 1024 = false) ∧
    (∀ j, j ≤ proof01Inputs.length →
      safeResult (run resultTick passiveStart (proof01Inputs.take j))) ∧
    won (run resultTick passiveStart proof01Inputs) = true :=
  ⟨proof01_inputs_ordinary, fun j _ => proof01_prefix_safe j, proof01_wins⟩

/-- Every winning trace from this real spawn needs at least the witness length. -/
theorem proof01_time_optimal (actions : List UInt32)
    (wins : won (run resultTick passiveStart actions) = true) :
    proof01Inputs.length ≤ actions.length := by
  exact fresh_win_needs_input exitRoom actions wins

/-- Resource observations at the actual final state, not at a proposed checkpoint. -/
theorem proof01_resource_certificate :
    ∃ s, run resultTick passiveStart proof01Inputs = .ok s ∧
      s.exitRequested = true ∧ s.physicsError = none ∧ s.inventory.health = 100 ∧
      s.ticks = 1 ∧ s.shots = 0 ∧ s.inventory.bullets = 50 :=
  ⟨checkpoint.tick 4096, proof01_final_state,
    observations_certificate _ room_tick_observations⟩

/-- After the proved exit, arbitrarily many non-restart inputs preserve the
exit, elapsed tick count, map identity, and complete inventory. -/
theorem proof01_forever_exited (actions : List UInt32)
    (noRestart : ∀ k ∈ actions, keyDown k 1024 = false) :
    let s := run (fun s k => s.tick k) (checkpoint.tick 4096) actions
    s.exitRequested = true ∧ s.ticks = 1 ∧ s.original = (checkpoint.tick 4096).original ∧
    s.inventory.health = 100 ∧ s.inventory.bullets = 50 := by
  obtain ⟨hx, _, hh, ht, _, hb⟩ := observations_certificate _ room_tick_observations
  obtain ⟨ex, ticks, original, inv⟩ := exited_trace_preserves _ actions hx noRestart
  exact ⟨ex, ticks.trans ht, original, (congrArg Inventory.health inv).trans hh,
    (congrArg Inventory.bullets inv).trans hb⟩

end LeanDoomProofs
