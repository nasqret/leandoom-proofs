import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected11 : List RngExperiment.Outcome := [
  ⟨176, none, none, none, 91, 66, -21146655, 153384919, 4148166656⟩,
  ⟨177, none, none, none, 76, 66, -25898540, 151088689, 4148166656⟩,
  ⟨178, some 1017, none, none, 88, 66, -20739015, 153384919, 4148166656⟩,
  ⟨179, none, some 950, none, 0, 55, -89132237, 126199444, 4249409103⟩,
  ⟨180, none, none, none, 79, 66, -25898540, 151088689, 4148166656⟩,
  ⟨181, none, some 907, none, 0, 54, -89130828, 118490841, 3874955392⟩,
  ⟨182, some 1017, none, none, 82, 66, -20739015, 153384919, 4148166656⟩,
  ⟨183, none, none, none, 46, 66, -24625409, 151059103, 4148166656⟩,
  ⟨184, none, none, none, 52, 66, -22022899, 154823158, 4148166656⟩,
  ⟨185, none, some 937, none, 0, 55, -89130120, 129723525, 4128308416⟩,
  ⟨186, none, some 837, none, 0, 53, -98572329, 125487051, 4148166656⟩,
  ⟨187, none, none, none, 97, 66, -21146655, 153384919, 4148166656⟩,
  ⟨188, none, none, none, 94, 66, -21146655, 153384919, 4148166656⟩,
  ⟨189, none, none, none, 61, 66, -22022899, 154823158, 4148166656⟩,
  ⟨190, none, none, none, 79, 66, -24625409, 151059103, 4148166656⟩,
  ⟨191, none, some 904, none, 0, 54, -89130828, 118490841, 3874955392⟩]
theorem block11 : RngExperiment.classifyBlock group mapName tape 11 = some (25, expected11) := by native_decide
end Recording
