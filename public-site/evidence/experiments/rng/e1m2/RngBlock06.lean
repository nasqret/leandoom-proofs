import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected06 : List RngExperiment.Outcome := [
  ⟨96, none, some 934, none, 0, 59, -89132253, 133169103, 80503040⟩,
  ⟨97, none, none, none, 94, 73, -44040685, 152044531, 4148166656⟩,
  ⟨98, none, none, none, 67, 66, -21146655, 153384919, 4148166656⟩,
  ⟨99, none, none, none, 82, 66, -21488737, 153384919, 4148166656⟩,
  ⟨100, none, some 877, none, 0, 55, -89129924, 133166899, 625762560⟩,
  ⟨101, none, none, none, 61, 66, -22022899, 154823158, 4148166656⟩,
  ⟨102, none, some 852, none, 0, 50, -89369941, 118327118, 3750821056⟩,
  ⟨103, none, none, none, 100, 60, -44040624, 152044514, 4148166656⟩,
  ⟨104, none, none, none, 22, 67, -44040624, 152044514, 4148166656⟩,
  ⟨105, none, none, none, 43, 66, -22285718, 152044500, 4148166656⟩,
  ⟨106, none, some 970, none, 0, 55, -89129768, 118489969, 4107336896⟩,
  ⟨107, none, some 921, none, 0, 66, -89132186, 130558746, 4253024256⟩,
  ⟨108, none, none, none, 64, 66, -21488737, 153384919, 4148166656⟩,
  ⟨109, none, some 950, none, 0, 60, -89130914, 133168903, 80503040⟩,
  ⟨110, none, some 898, none, 0, 60, -98536121, 125482491, 320651951⟩,
  ⟨111, none, none, none, 43, 66, -21146655, 153384919, 4148166656⟩]
theorem block06 : RngExperiment.classifyBlock group mapName tape 6 = some (25, expected06) := by native_decide
end Recording
