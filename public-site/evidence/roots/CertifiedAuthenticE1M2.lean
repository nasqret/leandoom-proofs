import FullConnected1017
import FullFinishRules
import FullRouteBounds
open Doom LeanDoomProofs NuclearFull
namespace NuclearFullPassage
set_option Elab.async false
set_option maxRecDepth 65536

open LeanDoomProofs.E1M2
theorem completeScan : CheckedReplay.scan initial E1M2Winner.inputs = some s1017 := entireScan checked1017
theorem certifiedAuthenticE1M2 : CheckedReplay.Passage group "E1M2" E1M2Winner.inputs :=
  passageFrom checked1017
theorem winnable : ∃ keys, CheckedReplay.Passage group "E1M2" keys :=
  ⟨E1M2Winner.inputs, certifiedAuthenticE1M2⟩
theorem safeFirstExit :
    (∀ j, j ≤ 1017 → combatSafe (run CheckedReplay.step initial (E1M2Winner.inputs.take j))) ∧
    (∀ j, (run CheckedReplay.step initial (E1M2Winner.inputs.take j)).exitRequested = decide (1017 ≤ j)) :=
  exactPrefixes certifiedAuthenticE1M2
theorem terminalFromMap : (NuclearWindow.fromMap 1017).map finalReadout = .ok (1017,73,73,2,2,20) :=
  readoutFrom checked1017
theorem shortestLengthBounds :
    ∃ n, E1M2Attainable n ∧ (∀ j, E1M2Attainable j → n ≤ j) ∧ 1 ≤ n ∧ n ≤ 1017 :=
  e1m2MinimumBoundsOfPassage certifiedAuthenticE1M2
#print axioms certifiedAuthenticE1M2
#print axioms winnable
#print axioms safeFirstExit
#print axioms terminalFromMap
#print axioms shortestLengthBounds

end NuclearFullPassage
