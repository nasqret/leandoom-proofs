import Cut00
import Cut01
import Cut02
import Cut03
import Cut04
import Cut05
import Cut06
import Cut07
import Cut08
import Cut09
import Cut10
import Cut11
import Cut12
import Cut13
import Cut14
import Cut15
import Cut16
import Cut17
import Cut18
import Cut19
import Cut20
import Cut21
import Cut22
import Cut23
import Cut24
open TurnFamily
namespace Recording
set_option maxRecDepth 131072
set_option maxHeartbeats 0

theorem completeTable : table group tape = [
  some rows00,
  some rows01,
  some rows02,
  some rows03,
  some rows04,
  some rows05,
  some rows06,
  some rows07,
  some rows08,
  some rows09,
  some rows10,
  some rows11,
  some rows12,
  some rows13,
  some rows14,
  some rows15,
  some rows16,
  some rows17,
  some rows18,
  some rows19,
  some rows20,
  some rows21,
  some rows22,
  some rows23,
  some rows24] := by
  change [
    (evaluateCut group tape 0).map Prod.fst,
    (evaluateCut group tape 1).map Prod.fst,
    (evaluateCut group tape 2).map Prod.fst,
    (evaluateCut group tape 3).map Prod.fst,
    (evaluateCut group tape 4).map Prod.fst,
    (evaluateCut group tape 5).map Prod.fst,
    (evaluateCut group tape 6).map Prod.fst,
    (evaluateCut group tape 7).map Prod.fst,
    (evaluateCut group tape 8).map Prod.fst,
    (evaluateCut group tape 9).map Prod.fst,
    (evaluateCut group tape 10).map Prod.fst,
    (evaluateCut group tape 11).map Prod.fst,
    (evaluateCut group tape 12).map Prod.fst,
    (evaluateCut group tape 13).map Prod.fst,
    (evaluateCut group tape 14).map Prod.fst,
    (evaluateCut group tape 15).map Prod.fst,
    (evaluateCut group tape 16).map Prod.fst,
    (evaluateCut group tape 17).map Prod.fst,
    (evaluateCut group tape 18).map Prod.fst,
    (evaluateCut group tape 19).map Prod.fst,
    (evaluateCut group tape 20).map Prod.fst,
    (evaluateCut group tape 21).map Prod.fst,
    (evaluateCut group tape 22).map Prod.fst,
    (evaluateCut group tape 23).map Prod.fst,
    (evaluateCut group tape 24).map Prod.fst] = _
  rw [outcomes00, outcomes01, outcomes02, outcomes03, outcomes04, outcomes05, outcomes06, outcomes07, outcomes08, outcomes09, outcomes10, outcomes11, outcomes12, outcomes13, outcomes14, outcomes15, outcomes16, outcomes17, outcomes18, outcomes19, outcomes20, outcomes21, outcomes22, outcomes23, outcomes24]

theorem caseCount : (entries (table group tape)).length = 2750 := by
  rw [completeTable]
  decide +kernel

theorem allRunsSafeAndZeroShot : (entries (table group tape)).all (·.safe) = true := by
  rw [completeTable]
  decide +kernel

theorem winningCount : (winning (table group tape)).length = 651 := by
  rw [completeTable]
  decide +kernel

theorem minimumInThisFamily : minimum (table group tape) = some 977 := by
  rw [completeTable]
  decide +kernel

theorem eightMinimizers : settingsAt (table group tape) 977 = [(6,5,9), (6,6,9), (6,10,9), (7,9,8), (8,10,7), (10,10,5), (11,10,4), (14,10,1)] := by
  rw [completeTable]
  decide +kernel

theorem minimizerCount : (settingsAt (table group tape) 977).length = 8 := by
  rw [completeTable]
  decide +kernel

theorem lowerBoundCheck : (winning (table group tape)).all (fun a => decide (977 ≤ a.firstExit)) = true := by
  rw [completeTable]
  decide +kernel

theorem noFasterEligibleExit (a : Answer) (h : a ∈ winning (table group tape)) :
    977 ≤ a.firstExit := by
  exact of_decide_eq_true ((List.all_eq_true.mp lowerBoundCheck) a h)

end Recording
