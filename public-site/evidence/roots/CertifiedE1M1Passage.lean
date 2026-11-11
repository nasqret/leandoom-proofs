import CertifiedE1M1Prefix993
import E1M1ParserPassage
import E1M1ShotMinimum
import CertifiedE1M1ExitTime
open Doom LeanDoomProofs LeanDoomProofs.E1M1Route
set_option maxRecDepth 65536
set_option maxHeartbeats 5000000
set_option Elab.async false

theorem certifiedE1M1LeastShots :
    ∃ m : Map, Map.load (E1M1Parser.asLumps E1M1Parser.pinnedGroup) "E1M1" = .ok m ∧
      E1M1Passage.winningShotTotal m 0 ∧
        (∀ b : Nat, (∀ n, E1M1Passage.winningShotTotal m n → b ≤ n) ↔ b = 0) :=
  E1M1Passage.parsed_least_shots certifiedAuthenticE1M1
#print axioms certifiedE1M1LeastShots
#print axioms certifiedAuthenticE1M1
