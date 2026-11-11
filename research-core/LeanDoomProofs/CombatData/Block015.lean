import LeanDoomProofs.CombatWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding CombatSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def twoImp_state_118 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      vertices :=
        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 1 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 2 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
      nodes :=
        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 }, right := Doom.Child.subsector 0,
            left := Doom.Child.subsector 1 },
          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 }, right := Doom.Child.node 0,
            left := Doom.Child.subsector 2 }],
      reject := { data := #[0, 0] },
      blockmap :=
        { origin := { x := -256, y := -128 }, width := 5, height := 2,
          cells :=
            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
  original :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 7 }],
      vertices :=
        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 1 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 2 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
      nodes :=
        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 }, right := Doom.Child.subsector 0,
            left := Doom.Child.subsector 1 },
          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 }, right := Doom.Child.node 0,
            left := Doom.Child.subsector 2 }],
      reject := { data := #[0, 0] },
      blockmap :=
        { origin := { x := -256, y := -128 }, width := 5, height := 2,
          cells :=
            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
  combatEnabled := Bool.true,
  actors :=
    #[{ thing := 1, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 2, frame := 453, tics := 6, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 96, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 32 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 5, angle := { raw := 2147483648 } }, age := 118 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 118 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 116242 }, y := { raw := 2191929 } },
      flash := { frame := 0, tics := 0, x := { raw := 116242 }, y := { raw := 2191929 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 23, count := 3, priority := 7, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], bonus := 5, message := "GOTBLUECARD" } },
      camera := { x := { raw := -9103240 }, y := { raw := -3144143 }, z := { raw := 2641869 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -9103240 }, y := { raw := -3144143 }, momx := { raw := 152126 }, momy := { raw := 17 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2641869 }, bob := { raw := 107491 } },
      scene :=
        Option.some
          {
            grid :=
              { origin := { x := -256, y := -128 }, width := 5, height := 2,
                cells :=
                  #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] },
            lines :=
              #[{ x := { raw := -16777216 }, y := { raw := -4194304 }, dx := { raw := 0 }, dy := { raw := 8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := -16777216 },
                      right := { raw := -16777216 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := -16777216 }, y := { raw := 4194304 }, dx := { raw := 20971520 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := -16777216 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 4194304 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 0 } }, special := Bool.true,
                  twoSided := Bool.true },
                { x := { raw := 4194304 }, y := { raw := -4194304 }, dx := { raw := -20971520 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := -16777216 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 4194304 }, y := { raw := 4194304 }, dx := { raw := 2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 14680064 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := 6291456 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 20971520 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 20971520 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true,
                  special := Bool.true },
                { x := { raw := 20971520 }, y := { raw := -4194304 }, dx := { raw := -14680064 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true }],
            things :=
              #[{ x := { raw := -9103240 }, y := { raw := -3144143 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 152126 }, momy := { raw := 17 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 14680064 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[0], #[], #[], #[], #[], #[2], #[], #[], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 0 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], bonus := 5, message := "GOTBLUECARD" },
                  profile := { commercial := Bool.false } },
            lighting :=
              Option.some
                {
                  map :=
                    { name := "TWOIMP01",
                      things :=
                        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
                          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
                          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
                      vertices :=
                        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
                          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
                      lines :=
                        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
                          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
                          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
                          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
                          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
                          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
                          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
                      sides :=
                        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 0 },
                          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 1 },
                          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 2 },
                          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
                      sectors :=
                        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 },
                          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 },
                          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 }],
                      segs :=
                        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
                          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
                          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
                          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
                          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
                          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
                          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
                          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
                          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
                          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
                          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
                          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
                      subsectors :=
                        #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
                      nodes :=
                        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
                            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
                            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 },
                            right := Doom.Child.subsector 0, left := Doom.Child.subsector 1 },
                          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
                            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
                            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 },
                            right := Doom.Child.node 0, left := Doom.Child.subsector 2 }],
                      reject := { data := #[0, 0] },
                      blockmap :=
                        { origin := { x := -256, y := -128 }, width := 5, height := 2,
                          cells :=
                            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
                  rng := { play := 29, misc := 117 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 118,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := -9103240 }, y := { raw := -3144143 }, momx := { raw := 167864 }, momy := { raw := 19 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := -9103240 }, y := { raw := -3144143 }, momx := { raw := 152126 }, momy := { raw := 17 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], bonus := 5, message := "GOTBLUECARD" } },
  ticks := 118, collected := #[3], message := "Picked up a blue keycard.", messageTicks := 98 }

def twoImp_state_119 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      vertices :=
        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 1 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 2 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
      nodes :=
        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 }, right := Doom.Child.subsector 0,
            left := Doom.Child.subsector 1 },
          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 }, right := Doom.Child.node 0,
            left := Doom.Child.subsector 2 }],
      reject := { data := #[0, 0] },
      blockmap :=
        { origin := { x := -256, y := -128 }, width := 5, height := 2,
          cells :=
            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
  original :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 7 }],
      vertices :=
        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 1 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 2 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
      nodes :=
        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 }, right := Doom.Child.subsector 0,
            left := Doom.Child.subsector 1 },
          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 }, right := Doom.Child.node 0,
            left := Doom.Child.subsector 2 }],
      reject := { data := #[0, 0] },
      blockmap :=
        { origin := { x := -256, y := -128 }, width := 5, height := 2,
          cells :=
            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
  combatEnabled := Bool.true,
  actors :=
    #[{ thing := 1, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 2, frame := 453, tics := 6, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 96, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 33 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 4, angle := { raw := 2147483648 } }, age := 119 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 119 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 153199 }, y := { raw := 2228243 } },
      flash := { frame := 0, tics := 0, x := { raw := 153199 }, y := { raw := 2228243 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 23, count := 2, priority := 7, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], bonus := 4, message := "GOTBLUECARD" } },
      camera := { x := { raw := -8899915 }, y := { raw := -3144107 }, z := { raw := 2637258 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -8899915 }, y := { raw := -3144107 }, momx := { raw := 184263 }, momy := { raw := 32 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2637258 }, bob := { raw := 157703 } },
      scene :=
        Option.some
          {
            grid :=
              { origin := { x := -256, y := -128 }, width := 5, height := 2,
                cells :=
                  #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] },
            lines :=
              #[{ x := { raw := -16777216 }, y := { raw := -4194304 }, dx := { raw := 0 }, dy := { raw := 8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := -16777216 },
                      right := { raw := -16777216 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := -16777216 }, y := { raw := 4194304 }, dx := { raw := 20971520 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := -16777216 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 4194304 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 0 } }, special := Bool.true,
                  twoSided := Bool.true },
                { x := { raw := 4194304 }, y := { raw := -4194304 }, dx := { raw := -20971520 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := -16777216 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 4194304 }, y := { raw := 4194304 }, dx := { raw := 2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 14680064 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := 6291456 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 20971520 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 20971520 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true,
                  special := Bool.true },
                { x := { raw := 20971520 }, y := { raw := -4194304 }, dx := { raw := -14680064 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true }],
            things :=
              #[{ x := { raw := -8899915 }, y := { raw := -3144107 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 184263 }, momy := { raw := 32 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 14680064 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[0], #[], #[], #[], #[], #[2], #[], #[], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 0 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], bonus := 4, message := "GOTBLUECARD" },
                  profile := { commercial := Bool.false } },
            lighting :=
              Option.some
                {
                  map :=
                    { name := "TWOIMP01",
                      things :=
                        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
                          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
                          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
                      vertices :=
                        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
                          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
                      lines :=
                        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
                          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
                          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
                          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
                          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
                          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
                          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
                      sides :=
                        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 0 },
                          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 1 },
                          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 2 },
                          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
                      sectors :=
                        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 },
                          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 },
                          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 }],
                      segs :=
                        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
                          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
                          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
                          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
                          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
                          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
                          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
                          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
                          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
                          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
                          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
                          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
                      subsectors :=
                        #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
                      nodes :=
                        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
                            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
                            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 },
                            right := Doom.Child.subsector 0, left := Doom.Child.subsector 1 },
                          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
                            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
                            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 },
                            right := Doom.Child.node 0, left := Doom.Child.subsector 2 }],
                      reject := { data := #[0, 0] },
                      blockmap :=
                        { origin := { x := -256, y := -128 }, width := 5, height := 2,
                          cells :=
                            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
                  rng := { play := 29, misc := 118 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 119,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := -8899915 }, y := { raw := -3144107 }, momx := { raw := 203325 }, momy := { raw := 36 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := -8899915 }, y := { raw := -3144107 }, momx := { raw := 184263 }, momy := { raw := 32 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], bonus := 4, message := "GOTBLUECARD" } },
  ticks := 119, collected := #[3], message := "Picked up a blue keycard.", messageTicks := 97 }

def twoImp_state_120 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      vertices :=
        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 1 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 2 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
      nodes :=
        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 }, right := Doom.Child.subsector 0,
            left := Doom.Child.subsector 1 },
          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 }, right := Doom.Child.node 0,
            left := Doom.Child.subsector 2 }],
      reject := { data := #[0, 0] },
      blockmap :=
        { origin := { x := -256, y := -128 }, width := 5, height := 2,
          cells :=
            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
  original :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 7 }],
      vertices :=
        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 1 },
          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL", sector := 2 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 },
          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
      nodes :=
        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 }, right := Doom.Child.subsector 0,
            left := Doom.Child.subsector 1 },
          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 }, right := Doom.Child.node 0,
            left := Doom.Child.subsector 2 }],
      reject := { data := #[0, 0] },
      blockmap :=
        { origin := { x := -256, y := -128 }, width := 5, height := 2,
          cells :=
            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
  combatEnabled := Bool.true,
  actors :=
    #[{ thing := 1, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 2, frame := 453, tics := 6, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 96, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 34 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 3, angle := { raw := 2147483648 } }, age := 120 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 120 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 199769 }, y := { raw := 2260588 } },
      flash := { frame := 0, tics := 0, x := { raw := 199769 }, y := { raw := 2260588 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 23, count := 1, priority := 7, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], bonus := 3, message := "GOTBLUECARD" } },
      camera := { x := { raw := -8664453 }, y := { raw := -3144056 }, z := { raw := 2648881 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -8664453 }, y := { raw := -3144056 }, momx := { raw := 213387 }, momy := { raw := 46 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2648881 }, bob := { raw := 211495 } },
      scene :=
        Option.some
          {
            grid :=
              { origin := { x := -256, y := -128 }, width := 5, height := 2,
                cells :=
                  #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] },
            lines :=
              #[{ x := { raw := -16777216 }, y := { raw := -4194304 }, dx := { raw := 0 }, dy := { raw := 8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := -16777216 },
                      right := { raw := -16777216 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := -16777216 }, y := { raw := 4194304 }, dx := { raw := 20971520 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := -16777216 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 4194304 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 0 } }, special := Bool.true,
                  twoSided := Bool.true },
                { x := { raw := 4194304 }, y := { raw := -4194304 }, dx := { raw := -20971520 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := -16777216 },
                      right := { raw := 4194304 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 4194304 }, y := { raw := 4194304 }, dx := { raw := 2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal, front := { floor := { raw := 0 }, ceiling := { raw := 0 } },
                  blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 14680064 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := 4194304 }, left := { raw := 6291456 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 20971520 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 20971520 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true,
                  special := Bool.true },
                { x := { raw := 20971520 }, y := { raw := -4194304 }, dx := { raw := -14680064 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true }],
            things :=
              #[{ x := { raw := -8664453 }, y := { raw := -3144056 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 213387 }, momy := { raw := 46 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 14680064 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[0], #[], #[], #[], #[], #[2], #[], #[], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 0 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], bonus := 3, message := "GOTBLUECARD" },
                  profile := { commercial := Bool.false } },
            lighting :=
              Option.some
                {
                  map :=
                    { name := "TWOIMP01",
                      things :=
                        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
                          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
                          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
                      vertices :=
                        #[{ x := -256, y := -64 }, { x := -256, y := 64 }, { x := 64, y := 64 }, { x := 64, y := -64 },
                          { x := 96, y := 64 }, { x := 96, y := -64 }, { x := 320, y := 64 }, { x := 320, y := -64 }],
                      lines :=
                        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 2, v2 := 3, flags := 4, special := 26, tag := 0, front := 0, back := 1 },
                          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 2, v2 := 4, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
                          { v1 := 4, v2 := 5, flags := 4, special := 0, tag := 0, front := 1, back := 2 },
                          { v1 := 5, v2 := 3, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
                          { v1 := 4, v2 := 6, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
                          { v1 := 6, v2 := 7, flags := 1, special := 11, tag := 0, front := 3, back := 65535 },
                          { v1 := 7, v2 := 5, flags := 1, special := 0, tag := 0, front := 2, back := 65535 }],
                      sides :=
                        #[{ xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 0 },
                          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 1 },
                          { xOffset := 0, yOffset := 0, upper := "DOOR", lower := "LOWER", middle := "WALL",
                            sector := 2 },
                          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 2 }],
                      sectors :=
                        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 },
                          { floor := 0, ceiling := 0, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 },
                          { floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 }],
                      segs :=
                        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
                          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
                          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
                          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 },
                          { v1 := 3, v2 := 2, angle := 16384, linedef := 2, side := 1, offset := 0 },
                          { v1 := 2, v2 := 4, angle := 0, linedef := 4, side := 0, offset := 0 },
                          { v1 := 4, v2 := 5, angle := 49152, linedef := 5, side := 0, offset := 0 },
                          { v1 := 5, v2 := 3, angle := 32768, linedef := 6, side := 0, offset := 0 },
                          { v1 := 5, v2 := 4, angle := 16384, linedef := 5, side := 1, offset := 0 },
                          { v1 := 4, v2 := 6, angle := 0, linedef := 7, side := 0, offset := 0 },
                          { v1 := 6, v2 := 7, angle := 49152, linedef := 8, side := 0, offset := 0 },
                          { v1 := 7, v2 := 5, angle := 32768, linedef := 9, side := 0, offset := 0 }],
                      subsectors :=
                        #[{ count := 4, first := 0 }, { count := 4, first := 4 }, { count := 4, first := 8 }],
                      nodes :=
                        #[{ origin := { x := 64, y := 64 }, delta := { x := 0, y := -128 },
                            rightBounds := { top := 64, bottom := -64, left := -256, right := 64 },
                            leftBounds := { top := 64, bottom := -64, left := 64, right := 96 },
                            right := Doom.Child.subsector 0, left := Doom.Child.subsector 1 },
                          { origin := { x := 96, y := 64 }, delta := { x := 0, y := -128 },
                            rightBounds := { top := 64, bottom := -64, left := -256, right := 96 },
                            leftBounds := { top := 64, bottom := -64, left := 96, right := 320 },
                            right := Doom.Child.node 0, left := Doom.Child.subsector 2 }],
                      reject := { data := #[0, 0] },
                      blockmap :=
                        { origin := { x := -256, y := -128 }, width := 5, height := 2,
                          cells :=
                            #[#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                              #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], #[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]] } },
                  rng := { play := 29, misc := 119 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 120,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := -8664453 }, y := { raw := -3144056 }, momx := { raw := 235462 }, momy := { raw := 51 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := -8664453 }, y := { raw := -3144056 }, momx := { raw := 213387 }, momy := { raw := 46 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], bonus := 3, message := "GOTBLUECARD" } },
  ticks := 120, collected := #[3], message := "Picked up a blue keycard.", messageTicks := 96 }

def twoImp_inputs_015 : List UInt32 := [2, 2, 2]

end LeanDoomProofs
