import FullScanRules
import FullInteraction505
import Full505Suffix
import FullWeapon030
open Doom LeanDoomProofs NuclearFull
namespace NuclearFullPassage
set_option Elab.async false
set_option maxRecDepth 65536

theorem edge505 : s504.tickCombatV2 12834 true = s505 := by
  doom_kernel_exact LeanDoomProofs.NuclearFullSuffix.fullTick505 NuclearFull.Play.interact505 NuclearFullWeapon.weapon505
theorem scan505To505 : CheckedReplay.scan s504 [12834] = some s505 := by
  doom_kernel_exact singleton s504 s505 12834 (Eq.refl true) edge505
#print axioms edge505
#print axioms scan505To505

end NuclearFullPassage
