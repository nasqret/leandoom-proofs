import E1M9MapLoaded
import E1M9TreeAccess
import LeanDoomProofs.CombatNormalizationV2
import LeanDoomProofs.Passage

open Doom LeanDoomProofs LeanDoomProofs.E1M9
namespace Campaign.MilitaryPlatform
set_option maxRecDepth 65536
set_option maxHeartbeats 12000000
set_option cbv.maxSteps 24000000
set_option Elab.async false

open Lean Meta Elab Tactic in
private def original (suffix : String) : TacticM (TSyntax `ident) := do
  let ds := (← getEnv).constants.toList.filter fun (n,_) => n.toString.endsWith suffix
  let [d] := ds | throwError "ambiguous original declaration {suffix}"
  pure (mkCIdent d.1)

/-- The imported Use dispatcher leaves geometry and floor thinkers intact. -/
theorem useTwenty (s : Simulation) (i : Nat) (h : s.map.lines[i]!.special = 20) :
    (activateImported s i).map = s.map ∧
    (activateImported s i).movers = s.movers ∧
    (activateImported s i).message = "Linedef special 20 is not implemented yet" := by
  unfold activateImported
  run_tac do
    let d ← original "Doom.Simulation.activate"
    let m ← original "Doom.manualDoor"
    let w ← original "Doom.doorSwitch"
    Lean.Elab.Tactic.evalTactic (← `(tactic| unfold $d))
    Lean.Elab.Tactic.evalTactic (← `(tactic| have hm : $m 20 = false := by decide +kernel))
    Lean.Elab.Tactic.evalTactic (← `(tactic| have hw : $w 20 = false := by decide +kernel))
  simp [*] <;> exact ⟨rfl,rfl,rfl⟩

def linkedSwitch (m : Doom.Map) : Nat × Nat × Nat :=
  (m.lines[567]!.special, m.lines[567]!.tag, m.sectors[17]!.tag)

theorem switchFields : linkedSwitch levelMap = (20,9,9) := by combatV2_certify

theorem parsedSwitch : (Doom.Map.load group "E1M9").map linkedSwitch = .ok (20,9,9) := by
  rw [map_loaded]
  exact congrArg Except.ok switchFields

def high (n : Nat) : Bool := [16,22,23,44,45,53].contains n

def boundary (m : Doom.Map) (i : Nat) : Bool := Id.run do
  let some l := m.lines[i]? | return false
  let some f := m.sides[l.front]? | return false
  let some b := m.sides[l.back]? | return false
  return high f.sector != high b.sector

def rise (m : Doom.Map) (i : Nat) : Option Int := do
  let l ← m.lines[i]?
  let f ← m.sides[l.front]?
  let b ← m.sides[l.back]?
  let a ← m.sectors[f.sector]?
  let c ← m.sectors[b.sector]?
  return if high f.sector then a.floor-c.floor else c.floor-a.floor

theorem measuredRises : [548,549,550].map (rise levelMap) = [some 88,some 88,some 88] := by
  combatV2_certify

theorem parsedRises : (Doom.Map.load group "E1M9").map
    (fun m => [548,549,550].map (rise m)) = .ok [some 88,some 88,some 88] := by
  rw [map_loaded]
  exact congrArg Except.ok measuredRises

end Campaign.MilitaryPlatform
