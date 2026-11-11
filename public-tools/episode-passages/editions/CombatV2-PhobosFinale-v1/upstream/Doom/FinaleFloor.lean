import Doom.Inventory

/-! Medium-skill, living-player contact with Doom sector 11. The level clock
is the value before movement. The episode has no god mode in this controller.
The clamp precedes the inventory's ordinary invulnerability and armor rules.
Source: Chocolate Doom 3.1.1 p_spec.c and p_inter.c. GPL-2.0-or-later. -/
namespace Doom.EpisodeFinale

def pulse (i : Inventory) : Inventory :=
  i.damage (min 20 (i.health - 1))

/-- The sector handler first applies damage when due, then tests the new health. -/
def contact (i : Inventory) (onFloor : Bool) (special clock : Nat) : Inventory × Bool :=
  if onFloor && special == 11 then
    let result := if clock % 32 == 0 then pulse i else i
    (result, result.health ≤ 10)
  else (i, false)

end Doom.EpisodeFinale
