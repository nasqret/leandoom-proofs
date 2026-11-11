import Std

/-! # The two Episode One itineraries

This is the level-successor semantics of the browser port's ordinary Episode One
completions. Map success is one atomic event here. The model allows a secret exit
where the registered map has that exit trigger. It does not simulate player inputs.

G_DoCompleted and G_DoWorldDone are the source of the map-index arithmetic.
https://github.com/Saketh-Chandra/doom-wasm-pwa/blob/a77edfd8bbc7e66b119a49c954f69a8b24e59206/src/doom/g_game.c#L1204-L1263
https://github.com/Saketh-Chandra/doom-wasm-pwa/blob/a77edfd8bbc7e66b119a49c954f69a8b24e59206/src/doom/g_game.c#L1344-L1349
-/

namespace ClassicCampaign

inductive MapId | m1 | m2 | m3 | m4 | m5 | m6 | m7 | m8 | m9
  deriving DecidableEq, Repr
open MapId

/-- Ordinary map-successor edges. Completing M8 enters the episode finale. -/
def successors : MapId → List MapId
  | m1 => [m2] | m2 => [m3] | m3 => [m4,m9] | m4 => [m5]
  | m5 => [m6] | m6 => [m7] | m7 => [m8] | m8 => [] | m9 => [m4]

/-- A completed itinerary lists visited maps, including its first and last. -/
inductive Complete : MapId → List MapId → Prop
  | finale : Complete m8 [m8]
  | next {a b rest} : b ∈ successors a → Complete b rest → Complete a (a :: rest)

def normal : List MapId := [m1,m2,m3,m4,m5,m6,m7,m8]
def secret : List MapId := [m1,m2,m3,m9,m4,m5,m6,m7,m8]

private def tails : MapId → List (List MapId)
  | m1 => [normal,secret]
  | m2 => [[m2,m3,m4,m5,m6,m7,m8],[m2,m3,m9,m4,m5,m6,m7,m8]]
  | m3 => [[m3,m4,m5,m6,m7,m8],[m3,m9,m4,m5,m6,m7,m8]]
  | m4 => [[m4,m5,m6,m7,m8]] | m5 => [[m5,m6,m7,m8]]
  | m6 => [[m6,m7,m8]] | m7 => [[m7,m8]] | m8 => [[m8]]
  | m9 => [[m9,m4,m5,m6,m7,m8]]

/-- Every allowed edge prepends a map to one of the target's complete tails. -/
private theorem prepend_tail {a b rest} (edge : b ∈ successors a) (tail : rest ∈ tails b) :
    a :: rest ∈ tails a := by
  cases a <;> cases b <;> simp_all [successors, tails, normal, secret]

private theorem only_tails {a maps} (h : Complete a maps) : maps ∈ tails a := by
  induction h with
  | finale => simp [tails]
  | next edge _ ih => exact prepend_tail edge ih

private theorem follow {a b rest} (h : b ∈ successors a) (t : Complete b (b :: rest)) :
    Complete a (a :: b :: rest) := Complete.next h t

theorem normal_complete : Complete m1 normal := by
  unfold normal
  repeat' (apply follow <;> first | decide | skip)
  exact Complete.finale

theorem secret_complete : Complete m1 secret := by
  unfold secret
  repeat' (apply follow <;> first | decide | skip)
  exact Complete.finale

/-- Starting at M1, the normal and secret itineraries are the only complete itineraries. -/
theorem itinerary_iff (maps : List MapId) :
    Complete m1 maps ↔ maps = normal ∨ maps = secret := by
  constructor
  · intro h
    simpa [tails] using only_tails h
  · rintro (rfl | rfl)
    · exact normal_complete
    · exact secret_complete

/-- Both allowed map counts occur and exclude every other natural number. -/
theorem attained_lengths (n : Nat) :
    (∃ maps, Complete m1 maps ∧ maps.length = n) ↔ n = 8 ∨ n = 9 := by
  constructor
  · rintro ⟨maps,h,rfl⟩
    rcases (itinerary_iff maps).mp h with rfl | rfl <;> decide
  · rintro (rfl | rfl)
    · exact ⟨normal, normal_complete, rfl⟩
    · exact ⟨secret, secret_complete, rfl⟩

end ClassicCampaign
