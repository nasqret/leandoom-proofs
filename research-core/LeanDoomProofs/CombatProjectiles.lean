import LeanDoomProofs.CombatKernel

/-! Additional propositional evaluation interfaces for actual projectile launches
and movement. Every representative is proved equal to its imported operation;
the game transition is unchanged. Import only where these interfaces are needed. -/
namespace LeanDoomProofs
open Doom Lean Meta Elab Tactic
set_option maxRecDepth 32768
set_option maxHeartbeats 10000000
set_option autoImplicit false
set_option Elab.async false

run_cmd Lean.Elab.Command.liftTermElabM do
  let mut selected := #[``Player.tick, ``Simulation.interactionTick,
    ``Player.syncScene, ``Collision.Scene.lineAttack,
    ``Collision.Scene.aimLineAttack, ``Collision.Scene.bulletAim]
  for suffix in #["Doom.Simulation.weaponTickCombatV1", "Doom.Simulation.fireGunCombatV1",
      "Doom.Simulation.shootCombatV1", "Doom.Simulation.hurtActorCombatV1"] do
    let names := (← getEnv).constants.toList.filterMap fun (name,_) =>
      if name.toString.startsWith "_private." && name.toString.endsWith suffix then some name else none
    let [name] := names | throwError "ambiguous operation: {suffix}"
    selected := selected.push name
  let originalCount := selected.size
  selected := selected ++ #[``Simulation.spawnImpShot, ``Simulation.tickProjectiles,
    ``Projectile.spawn, ``Projectile.position, ``Simulation.impThing,
    ``Collision.Scene.checkPositionWithEffects, ``Map.sectorAt,
    ``Collision.moveDecision, ``Projectile.tickState, ``Projectile.explode,
    ``Motion.xySteps, ``Simulation.soundAt, ``combat_actorNormalized]
  for suffix in #["Doom.attempt", "Doom.record", "Doom.explode"] do
    let names := (← getEnv).constants.toList.filterMap fun (name,_) =>
      if name.toString.startsWith "_private.Doom.ProjectileRuntime." && name.toString.endsWith suffix
      then some name else none
    let [name] := names | throwError "ambiguous projectile operation: {suffix}"
    selected := selected.push name
  let rules := selected ++ #[``combat_tickWithActor, ``combat_tickNormalized]
  let mut replacements : Array (Name × Name) := #[]
  for index in [:selected.size] do
    let old := selected[index]!
    if index < originalCount then
      replacements := replacements.push (old, `CombatSealed ++ old)
      continue
    let info ← getConstInfoDefn old
    unless info.levelParams.isEmpty do throwError "unexpected polymorphic game function"
    let name := `CombatProjectileSealed ++ old
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
  logInfo "Projectile evaluation interfaces registered"

end LeanDoomProofs
