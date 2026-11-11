import ProofGrid
namespace Authored
namespace L01_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#.###b###.#.##..#".toList.toArray,
"#...#.....#...#.#".toList.toArray,
"#.#.!..#..#...#.#".toList.toArray,
"#.@.......B...X.#".toList.toArray,
"#..##.###.#.#.#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#..###.##.#..##.#".toList.toArray,
"#........h#.....#".toList.toArray,
"#################".toList.toArray],2,5,0⟩
def tape : List Nat := [[1,1,1,4,4,4,5,1,1,1,1,5,5,6,1,1,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L01_direct

namespace L01_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#.###b###.#.##..#".toList.toArray,
"#...#.....#...#.#".toList.toArray,
"#.#.!..#..#...#.#".toList.toArray,
"#.@.......B...X.#".toList.toArray,
"#..##.###.#.#.#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#..###.##.#..##.#".toList.toArray,
"#........h#.....#".toList.toArray,
"#################".toList.toArray],2,5,0⟩
def tape : List Nat := [[1,1,1,2,1,1,1,2,2,1,1,1,2,1,1,1,1,6,1,1,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L01_careful

namespace L01_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#.###b###.#.##..#".toList.toArray,
"#...#.....#...#.#".toList.toArray,
"#.#.!..#..#...#.#".toList.toArray,
"#.@.......B...X.#".toList.toArray,
"#..##.###.#.#.#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#..###.##.#..##.#".toList.toArray,
"#........h#.....#".toList.toArray,
"#################".toList.toArray],2,5,0⟩
def tape : List Nat := [[1,1,1,1,1,1,1,5,5,5,5,2,1,1,1,1,1,1,1,1,2,1,1,1,1,2,1,1,1,1,2,1,1,1,1,6,1,1,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L01_survey

namespace L02_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#....b.#..#.....#".toList.toArray,
"#.####.#..#..#..#".toList.toArray,
"#...!..#..B..#..#".toList.toArray,
"#.#.##....#.....#".toList.toArray,
"#.#....#..#.###.#".toList.toArray,
"#.....##..#.....#".toList.toArray,
"#.##......#..#X.#".toList.toArray,
"#....###..#..#..#".toList.toArray,
"#.@......h#.....#".toList.toArray,
"#################".toList.toArray],2,9,3⟩
def tape : List Nat := [[1,4,1,1,1,1,1,1,1,5,5,5,5,5,3,5,5,5,1,1,1,4,6,1,1,5,5,5,1,1,1,3,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L02_direct

namespace L02_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#....b.#..#.....#".toList.toArray,
"#.####.#..#..#..#".toList.toArray,
"#...!..#..B..#..#".toList.toArray,
"#.#.##....#.....#".toList.toArray,
"#.#....#..#.###.#".toList.toArray,
"#.....##..#.....#".toList.toArray,
"#.##......#..#X.#".toList.toArray,
"#....###..#..#..#".toList.toArray,
"#.@......h#.....#".toList.toArray,
"#################".toList.toArray],2,9,3⟩
def tape : List Nat := [[1,2,1,3,1,1,1,1,1,1,1,3,1,1,1,1,1,3,1,1,1,2,1,1,1,2,1,3,6,1,1,3,1,1,1,2,1,1,1,3,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L02_careful

namespace L02_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#....b.#..#.....#".toList.toArray,
"#.####.#..#..#..#".toList.toArray,
"#...!..#..B..#..#".toList.toArray,
"#.#.##....#.....#".toList.toArray,
"#.#....#..#.###.#".toList.toArray,
"#.....##..#.....#".toList.toArray,
"#.##......#..#X.#".toList.toArray,
"#....###..#..#..#".toList.toArray,
"#.@......h#.....#".toList.toArray,
"#################".toList.toArray],2,9,3⟩
def tape : List Nat := [[5,5,5,5,5,5,5,1,1,1,1,1,2,1,1,1,3,1,1,1,2,1,2,2,1,3,1,1,1,2,1,1,1,2,1,3,6,1,1,3,1,1,1,2,1,1,1,3,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L02_survey

namespace L03_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#...#....h#...X.#".toList.toArray,
"#.#.#.#.#.#.#.#.#".toList.toArray,
"#@#...#...#.....#".toList.toArray,
"#...#..#..#..#..#".toList.toArray,
"#.#..!....#...#.#".toList.toArray,
"#..###..#.#.....#".toList.toArray,
"#.....#...B.###.#".toList.toArray,
"#...#...#.#.....#".toList.toArray,
"#......b..#.....#".toList.toArray,
"#################".toList.toArray],1,3,0⟩
def tape : List Nat := [[5,1,1,5,1,1,1,1,5,5,5,5,1,1,4,4,6,1,1,4,1,4,4,4,1,4,4,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L03_direct

namespace L03_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#...#....h#...X.#".toList.toArray,
"#.#.#.#.#.#.#.#.#".toList.toArray,
"#@#...#...#.....#".toList.toArray,
"#...#..#..#..#..#".toList.toArray,
"#.#..!....#...#.#".toList.toArray,
"#..###..#.#.....#".toList.toArray,
"#.....#...B.###.#".toList.toArray,
"#...#...#.#.....#".toList.toArray,
"#......b..#.....#".toList.toArray,
"#################".toList.toArray],1,3,0⟩
def tape : List Nat := [[3,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,2,1,1,3,6,1,1,2,1,1,1,1,1,1,3,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L03_careful

namespace L03_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#...#....h#...X.#".toList.toArray,
"#.#.#.#.#.#.#.#.#".toList.toArray,
"#@#...#...#.....#".toList.toArray,
"#...#..#..#..#..#".toList.toArray,
"#.#..!....#...#.#".toList.toArray,
"#..###..#.#.....#".toList.toArray,
"#.....#...B.###.#".toList.toArray,
"#...#...#.#.....#".toList.toArray,
"#......b..#.....#".toList.toArray,
"#################".toList.toArray],1,3,0⟩
def tape : List Nat := [[5,1,1,4,1,1,4,4,1,1,1,1,3,1,1,1,1,1,1,1,1,3,1,1,3,1,1,3,1,1,6,1,1,2,1,1,1,1,1,1,3,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L03_survey

namespace L04_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#..#..#...B.###.#".toList.toArray,
"#.##..##..#.....#".toList.toArray,
"#....!....#.###.#".toList.toArray,
"#.###.#...#.....#".toList.toArray,
"#.....#.b.#..##.#".toList.toArray,
"#..#..!#..#.....#".toList.toArray,
"#.@##.###.#.#.#.#".toList.toArray,
"#........h#....X#".toList.toArray,
"#################".toList.toArray],2,8,3⟩
def tape : List Nat := [[1,1,5,5,5,1,1,5,5,5,3,5,5,1,4,4,4,4,6,1,1,5,5,5,1,5,5,1,5,5,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L04_direct

namespace L04_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#..#..#...B.###.#".toList.toArray,
"#.##..##..#.....#".toList.toArray,
"#....!....#.###.#".toList.toArray,
"#.###.#...#.....#".toList.toArray,
"#.....#.b.#..##.#".toList.toArray,
"#..#..!#..#.....#".toList.toArray,
"#.@##.###.#.#.#.#".toList.toArray,
"#........h#....X#".toList.toArray,
"#################".toList.toArray],2,8,3⟩
def tape : List Nat := [[2,2,1,2,1,1,1,1,1,1,1,2,1,1,1,2,1,3,1,1,1,1,3,1,6,1,1,3,1,1,1,1,1,1,1,2,1,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L04_careful

namespace L04_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#..#..#...B.###.#".toList.toArray,
"#.##..##..#.....#".toList.toArray,
"#....!....#.###.#".toList.toArray,
"#.###.#...#.....#".toList.toArray,
"#.....#.b.#..##.#".toList.toArray,
"#..#..!#..#.....#".toList.toArray,
"#.@##.###.#.#.#.#".toList.toArray,
"#........h#....X#".toList.toArray,
"#################".toList.toArray],2,8,3⟩
def tape : List Nat := [[7,5,5,5,5,5,5,5,1,1,1,2,1,3,1,1,1,1,3,1,6,1,1,3,1,1,1,1,1,1,1,2,1,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L04_survey

namespace L05_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#@...#...h#.....#".toList.toArray,
"#.#..#.#b.#.X.#.#".toList.toArray,
"#....#....#.#...#".toList.toArray,
"#.###..##.#...#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#.#..##...#..#..#".toList.toArray,
"#..!....#.#..#..#".toList.toArray,
"#...###...B.##..#".toList.toArray,
"#.........#.....#".toList.toArray,
"#################".toList.toArray],1,1,0⟩
def tape : List Nat := [[5,5,5,5,1,1,1,1,1,4,4,1,1,4,1,5,5,5,5,5,5,6,1,1,4,4,4,4,4,4,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L05_direct

namespace L05_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#@...#...h#.....#".toList.toArray,
"#.#..#.#b.#.X.#.#".toList.toArray,
"#....#....#.#...#".toList.toArray,
"#.###..##.#...#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#.#..##...#..#..#".toList.toArray,
"#..!....#.#..#..#".toList.toArray,
"#...###...B.##..#".toList.toArray,
"#.........#.....#".toList.toArray,
"#################".toList.toArray],1,1,0⟩
def tape : List Nat := [[3,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,2,1,2,1,3,1,1,1,1,1,2,6,1,1,2,1,1,1,1,1,1,3,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L05_careful

namespace L05_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#@...#...h#.....#".toList.toArray,
"#.#..#.#b.#.X.#.#".toList.toArray,
"#....#....#.#...#".toList.toArray,
"#.###..##.#...#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#.#..##...#..#..#".toList.toArray,
"#..!....#.#..#..#".toList.toArray,
"#...###...B.##..#".toList.toArray,
"#.........#.....#".toList.toArray,
"#################".toList.toArray],1,1,0⟩
def tape : List Nat := [[5,5,5,5,1,1,1,1,1,1,1,1,4,4,4,4,2,2,1,2,1,1,2,1,3,1,1,1,1,1,2,6,1,1,2,1,1,1,1,1,1,3,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L05_survey

namespace L06_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#.##.#.##.#.#.#.#".toList.toArray,
"#....#....#...#.#".toList.toArray,
"#.##.!.#..B...#.#".toList.toArray,
"#..#....#.#.....#".toList.toArray,
"#@...##...#.#...#".toList.toArray,
"#..#....#.#..##.#".toList.toArray,
"#..####.#.#...#.#".toList.toArray,
"#.....b..h#...X.#".toList.toArray,
"#################".toList.toArray],1,6,0⟩
def tape : List Nat := [[1,5,5,5,1,1,1,1,1,1,1,4,4,4,4,4,6,1,1,5,5,5,1,5,1,5,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L06_direct

namespace L06_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#.##.#.##.#.#.#.#".toList.toArray,
"#....#....#...#.#".toList.toArray,
"#.##.!.#..B...#.#".toList.toArray,
"#..#....#.#.....#".toList.toArray,
"#@...##...#.#...#".toList.toArray,
"#..#....#.#..##.#".toList.toArray,
"#..####.#.#...#.#".toList.toArray,
"#.....b..h#...X.#".toList.toArray,
"#################".toList.toArray],1,6,0⟩
def tape : List Nat := [[1,3,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,3,6,1,1,3,1,1,1,1,1,2,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L06_careful

namespace L06_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.........#.....#".toList.toArray,
"#.##.#.##.#.#.#.#".toList.toArray,
"#....#....#...#.#".toList.toArray,
"#.##.!.#..B...#.#".toList.toArray,
"#..#....#.#.....#".toList.toArray,
"#@...##...#.#...#".toList.toArray,
"#..#....#.#..##.#".toList.toArray,
"#..####.#.#...#.#".toList.toArray,
"#.....b..h#...X.#".toList.toArray,
"#################".toList.toArray],1,6,0⟩
def tape : List Nat := [[1,1,1,5,1,1,1,5,5,1,1,2,2,1,1,1,2,2,1,1,1,2,1,1,1,1,1,3,6,1,1,3,1,1,1,1,1,2,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L06_survey

namespace L07_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#....#...h#..X..#".toList.toArray,
"#.##.#.##.#.##..#".toList.toArray,
"#....!..b.#..#..#".toList.toArray,
"#.###.#...#..#..#".toList.toArray,
"#.....#...#.....#".toList.toArray,
"#..#..!#..B.##..#".toList.toArray,
"#.##.#.#..#...#.#".toList.toArray,
"#....#....#.....#".toList.toArray,
"#..@......#.....#".toList.toArray,
"#################".toList.toArray],3,9,3⟩
def tape : List Nat := [[1,5,1,1,1,5,1,1,5,5,5,5,3,5,5,5,6,1,1,4,4,4,4,4,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L07_direct

namespace L07_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#....#...h#..X..#".toList.toArray,
"#.##.#.##.#.##..#".toList.toArray,
"#....!..b.#..#..#".toList.toArray,
"#.###.#...#..#..#".toList.toArray,
"#.....#...#.....#".toList.toArray,
"#..#..!#..B.##..#".toList.toArray,
"#.##.#.#..#...#.#".toList.toArray,
"#....#....#.....#".toList.toArray,
"#..@......#.....#".toList.toArray,
"#################".toList.toArray],3,9,3⟩
def tape : List Nat := [[3,1,1,1,1,1,2,1,1,1,1,1,1,2,2,1,1,1,2,1,6,1,1,2,1,1,1,1,1,3,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L07_careful

namespace L07_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#....#...h#..X..#".toList.toArray,
"#.##.#.##.#.##..#".toList.toArray,
"#....!..b.#..#..#".toList.toArray,
"#.###.#...#..#..#".toList.toArray,
"#.....#...#.....#".toList.toArray,
"#..#..!#..B.##..#".toList.toArray,
"#.##.#.#..#...#.#".toList.toArray,
"#....#....#.....#".toList.toArray,
"#..@......#.....#".toList.toArray,
"#################".toList.toArray],3,9,3⟩
def tape : List Nat := [[1,5,1,1,1,5,1,1,5,1,1,5,5,5,2,2,1,1,3,1,2,1,1,1,2,1,6,1,1,2,1,1,1,1,1,3,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L07_survey

namespace L08_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#@........#.....#".toList.toArray,
"#.##...##.#.##..#".toList.toArray,
"#...#.#...#.....#".toList.toArray,
"#.#....b#.#.#.#.#".toList.toArray,
"#..##!##..B...#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#.#.##.##.#.#.#.#".toList.toArray,
"#...#.....#...#.#".toList.toArray,
"#........h#....X#".toList.toArray,
"#################".toList.toArray],1,1,0⟩
def tape : List Nat := [[1,1,1,1,5,5,5,1,1,4,1,1,5,5,6,1,1,1,1,5,5,5,5,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L08_direct

namespace L08_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#@........#.....#".toList.toArray,
"#.##...##.#.##..#".toList.toArray,
"#...#.#...#.....#".toList.toArray,
"#.#....b#.#.#.#.#".toList.toArray,
"#..##!##..B...#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#.#.##.##.#.#.#.#".toList.toArray,
"#...#.....#...#.#".toList.toArray,
"#........h#....X#".toList.toArray,
"#################".toList.toArray],1,1,0⟩
def tape : List Nat := [[1,1,1,1,3,1,1,1,2,1,1,2,1,3,1,1,3,1,1,2,6,1,1,1,1,3,1,1,1,1,2,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L08_careful

namespace L08_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#@........#.....#".toList.toArray,
"#.##...##.#.##..#".toList.toArray,
"#...#.#...#.....#".toList.toArray,
"#.#....b#.#.#.#.#".toList.toArray,
"#..##!##..B...#.#".toList.toArray,
"#....!....#.....#".toList.toArray,
"#.#.##.##.#.#.#.#".toList.toArray,
"#...#.....#...#.#".toList.toArray,
"#........h#....X#".toList.toArray,
"#################".toList.toArray],1,1,0⟩
def tape : List Nat := [[1,1,1,1,1,1,1,1,5,5,5,5,5,5,5,5,2,1,1,1,1,1,1,2,1,1,2,1,2,2,1,3,1,1,3,1,1,2,6,1,1,1,1,3,1,1,1,1,2,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L08_survey

namespace L09_direct
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.......b.#.....#".toList.toArray,
"#..##.##..#.#...#".toList.toArray,
"#....!..#.B...#.#".toList.toArray,
"#.#.##..#.#..##.#".toList.toArray,
"#.....#...#.....#".toList.toArray,
"#..#....#.#..##.#".toList.toArray,
"#..#.#....#...#.#".toList.toArray,
"#....#.##.#..#.X#".toList.toArray,
"#@.......h#.....#".toList.toArray,
"#################".toList.toArray],1,9,3⟩
def tape : List Nat := [[1,1,1,1,1,1,1,1,5,5,5,5,5,5,5,5,3,5,5,6,1,1,1,5,5,1,1,1,5,5,3,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L09_direct

namespace L09_careful
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.......b.#.....#".toList.toArray,
"#..##.##..#.#...#".toList.toArray,
"#....!..#.B...#.#".toList.toArray,
"#.#.##..#.#..##.#".toList.toArray,
"#.....#...#.....#".toList.toArray,
"#..#....#.#..##.#".toList.toArray,
"#..#.#....#...#.#".toList.toArray,
"#....#.##.#..#.X#".toList.toArray,
"#@.......h#.....#".toList.toArray,
"#################".toList.toArray],1,9,3⟩
def tape : List Nat := [[1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,3,1,1,2,6,1,1,1,3,1,1,2,1,1,1,3,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L09_careful

namespace L09_survey
def room : ProofGrid.Room := ⟨#["#################".toList.toArray,
"#.......b.#.....#".toList.toArray,
"#..##.##..#.#...#".toList.toArray,
"#....!..#.B...#.#".toList.toArray,
"#.#.##..#.#..##.#".toList.toArray,
"#.....#...#.....#".toList.toArray,
"#..#....#.#..##.#".toList.toArray,
"#..#.#....#...#.#".toList.toArray,
"#....#.##.#..#.X#".toList.toArray,
"#@.......h#.....#".toList.toArray,
"#################".toList.toArray],1,9,3⟩
def tape : List Nat := [[5,5,5,5,5,5,5,5,1,1,1,1,1,1,1,1,2,1,2,1,2,1,3,1,2,6,1,1,1,3,1,1,2,1,1,1,3,1,1,6]].flatten

theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel
end L09_survey
end Authored
