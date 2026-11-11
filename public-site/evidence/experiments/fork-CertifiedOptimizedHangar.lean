import OptimizedStem
import OptimizedFinalEdge
import HangarPostfixRule

open Doom LeanDoomProofs LeanDoomProofs.E1M1Route
set_option maxRecDepth 65536
set_option maxHeartbeats 5000000
set_option Elab.async false

theorem certifiedOptimizedHangar : HangarShortcut.SafeFirstExit optimizedInputs 992 ∧
    run step e1m1TreeSpawn optimizedInputs = E1M1Optimized.endpoint := by
  doom_kernel_exact HangarPostfixRule.withEndpoint
    (HangarShortcut.SafeFirstExit optimizedInputs 992)
    e1m1TreeSpawn E1M1FullRoute.state991 E1M1Optimized.endpoint
    (e1m1Inputs.take 991) 4096
    (optimizedPassageOfFinalObservations optimized_final_observations)
    optimizedOpening optimized_final_edge
#print axioms certifiedOptimizedHangar
