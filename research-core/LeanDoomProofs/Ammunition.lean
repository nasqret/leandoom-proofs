import Doom.Proofs.Firing
import LeanDoomProofs.Trace

namespace LeanDoomProofs
open Doom

/-- The actual discharge function, iterated without pickups or reloading. -/
def dischargeMany (gun : Fire.Gun) : Nat → Int32 → Int32
  | 0, ammo => ammo
  | n+1, ammo => dischargeMany gun n (Fire.discharge gun ammo).ammoAfter

/-- This premise says every performed discharge is loaded. It is not a claim
that arbitrary Int32 values behave as natural-number ammunition. -/
def Loaded (gun : Fire.Gun) : Nat → Int32 → Prop
  | 0, _ => True
  | n+1, ammo => 0 < ammo.toInt ∧ Loaded gun n (Fire.discharge gun ammo).ammoAfter

theorem loaded_discharge_accounting (gun : Fire.Gun) (n : Nat) (ammo : Int32)
    (loaded : Loaded gun n ammo) :
    (dischargeMany gun n ammo).toInt = ammo.toInt - (n : Int) := by
  induction n generalizing ammo with
  | zero => simp [dischargeMany]
  | succ n ih =>
    obtain ⟨positive, rest⟩ := loaded
    have one := (Doom.Proofs.discharge_spends_one gun ammo positive).1
    have many := ih _ rest
    simp only [dischargeMany]
    rw [many, one]
    omega

/-- No finite loaded firing trace can spend more than its initial ammunition. -/
theorem loaded_shots_le_initial (gun : Fire.Gun) (n : Nat) (ammo : Int32)
    (nonnegative : 0 ≤ ammo.toInt) (loaded : Loaded gun n ammo) :
    (n : Int) ≤ ammo.toInt := by
  induction n generalizing ammo with
  | zero => exact nonnegative
  | succ n ih =>
    obtain ⟨positive, rest⟩ := loaded
    have one := Doom.Proofs.discharge_spends_one gun ammo positive
    have many := ih _ one.2 rest
    omega

/-- Pure damage-budget model. Its exact expression is the one used in
Combat.fireGun; relating a complete combat trace to this list remains a separate
obligation (misses, armor, barrels, fists and other damage must be handled). -/
def pelletDamage (roll : Nat) : Nat := 5 * (roll % 3 + 1)

theorem pellet_damage_bounds (roll : Nat) :
    5 ≤ pelletDamage roll ∧ pelletDamage roll ≤ 15 := by
  have h := Nat.mod_lt roll (by decide : 0 < 3)
  unfold pelletDamage
  omega

def damageSum (rolls : List Nat) : Nat := (rolls.map pelletDamage).sum

theorem damage_sum_bound (rolls : List Nat) : damageSum rolls ≤ 15 * rolls.length := by
  induction rolls with
  | nil => simp [damageSum]
  | cons r rs ih =>
    have h := (pellet_damage_bounds r).2
    simp only [damageSum, List.map_cons, List.sum_cons, List.length_cons]
    change pelletDamage r + damageSum rs ≤ 15 * (rs.length + 1)
    omega

/-- A direct-hit-only kill with H damage required needs ceiling(H/15) bullets.
The multiplication form avoids division edge cases and is often easier to reuse. -/
theorem direct_pistol_kill_bound (health : Nat) (rolls : List Nat)
    (lethal : health ≤ damageSum rolls) : health ≤ 15 * rolls.length :=
  Nat.le_trans lethal (damage_sum_bound rolls)

theorem imp_needs_four_direct_bullets (rolls : List Nat)
    (lethal : 60 ≤ damageSum rolls) : 4 ≤ rolls.length := by
  have h := direct_pistol_kill_bound 60 rolls lethal
  omega

theorem demon_needs_ten_direct_bullets (rolls : List Nat)
    (lethal : 150 ≤ damageSum rolls) : 10 ≤ rolls.length := by
  have h := direct_pistol_kill_bound 150 rolls lethal
  omega

/-- A four-maximal-roll witness in the damage-budget model; this does not claim
that four consecutive gameplay RNG draws equal 2. -/
theorem four_maximal_hits_suffice : damageSum [2,2,2,2] = 60 := by decide

/-- If firing times obey the actual pistol cycle duration, their span has this
bound. The timing discipline is explicit, since upstream Weapon.enter is partial. -/
theorem firing_schedule_bound (time : Nat → Nat) (n : Nat)
    (spacing : ∀ i, time i + Fire.Gun.pistol.cycleTics ≤ time (i+1)) :
    time 0 + 14 * n ≤ time n := by
  induction n with
  | zero => simp
  | succ n ih =>
    have h := spacing n
    rw [Doom.Proofs.pistol_cycle_fourteen] at h
    omega

theorem four_shots_need_42_tics (time : Nat → Nat)
    (spacing : ∀ i, time i + Fire.Gun.pistol.cycleTics ≤ time (i+1)) :
    time 0 + 42 ≤ time 3 := by
  simpa using firing_schedule_bound time 3 spacing

end LeanDoomProofs
