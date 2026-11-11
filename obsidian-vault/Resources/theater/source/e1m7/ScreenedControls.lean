import TapeFork

open Doom LeanDoomProofs

namespace RecordedForkE1M7

set_option maxRecDepth 65536
set_option maxHeartbeats 6000000
set_option Elab.async false

/-- A pair of recorded poses at indices a and b uses inputs with indices [a,b). -/
def clipControls (a b : Nat) : List UInt32 := (second.drop a).take (b - a)

def screenedControls : List UInt32 :=
  clipControls 2266 2495 ++ clipControls 3173 3341 ++ clipControls 4079 4161

theorem screenedCount : screenedControls.length = 479 := by decide +kernel

theorem noFireInScreening : ∀ k ∈ screenedControls, keyDown k 8192 = false := by
  have checked : screenedControls.all (fun k => !keyDown k 8192) = true := by decide +kernel
  intro k hk
  simpa using List.all_eq_true.mp checked k hk

/-- The final two actual masks release and then press Use at the panel. -/
theorem finalUseEdge :
    clipControls 4159 4161 = [544, 4640] ∧
    keyDown 544 4096 = false ∧ keyDown 4640 4096 = true := by decide +kernel

#print axioms screenedCount
#print axioms noFireInScreening
#print axioms finalUseEdge

end RecordedForkE1M7
