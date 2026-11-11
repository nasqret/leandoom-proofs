import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected04 : List RngExperiment.Outcome := [
  ⟨64, none, none, none, 88, 66, -21146655, 153384919, 4148166656⟩,
  ⟨65, none, none, none, 94, 73, -44040685, 152044531, 4148166656⟩,
  ⟨66, some 1017, none, none, 52, 73, -20626184, 153723710, 4148166656⟩,
  ⟨67, none, none, none, 88, 60, -44040624, 152044514, 4148166656⟩,
  ⟨68, none, none, none, 79, 66, -22022899, 154823158, 4148166656⟩,
  ⟨69, none, none, none, 85, 73, -44040685, 152044531, 4148166656⟩,
  ⟨70, none, some 832, none, 0, 53, -98507882, 125327137, 4253024256⟩,
  ⟨71, none, none, none, 64, 66, -21945307, 153384919, 4148166656⟩,
  ⟨72, none, none, none, 52, 66, -21488737, 153384919, 4148166656⟩,
  ⟨73, none, some 956, none, 0, 61, -97517900, 137361820, 478961920⟩,
  ⟨74, none, none, none, 88, 73, -44040685, 152044531, 4148166656⟩,
  ⟨75, none, some 951, none, 0, 55, -89130148, 123431310, 4128308416⟩,
  ⟨76, none, none, none, 79, 66, -21488737, 153384919, 4148166656⟩,
  ⟨77, none, none, none, 70, 66, -21146655, 153384919, 4148166656⟩,
  ⟨78, none, none, none, 55, 65, -89141367, 133169798, 311189760⟩,
  ⟨79, none, some 851, none, 0, 53, -98415247, 125453111, 4165755136⟩]
theorem block04 : RngExperiment.classifyBlock group mapName tape 4 = some (25, expected04) := by native_decide
end Recording
