import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected08 : List RngExperiment.Outcome := [
  ⟨128, none, none, none, 49, 66, -21146655, 153384919, 4148166656⟩,
  ⟨129, none, none, none, 82, 60, -44040624, 152044514, 4148166656⟩,
  ⟨130, none, none, none, 82, 66, -44040580, 152044524, 4148166656⟩,
  ⟨131, none, none, none, 76, 66, -22285718, 152044500, 4148166656⟩,
  ⟨132, none, none, none, 22, 65, -89142407, 133169907, 311189760⟩,
  ⟨133, none, some 918, none, 0, 55, -89130828, 118490841, 3853983872⟩,
  ⟨134, none, none, none, 85, 66, -21945307, 153384919, 4148166656⟩,
  ⟨135, none, some 918, none, 0, 55, -89130828, 118490841, 3853983872⟩,
  ⟨136, none, some 931, none, 0, 58, -89130936, 133168905, 59531520⟩,
  ⟨137, none, none, none, 58, 66, -21146655, 153384919, 4148166656⟩,
  ⟨138, none, none, none, 73, 66, -21945307, 153384919, 4148166656⟩,
  ⟨139, none, none, none, 58, 66, -21146655, 153384919, 4148166656⟩,
  ⟨140, none, none, none, 49, 66, -23380348, 152047934, 4148166656⟩,
  ⟨141, none, none, none, 79, 66, -23689751, 153597690, 4148166656⟩,
  ⟨142, none, some 832, none, 0, 51, -98415247, 125212434, 17588480⟩,
  ⟨143, none, some 912, none, 0, 55, -98835774, 125399299, 4247307576⟩]
theorem block08 : RngExperiment.classifyBlock group mapName tape 8 = some (25, expected08) := by native_decide
end Recording
