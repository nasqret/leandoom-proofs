import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected03 : List RngExperiment.Outcome := [
  ⟨48, none, none, none, 73, 60, -44040624, 152044514, 4148166656⟩,
  ⟨49, none, some 840, none, 0, 52, -98415247, 125238040, 4123812096⟩,
  ⟨50, none, some 965, none, 0, 61, -89132246, 133064321, 59531520⟩,
  ⟨51, none, some 849, none, 0, 50, -90358459, 117647617, 3665240192⟩,
  ⟨52, none, none, none, 67, 66, -24625409, 151059103, 4148166656⟩,
  ⟨53, none, none, none, 73, 66, -21146655, 153384919, 4148166656⟩,
  ⟨54, none, none, none, 70, 66, -24625409, 151059103, 4148166656⟩,
  ⟨55, none, none, none, 67, 73, -44040685, 152044531, 4148166656⟩,
  ⟨56, none, some 852, none, 0, 54, -98559700, 125293870, 4127195136⟩,
  ⟨57, none, none, none, 64, 60, -44040624, 152044514, 4148166656⟩,
  ⟨58, none, none, none, 79, 66, -21146655, 153384919, 4148166656⟩,
  ⟨59, none, some 943, none, 0, 55, -89132154, 133169131, 80503040⟩,
  ⟨60, none, none, none, 85, 60, -44040624, 152044514, 4148166656⟩,
  ⟨61, none, none, none, 88, 60, -44040624, 152044514, 4148166656⟩,
  ⟨62, none, none, none, 91, 60, -44040624, 152044514, 4148166656⟩,
  ⟨63, none, none, none, 91, 73, -44040685, 152044531, 4148166656⟩]
theorem block03 : RngExperiment.classifyBlock group mapName tape 3 = some (25, expected03) := by native_decide
end Recording
