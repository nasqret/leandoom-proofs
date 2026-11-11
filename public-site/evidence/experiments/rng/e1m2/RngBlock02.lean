import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected02 : List RngExperiment.Outcome := [
  ⟨32, none, none, none, 1, 55, -89129694, 118490791, 3960536256⟩,
  ⟨33, none, some 1008, none, 0, 55, -89767248, 118050632, 3499162816⟩,
  ⟨34, none, some 926, none, 0, 57, -89132015, 118490022, 4086365376⟩,
  ⟨35, none, none, none, 64, 66, -21146655, 153384919, 4148166656⟩,
  ⟨36, none, some 845, none, 0, 52, -98415247, 125230559, 4022337536⟩,
  ⟨37, none, some 865, none, 0, 54, -98415247, 125144809, 416047360⟩,
  ⟨38, none, none, none, 76, 60, -44040624, 152044514, 4148166656⟩,
  ⟨39, none, some 865, none, 0, 54, -98415247, 125651084, 416047360⟩,
  ⟨40, none, none, none, 79, 61, -44040710, 152044431, 4148166656⟩,
  ⟨41, none, some 974, none, 0, 60, -89130315, 133169100, 38560000⟩,
  ⟨42, none, none, none, 55, 66, -21488737, 153384919, 4148166656⟩,
  ⟨43, none, none, none, 64, 66, -21146655, 153384919, 4148166656⟩,
  ⟨44, none, some 820, none, 0, 52, -99468978, 124830244, 1338794240⟩,
  ⟨45, none, none, none, 61, 66, -22285718, 152044500, 4148166656⟩,
  ⟨46, none, none, none, 88, 61, -44040710, 152044431, 4148166656⟩,
  ⟨47, none, some 854, none, 0, 53, -98339060, 125503839, 457990400⟩]
theorem block02 : RngExperiment.classifyBlock group mapName tape 2 = some (25, expected02) := by native_decide
end Recording
