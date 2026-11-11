import FullScanRules
import FullInteraction687
import Full687Suffix
import FullWeapon041
import FullFloor687
open Doom LeanDoomProofs NuclearFull
namespace NuclearFullPassage
set_option Elab.async false
set_option maxRecDepth 65536

theorem edge687 : s686.tickCombatV2 8706 true = s687 := by
  doom_kernel_exact LeanDoomProofs.NuclearFullSuffix.fullTick687 NuclearFull.Play.interact687 NuclearFullWeapon.weapon687 FullFloor687.floor687
theorem scan687To687 : CheckedReplay.scan s686 [8706] = some s687 := by
  doom_kernel_exact singleton s686 s687 8706 (Eq.refl true) edge687
#print axioms edge687
#print axioms scan687To687

end NuclearFullPassage
