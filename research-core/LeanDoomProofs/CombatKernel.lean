import LeanDoomProofs.CombatNormalization
import LeanDoomProofs.CombatTables
import LeanDoomProofs.CombatArithmetic
import Lean.Util.ShareCommon
import Lean.Meta.Tactic.Cbv.CbvEvalExt
import Lean.Meta.Tactic.Cbv.Opaque
/-! Kernel-checked evaluation interfaces and certificate construction.
The chosen representatives are proved equal to the original engine functions.
They prevent accidental definitional execution during proof checking; explicit
proved equations drive evaluation instead. See the combat-passage book chapter.
This module does not change the executable engine or its transition relation. -/
namespace LeanDoomProofs
open Doom Lean Meta Elab Tactic
set_option maxRecDepth 32768
set_option Elab.async false
set_option maxHeartbeats 2000000
set_option cbv.maxSteps 100000
attribute [local cbv_opaque] Float.ofNat Float.ofScientific Float.ofBits Fixed.toFloat Tables.fineSine Tables.tanToAngle Tables.fineTangent
attribute [local cbv_eval] Nat.zero_mul Nat.mul_zero Nat.zero_add Nat.add_zero
/-- A value with a propositional, rather than definitional, evaluation interface. -/
noncomputable def combatSeal {α : Sort u} (a : α) : α :=
  Classical.choose (show ∃ b : α, b = a from ⟨a, rfl⟩)

theorem combatSeal_eq {α : Sort u} (a : α) : combatSeal a = a :=
  Classical.choose_spec (show ∃ b : α, b = a from ⟨a, rfl⟩)

run_cmd Lean.Elab.Command.liftTermElabM do
  let mut selected := #[``Player.tick, ``Simulation.interactionTick,
    ``Player.syncScene, ``Collision.Scene.lineAttack,
    ``Collision.Scene.aimLineAttack, ``Collision.Scene.bulletAim]
  for suffix in #["Doom.Simulation.weaponTickCombatV1", "Doom.Simulation.fireGunCombatV1",
      "Doom.Simulation.shootCombatV1", "Doom.Simulation.hurtActorCombatV1"] do
    let names := (← getEnv).constants.toList.filterMap fun (name,_) =>
      if name.toString.endsWith suffix then some name else none
    let [name] := names | throwError "ambiguous operation: {suffix}"
    selected := selected.push name
  let rules := selected ++ #[``combat_tickWithActor, ``combat_tickNormalized]
  let mut replacements : Array (Name × Name) := #[]
  for old in selected do
    let info ← getConstInfoDefn old
    unless info.levelParams.isEmpty do throwError "unexpected polymorphic game function"
    let name := `CombatSealed ++ old
    let u ← getLevel info.type
    let value := mkApp2 (mkConst ``combatSeal [u]) info.type (mkConst old)
    addDecl <| Declaration.defnDecl {
      name := name
      levelParams := []
      type := info.type
      value := value
      hints := .opaque
      safety := .safe
    }
    let eqName := name ++ `sealEquation
    let ty ← mkEq (mkConst name) (mkConst old)
    let proof := mkApp2 (mkConst ``combatSeal_eq [u]) info.type (mkConst old)
    addDecl (.thmDecl {name := eqName, levelParams := [], type := ty, value := proof})
    replacements := replacements.push (old,name)
    Lean.Meta.Tactic.Cbv.cbvOpaqueExt.add name .global
  for old in rules do
    let info ← getConstInfoDefn old
    forallTelescope info.type fun xs _ => do
      let body := info.value.beta xs
      let sealedBody := body.replace fun e =>
        if let .const name levels := e then
          if let some pair := replacements.find? (·.1 == name) then
            some (mkConst pair.2 levels)
          else none
        else none
      let mut current := sealedBody
      let mut resultProof ← mkEqRefl current
      for (original,sealedName) in replacements do
        let fnType := (← getConstInfo sealedName).type
        let step ← withLocalDeclD `operation fnType fun operation => do
          let schema := current.replace fun e =>
            if e.isConstOf sealedName then some operation else none
          let schema ← mkLambdaFVars #[operation] schema
          mkCongrArg schema (mkConst (sealedName ++ `sealEquation))
        resultProof ← mkEqTrans resultProof step
        current := current.replace fun e =>
          if e.isConstOf sealedName then some (mkConst original) else none
      let lhs := mkAppN (mkConst old) xs
      let unfolded ← mkEqRefl body
      let originalTy ← mkEq lhs body
      let unfolded := mkExpectedPropHint unfolded originalTy
      let proof ← mkEqTrans unfolded (← mkEqSymm resultProof)
      let ty ← mkEq lhs sealedBody
      let ty ← mkForallFVars xs ty
      let proof ← mkLambdaFVars xs proof
      let name ← mkAuxLemma [] ty proof (kind? := some `combatSealedRule)
      Lean.Meta.Tactic.Cbv.cbvEvalExt.add (← Lean.Meta.Tactic.Cbv.mkCbvTheoremFromConst name) .global
      if let some pair := replacements.find? (·.1 == old) then
        let lhsSeal := mkAppN (mkConst pair.2) xs
        let mut unsealProof := mkConst (pair.2 ++ `sealEquation)
        for x in xs do unsealProof ← mkCongrFun unsealProof x
        let proof ← mkEqTrans unsealProof (mkAppN (mkConst name) xs)
        let ty ← mkForallFVars xs (← mkEq lhsSeal sealedBody)
        let proof ← mkLambdaFVars xs proof
        let name ← mkAuxLemma [] ty proof (kind? := some `combatSealedEval)
        Lean.Meta.Tactic.Cbv.cbvEvalExt.add (← Lean.Meta.Tactic.Cbv.mkCbvTheoremFromConst name) .global
  logInfo "Kernel-checked evaluation interfaces registered"

elab "combat_kernel_close" : tactic => do
  let goal ← getMainGoal
  goal.withContext do
    let some (ty,lhs,rhs) := (← goal.getType).eq? | throwError "expected equality"
    let ul ← getLevel ty
    let rl ← Lean.Meta.Tactic.Cbv.cbvEntry lhs
    let rr ← Lean.Meta.Tactic.Cbv.cbvEntry rhs
    let a := rl.getResultExpr lhs
    let b := rr.getResultExpr rhs
    let hl ← match rl with
      | .step _ h .. => pure h
      | .rfl .. => mkEqRefl lhs
    let hr ← match rr with
      | .step _ h .. => pure h
      | .rfl .. => mkEqRefl rhs
    let hr := mkApp4 (mkConst ``Eq.symm [ul]) ty rhs b hr
    let middle := mkApp2 (mkConst ``Eq.refl [ul]) ty b
    let bridge := mkApp6 (mkConst ``Eq.trans [ul]) ty a b rhs middle hr
    let mut proof := mkApp6 (mkConst ``Eq.trans [ul]) ty lhs a rhs hl bridge
    for _ in [:1000] do
      let next := proof.replace fun e => match e with
        | .letE _ _ value body _ => some (body.instantiate1 value)
        | _ => none
      if next == proof then break
      proof := next
    let counter ← IO.mkRef (0 : Nat)
    proof ← Meta.transform proof (skipConstInApp := true) (post := fun e => do
      let args := e.getAppArgs
      let mut r := e
      if e.isAppOfArity ``Eq.trans 6 then
        if let some (t,a,b) := (← inferType args[4]!).eq? then
          if let some (_,_,c) := (← inferType args[5]!).eq? then
            r := mkApp6 e.getAppFn t a b c args[4]! args[5]!
      if e.isAppOfArity ``Eq.symm 4 then
        if let some (t,a,b) := (← inferType args[3]!).eq? then
          r := mkApp4 e.getAppFn t a b args[3]!
      if e.isAppOfArity ``congrArg 6 then
        if let some (t,a,b) := (← inferType args[5]!).eq? then
          r := mkApp6 e.getAppFn t args[1]! a b args[4]! args[5]!
      if e.isAppOfArity ``Eq.trans 6 then
        let n ← counter.get
        counter.set (n+1)
        if n % 128 == 127 then
          r := Lean.ShareCommon.shareCommon r
          let t ← inferType r
          r ← mkAuxTheorem t r (zetaDelta := true) (kind? := some `combatChunk)
      return .done r)
    proof := Lean.ShareCommon.shareCommon proof
    match Kernel.check (← getEnv) (← getLCtx) proof with
    | .ok .. => pure ()
    | .error e => throwError "kernel rejected candidate: {e.toMessageData (← getOptions)}"
    goal.assign proof
    replaceMainGoal []


end LeanDoomProofs
