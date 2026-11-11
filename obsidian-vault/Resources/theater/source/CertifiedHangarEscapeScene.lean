import CertifiedE1M1Prefix992
import E1M1EscapeView
import E1M1HangarInventory
import E1M1ExitTime

open Doom LeanDoomProofs LeanDoomProofs.E1M1Route

set_option maxRecDepth 65536
set_option maxHeartbeats 5000000

private theorem closingSegment : Segment e1m1TreeSpawn e1m1Inputs E1M1FullRoute.state993 := by
  have last : Segment E1M1FullRoute.state992 [4096] E1M1FullRoute.state993 :=
    segment_cons _ _ _ _ _ E1M1FinalEdge.final_real_tick e1m1RouteSafe992
      (segment_nil _ e1m1RouteSafe993)
  rw [E1M1Passage.saved_last_input]
  exact segment_append _ _ _ _ _ certifiedE1M1Prefix992 last

/-- From actual spawn, the exit has eight offsets of 1001 and the fourth
    missile is still flying between 70 and 71 map units from the player.
    The player retains the fist and pistol, and the six monsters survive. -/
theorem certifiedHangarEscapeScene :
    HangarEscape.escapeScene (run step e1m1TreeSpawn e1m1Inputs) ∧
    HangarInventory.loadout (run step e1m1TreeSpawn e1m1Inputs) ∧
    (∀ j : Nat, (run step e1m1TreeSpawn (e1m1Inputs.take j)).exitRequested = decide (993 ≤ j)) :=
  ⟨HangarEscape.observe_escape closingSegment,
   HangarInventory.from_segment closingSegment,
   E1M1Passage.first_exit_from_prefix992 certifiedE1M1Prefix992⟩

#print axioms certifiedHangarEscapeScene
