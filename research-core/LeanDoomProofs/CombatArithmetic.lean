import LeanDoomProofs.Passage
import Lean.Meta.Tactic.Cbv
import Lean.Meta.Sym.LitValues
import Init.CbvSimproc

namespace LeanDoomProofs
open Lean Meta

/-- Read only a syntactic integer literal; no arbitrary Lean program is evaluated. -/
def combatIntLiteral? (e : Expr) : Option Int := do
  if let some v := Sym.getIntValue? e then return v
  let_expr Int.ofNat n := e | none
  return Int.ofNat (← Sym.getNatValue? n)

/-- Propose a compact signed 32-bit literal. The equality proof is reflexivity,
so Lean's kernel independently checks the conversion, including overflow. -/
cbv_simproc cbv_eval combatInt32OfInt (Int32.ofInt _) := fun e => do
  let_expr Int32.ofInt n := e | return .rfl
  let some z := combatIntLiteral? n | return .rfl
  let result ← Sym.share (toExpr (Int32.ofInt z))
  return .step result (← Sym.mkEqRefl result) (done := true)

cbv_simproc cbv_eval combatInt32OfNat (Int32.ofNat _) := fun e => do
  let_expr Int32.ofNat n := e | return .rfl
  let some z := Sym.getNatValue? n | return .rfl
  let result ← Sym.share (toExpr (Int32.ofNat z))
  return .step result (← Sym.mkEqRefl result) (done := true)

end LeanDoomProofs
