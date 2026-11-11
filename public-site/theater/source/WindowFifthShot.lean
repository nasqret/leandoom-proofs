import WindowStep5
import FirstImpactFacts
namespace NuclearWindow
open Doom LeanDoomProofs LeanDoomProofs.E1M2

def playing (s : Simulation) : Bool :=
  s.physicsError.isNone && decide (0 < s.inventory.health) && !s.exitRequested

def summary (s : Simulation) := (playing s, shotCountAndBullets s)

/-- Every opening prefix is live. The first player discharge and the first
decrease in the initial pistol ammunition both occur on input five. -/
theorem firstPistolDischarge (j : Nat) (hj : j ≤ 5) :
    (fromMap j).map summary = .ok (true, if j < 5 then (0,50) else (1,49)) := by
  apply upToFive (fun i => (fromMap i).map summary = .ok (true, if i < 5 then (0,50) else (1,49))) <;> try assumption
  · exact observeAt 0 initial summary (true,(0,50)) zero (by decide +kernel)
  · exact observeAt 1 s1 summary (true,(0,50)) (fromChecked first) (by decide +kernel)
  · exact observeAt 2 s2 summary (true,(0,50)) parsed2 (by decide +kernel)
  · exact observeAt 3 s3 summary (true,(0,50)) parsed3 (by decide +kernel)
  · exact observeAt 4 s4 summary (true,(0,50)) parsed4 (by decide +kernel)
  · exact observeAt 5 s5 summary (true,(1,49)) parsed5 (by decide +kernel)

/-- The aimed pistol round has one traced pellet and no acquired actor. -/
theorem fifthPistolSample :
    (fromMap 5).map (fun s => s.lastFire.map discharge) =
      .ok (some ⟨true,5,50,49,1,1,[968884224],none⟩) :=
  observeAt 5 s5 _ _ parsed5 dischargeFive

/-- The ordered list of shot events contains one puff at these signed 16.16 coordinates. -/
theorem fifthPistolImpact :
    (fromMap 5).map impacts = .ok [.puff 0 4154032 18420887 3932160] :=
  observeAt 5 s5 _ _ parsed5 impactFive

#print axioms firstPistolDischarge
#print axioms fifthPistolSample
#print axioms fifthPistolImpact
end NuclearWindow
