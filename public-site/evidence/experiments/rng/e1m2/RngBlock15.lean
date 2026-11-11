import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected15 : List RngExperiment.Outcome := [
  ⟨240, none, some 954, none, 0, 60, -89132091, 133169123, 80503040⟩,
  ⟨241, none, none, none, 100, 60, -44040624, 152044514, 4148166656⟩,
  ⟨242, none, none, none, 76, 66, -21146655, 153384919, 4148166656⟩,
  ⟨243, none, none, none, 100, 73, -44040685, 152044531, 4148166656⟩,
  ⟨244, none, none, none, 64, 60, -44040624, 152044514, 4148166656⟩,
  ⟨245, none, some 871, none, 0, 53, -89131466, 129442547, 336657600⟩,
  ⟨246, none, none, none, 64, 60, -44040624, 152044514, 4148166656⟩,
  ⟨247, none, none, none, 76, 73, -44040685, 152044531, 4148166656⟩,
  ⟨248, none, some 909, none, 0, 57, -89130338, 131373274, 4253024256⟩,
  ⟨249, none, none, none, 82, 60, -44040624, 152044514, 4148166656⟩,
  ⟨250, none, none, none, 55, 66, -21488737, 153384919, 4148166656⟩,
  ⟨251, none, some 992, none, 0, 64, -89129300, 133166967, 0⟩,
  ⟨252, none, none, none, 70, 66, -21488737, 153384919, 4148166656⟩,
  ⟨253, none, none, none, 82, 60, -44040624, 152044514, 4148166656⟩,
  ⟨254, none, none, none, 91, 66, -22285718, 152044500, 4148166656⟩,
  ⟨255, none, none, none, 70, 66, -21146655, 153384919, 4148166656⟩]
theorem block15 : RngExperiment.classifyBlock group mapName tape 15 = some (25, expected15) := by native_decide
end Recording
