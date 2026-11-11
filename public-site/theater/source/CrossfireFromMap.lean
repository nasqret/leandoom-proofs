import FullConnected190
import FullConnected191
import FullConnected206
import FullConnected207
import CrossfireReadout

open Doom LeanDoomProofs NuclearFull
namespace LeanDoomProofs.NuclearCrossfire

/-- Running from the parsed map reaches an enemy-on-enemy pistol hit at input 191. -/
theorem friendlyFireFromMap :
    ∃ before after : Simulation,
      NuclearWindow.fromMap 190 = .ok before ∧ NuclearWindow.fromMap 191 = .ok after ∧
      friendlyReadout before after :=
  ⟨s190, s191, NuclearFullPassage.fromMap190, NuclearFullPassage.fromMap191, friendlyEndpoints⟩

/-- The same wounded former human registers six points of player damage at input 207. -/
theorem woundedShooterFromMap :
    ∃ before after : Simulation,
      NuclearWindow.fromMap 206 = .ok before ∧ NuclearWindow.fromMap 207 = .ok after ∧
      woundedReadout before after :=
  ⟨s206, s207, NuclearFullPassage.fromMap206, NuclearFullPassage.fromMap207, woundedEndpoints⟩

#print axioms friendlyFireFromMap
#print axioms woundedShooterFromMap
end LeanDoomProofs.NuclearCrossfire
