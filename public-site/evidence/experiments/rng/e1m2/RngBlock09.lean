import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected09 : List RngExperiment.Outcome := [
  ⟨144, none, some 925, none, 0, 59, -89132209, 130650022, 4273995776⟩,
  ⟨145, none, none, none, 67, 73, -22022899, 154823158, 4148166656⟩,
  ⟨146, none, none, none, 91, 67, -21146655, 153384919, 4148166656⟩,
  ⟨147, none, none, none, 82, 66, -21945307, 153384919, 4148166656⟩,
  ⟨148, none, some 932, none, 0, 55, -89129679, 118491339, 3687906496⟩,
  ⟨149, none, none, none, 52, 65, -89130793, 129814941, 4207698176⟩,
  ⟨150, none, none, none, 76, 66, -21945307, 153384919, 4148166656⟩,
  ⟨151, none, none, none, 82, 60, -44040624, 152044514, 4148166656⟩,
  ⟨152, none, none, none, 64, 66, -21488737, 153384919, 4148166656⟩,
  ⟨153, none, none, none, 67, 66, -22022899, 154823158, 4148166656⟩,
  ⟨154, none, none, none, 52, 66, -21146655, 153384919, 4148166656⟩,
  ⟨155, none, none, none, 46, 66, -44043246, 154139701, 311189760⟩,
  ⟨156, none, some 862, none, 0, 53, -98415247, 125076752, 290218240⟩,
  ⟨157, none, none, none, 85, 66, -21488737, 153384919, 4148166656⟩,
  ⟨158, none, none, none, 76, 66, -24625409, 151059103, 4148166656⟩,
  ⟨159, none, some 945, none, 0, 59, -89130912, 133168907, 80503040⟩]
theorem block09 : RngExperiment.classifyBlock group mapName tape 9 = some (25, expected09) := by native_decide
end Recording
