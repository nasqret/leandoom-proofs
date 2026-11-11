module
public meta import Lean.Meta.Tactic.Cbv.Main
meta import all Lean.Meta.Tactic.Cbv.Main
public meta import Lean.Elab.Tactic
public meta import Lean.Util.ShareCommon
public meta section
/-! A sequential, proof-producing evaluation strategy for heterogeneous local
bindings. It evaluates the value before substitution. This avoids the virtual
parallelization used by stock CBV. Every returned certificate still passes the
unmodified Lean kernel. Used only at the three sight-sensitive transitions. -/
namespace LeanDoomProofs.Sequential
open Lean Meta Lean.Meta.Tactic.Cbv Lean.Meta.Sym.Simp

def sequentialLet : Simproc := fun e => do
  match e with
  | .letE n ty value body true =>
    let r ← simp value
    let v := r.getResultExpr value
    let b ← Sym.shareCommon (body.instantiate1 v)
    match r with
    | .rfl _ cd =>
      let h ← Meta.mkEqRefl e
      return .step b h (contextDependent := cd)
    | .step _ hv _ cd =>
      let fn := mkLambda n .default ty body
      let h ← mkCongrArg fn hv
      return .step b h (contextDependent := cd)
  | _ => cbvPreStep e

def cbv (target : Expr) : MetaM Result := do
  Sym.SymM.run do
    Sym.withoutShareCommonChecks do
      let simprocs ← getCbvSimprocs
      let methods := Methods.mk
        (isBuiltinValue <|> isProofTerm <|>
          cbvSimprocDispatch simprocs.pre simprocs.erased <|> sequentialLet)
        (cbvPost simprocs)
      let target ← Sym.unfoldReducible target
      let target ← Sym.shareCommon target
      SimpM.run' (simp target) (methods := methods) (config := { maxSteps := 1000000 })
end LeanDoomProofs.Sequential

open LeanDoomProofs Lean Meta Elab Tactic
elab "combat_sequential_close" : tactic => do
  let goal ← getMainGoal
  goal.withContext do
    let some (ty,lhs,rhs) := (← goal.getType).eq? | throwError "expected equality"
    let ul ← getLevel ty
    let rl ← LeanDoomProofs.Sequential.cbv lhs
    let rr ← LeanDoomProofs.Sequential.cbv rhs
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
