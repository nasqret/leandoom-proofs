import LearnedStem966
import LearnedComposeRule
import LearnedMiddle
import LearnedStep978
import LearnedObs978
open Doom LeanDoomProofs LeanDoomProofs.E1M1Route
set_option maxRecDepth 65536
set_option maxHeartbeats 5000000
set_option Elab.async false

theorem certifiedLearnedHangar :
    HangarShortcut.SafeFirstExit learnedInputs 978 ∧
    run step e1m1TreeSpawn learnedInputs = E1M1Learned978.endpoint := by
  have opening : Segment e1m1TreeSpawn learnedBeforeExit E1M1Learned977.endpoint :=
    HangarShortcut.join learnedOpening966 learnedMiddleSegment
  exact HangarShortcut.finishWithEndpoint learnedBeforeExit 977 _ _ 4096 opening learnedBeforeExitLength
    learnedControls learnedSafeExit977.2.2 learnedEdge978 learnedSafeExit978.2.2
    learnedSafeExit978.1 learnedSafeExit978.2.1

theorem certifiedLearnedHangarInventory :
    let t := run step e1m1TreeSpawn learnedInputs
    t.ticks = 978 ∧ t.inventory.health = 48 ∧ t.inventory.armor = 1 ∧
    t.inventory.bullets = 50 ∧ t.inventory.shells = 4 ∧ t.shots = 0 ∧ t.kills = 0 := by
  dsimp only
  rw [certifiedLearnedHangar.2]
  exact learnedEndpointInventory
#print axioms certifiedLearnedHangar
#print axioms certifiedLearnedHangarInventory
