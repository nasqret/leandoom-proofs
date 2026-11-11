import LeanDoomProofs.CombatWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding CombatSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def twoImp_state_171 : Simulation := {
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
          { floor := 0, ceiling := 2, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 85 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 443, tics := 2, angle := { raw := 2147483648 } }, age := 171 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 171 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65242 }, y := { raw := 2097591 } },
      flash := { frame := 0, tics := 0, x := { raw := 65242 }, y := { raw := 2097591 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 16, count := 1, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2629177 }, z := { raw := 2686996 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2629177 }, momy := { raw := 10674 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686996 }, bob := { raw := 529 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 131072 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 131072 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 131072 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 131072 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2629177 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 10674 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 131072 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 2, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 170 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 171,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2629177 }, momy := { raw := 11779 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2629177 }, momy := { raw := 10674 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 171,
  collected := #[3], message := "Door activated", messageTicks := 104 }

def twoImp_state_172 : Simulation := {
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
          { floor := 0, ceiling := 4, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 86 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 443, tics := 1, angle := { raw := 2147483648 } }, age := 172 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 172 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65331 }, y := { raw := 2097534 } },
      flash := { frame := 0, tics := 0, x := { raw := 65331 }, y := { raw := 2097534 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 16, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2639851 }, z := { raw := 2686925 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2639851 }, momy := { raw := 9673 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686925 }, bob := { raw := 434 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 262144 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 262144 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 262144 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 262144 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2639851 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 9673 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 262144 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 4, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 171 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 172,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2639851 }, momy := { raw := 10674 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2639851 }, momy := { raw := 9673 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 172,
  collected := #[3], message := "Door activated", messageTicks := 103 }

def twoImp_state_173 : Simulation := {
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
          { floor := 0, ceiling := 6, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 87 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, angle := { raw := 2147483648 } }, age := 173 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 173 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65399 }, y := { raw := 2097480 } },
      flash := { frame := 0, tics := 0, x := { raw := 65399 }, y := { raw := 2097480 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 16, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2649524 }, z := { raw := 2686883 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2649524 }, momy := { raw := 8766 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686883 }, bob := { raw := 356 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 393216 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 393216 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 393216 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 393216 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2649524 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 8766 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 393216 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 6, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 172 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 173,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2649524 }, momy := { raw := 9673 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2649524 }, momy := { raw := 8766 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 173,
  collected := #[3], message := "Door activated", messageTicks := 102 }

def twoImp_state_174 : Simulation := {
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
          { floor := 0, ceiling := 8, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 88 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 9, angle := { raw := 2147483648 } }, age := 174 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 174 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65451 }, y := { raw := 2097432 } },
      flash := { frame := 0, tics := 0, x := { raw := 65451 }, y := { raw := 2097432 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 15, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2658290 }, z := { raw := 2686865 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2658290 }, momy := { raw := 7944 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686865 }, bob := { raw := 293 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 524288 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 524288 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 524288 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 524288 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2658290 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 7944 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 524288 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 8, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 173 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 174,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2658290 }, momy := { raw := 8766 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2658290 }, momy := { raw := 7944 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 174,
  collected := #[3], message := "Door activated", messageTicks := 101 }

def twoImp_state_175 : Simulation := {
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
          { floor := 0, ceiling := 10, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 89 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 8, angle := { raw := 2147483648 } }, age := 175 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 175 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65489 }, y := { raw := 2097387 } },
      flash := { frame := 0, tics := 0, x := { raw := 65489 }, y := { raw := 2097387 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 14, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2666234 }, z := { raw := 2686865 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2666234 }, momy := { raw := 7199 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686865 }, bob := { raw := 240 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 655360 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 655360 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 655360 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 655360 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2666234 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 7199 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 655360 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 10, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 174 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 175,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2666234 }, momy := { raw := 7944 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2666234 }, momy := { raw := 7199 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 175,
  collected := #[3], message := "Door activated", messageTicks := 100 }

def twoImp_state_176 : Simulation := {
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
          { floor := 0, ceiling := 12, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 90 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 7, angle := { raw := 2147483648 } }, age := 176 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 176 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65516 }, y := { raw := 2097348 } },
      flash := { frame := 0, tics := 0, x := { raw := 65516 }, y := { raw := 2097348 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 13, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2673433 }, z := { raw := 2686878 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2673433 }, momy := { raw := 6524 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686878 }, bob := { raw := 197 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 786432 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 786432 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 786432 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 786432 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2673433 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 6524 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 786432 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 12, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 175 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 176,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2673433 }, momy := { raw := 7199 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2673433 }, momy := { raw := 6524 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 176,
  collected := #[3], message := "Door activated", messageTicks := 99 }

def twoImp_state_177 : Simulation := {
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
          { floor := 0, ceiling := 14, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 91 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 6, angle := { raw := 2147483648 } }, age := 177 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 177 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097313 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097313 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 12, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2679957 }, z := { raw := 2686897 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2679957 }, momy := { raw := 5912 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686897 }, bob := { raw := 162 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 917504 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 917504 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 917504 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 917504 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2679957 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 5912 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 917504 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 14, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 176 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 177,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2679957 }, momy := { raw := 6524 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2679957 }, momy := { raw := 5912 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 177,
  collected := #[3], message := "Door activated", messageTicks := 98 }

def twoImp_state_178 : Simulation := {
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
          { floor := 0, ceiling := 16, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 92 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 5, angle := { raw := 2147483648 } }, age := 178 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 178 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65549 }, y := { raw := 2097284 } },
      flash := { frame := 0, tics := 0, x := { raw := 65549 }, y := { raw := 2097284 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 11, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2685869 }, z := { raw := 2686919 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2685869 }, momy := { raw := 5357 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686919 }, bob := { raw := 133 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1048576 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1048576 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1048576 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1048576 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2685869 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 5357 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 1048576 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 16, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 177 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 178,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2685869 }, momy := { raw := 5912 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2685869 }, momy := { raw := 5357 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 178,
  collected := #[3], message := "Door activated", messageTicks := 97 }

def twoImp_state_179 : Simulation := {
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
          { floor := 0, ceiling := 18, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 93 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 4, angle := { raw := 2147483648 } }, age := 179 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 179 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65557 }, y := { raw := 2097258 } },
      flash := { frame := 0, tics := 0, x := { raw := 65557 }, y := { raw := 2097258 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 10, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2691226 }, z := { raw := 2686940 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2691226 }, momy := { raw := 4854 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686940 }, bob := { raw := 109 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1179648 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1179648 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1179648 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1179648 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2691226 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 4854 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 1179648 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 18, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 178 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 179,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2691226 }, momy := { raw := 5357 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2691226 }, momy := { raw := 4854 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 179,
  collected := #[3], message := "Door activated", messageTicks := 96 }

def twoImp_state_180 : Simulation := {
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
          { floor := 0, ceiling := 20, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 94 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 3, angle := { raw := 2147483648 } }, age := 180 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 180 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65561 }, y := { raw := 2097237 } },
      flash := { frame := 0, tics := 0, x := { raw := 65561 }, y := { raw := 2097237 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 9, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2696080 }, z := { raw := 2686959 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2696080 }, momy := { raw := 4398 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686959 }, bob := { raw := 89 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1310720 } }, special := Bool.true,
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
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1310720 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1310720 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1310720 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2696080 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 4398 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 1310720 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
                      cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" },
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
                          { floor := 0, ceiling := 20, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 179 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 180,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2696080 }, momy := { raw := 4854 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2696080 }, momy := { raw := 4398 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 180,
  collected := #[3], message := "Door activated", messageTicks := 95 }

def twoImp_inputs_022 : List UInt32 := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

end LeanDoomProofs
