import FullConnected953
import FullLeaf954
import FullLiftTransfer
open Doom LeanDoomProofs LeanDoomProofs.E1M2Tick NuclearFull
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000
set_option Elab.async false
open LeanDoomProofs.NuclearFullSuffix
namespace NuclearFullPassage

def beforeImpFromMap : Except String ActorAcc := NuclearFullLift.before (NuclearWindow.fromMap 953) 8706

theorem beforeImp : beforeImpFromMap = .ok (none,a954_38) := by
  doom_kernel_exact NuclearFullLift.before_stages (NuclearWindow.fromMap 953) s953 i954 b954 w954 c954 a954_38 8706
    fromMap953 NuclearFull.Play.interact954 world954Base NuclearFullWeapon.weapon954 world954Corpse
    (NuclearFullLift.prefix38
      slot954_0 slot954_1 slot954_2 slot954_3 slot954_4 slot954_5
      slot954_6 slot954_7 slot954_8 slot954_9 slot954_10 slot954_11
      slot954_12 slot954_13 slot954_14 slot954_15 slot954_16 slot954_17
      slot954_18 slot954_19 slot954_20 slot954_21 slot954_22 slot954_23
      slot954_24 slot954_25 slot954_26 slot954_27 slot954_28 slot954_29
      slot954_30 slot954_31 slot954_32 slot954_33 slot954_34 slot954_35
      slot954_36 slot954_37)

def impFromMap : Except String (Simulation × Simulation) := NuclearFullLift.inspect beforeImpFromMap

theorem impTurnFromMap : impFromMap = .ok (a954_38,a954_39) := by
  doom_kernel_exact NuclearFullLift.observe_step beforeImpFromMap a954_38 a954_39 beforeImp NuclearFull.ImpLift.impStartsLift.1

theorem impOperatesLift : impFromMap.map NuclearFullLift.report = .ok (0,1,49,.lift,88) :=
  NuclearFullLift.liftReport impFromMap impTurnFromMap

#print axioms beforeImp
#print axioms impTurnFromMap
#print axioms impOperatesLift
end NuclearFullPassage
