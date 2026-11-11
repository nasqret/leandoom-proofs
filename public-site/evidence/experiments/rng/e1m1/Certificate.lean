import RngBlock00
import RngBlock01
import RngBlock02
import RngBlock03
import RngBlock04
import RngBlock05
import RngBlock06
import RngBlock07
import RngBlock08
import RngBlock09
import RngBlock10
import RngBlock11
import RngBlock12
import RngBlock13
import RngBlock14
import RngBlock15
namespace Recording
theorem all256 : RngExperiment.classify group mapName tape = [
  some (5, expected00),
  some (5, expected01),
  some (5, expected02),
  some (5, expected03),
  some (5, expected04),
  some (5, expected05),
  some (5, expected06),
  some (5, expected07),
  some (5, expected08),
  some (5, expected09),
  some (5, expected10),
  some (5, expected11),
  some (5, expected12),
  some (5, expected13),
  some (5, expected14),
  some (5, expected15)] := by
  change [
    RngExperiment.classifyBlock group mapName tape 0,
    RngExperiment.classifyBlock group mapName tape 1,
    RngExperiment.classifyBlock group mapName tape 2,
    RngExperiment.classifyBlock group mapName tape 3,
    RngExperiment.classifyBlock group mapName tape 4,
    RngExperiment.classifyBlock group mapName tape 5,
    RngExperiment.classifyBlock group mapName tape 6,
    RngExperiment.classifyBlock group mapName tape 7,
    RngExperiment.classifyBlock group mapName tape 8,
    RngExperiment.classifyBlock group mapName tape 9,
    RngExperiment.classifyBlock group mapName tape 10,
    RngExperiment.classifyBlock group mapName tape 11,
    RngExperiment.classifyBlock group mapName tape 12,
    RngExperiment.classifyBlock group mapName tape 13,
    RngExperiment.classifyBlock group mapName tape 14,
    RngExperiment.classifyBlock group mapName tape 15] = _
  rw [block00, block01, block02, block03, block04, block05, block06, block07, block08, block09, block10, block11, block12, block13, block14, block15]
end Recording
