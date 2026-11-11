import LeanDoomProofs.CombatWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding CombatSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def twoImp_state_181 : Simulation := {
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
          { floor := 0, ceiling := 22, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 95 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 2, angle := { raw := 2147483648 } }, age := 181 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 181 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65563 }, y := { raw := 2097219 } },
      flash := { frame := 0, tics := 0, x := { raw := 65563 }, y := { raw := 2097219 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 8, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2700478 }, z := { raw := 2686973 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2700478 }, momy := { raw := 3985 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2686973 }, bob := { raw := 73 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1441792 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 1441792 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1441792 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1441792 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2700478 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momy := { raw := 3985 }, canPickup := Bool.true, health := 58, shootable := Bool.true },
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
                { floor := { raw := 0 }, ceiling := { raw := 1441792 } },
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
                          { floor := 0, ceiling := 22, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 180 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 181,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2700478 }, momy := { raw := 4398 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2700478 }, momy := { raw := 3985 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 181,
  collected := #[3], message := "Door activated", messageTicks := 94 }

def twoImp_state_182 : Simulation := {
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
          { floor := 0, ceiling := 24, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 96 },
      { thing := 2, kind := 3001, health := 60,
        imp := Option.some { id := 3, frame := 442, tics := 1, angle := { raw := 2147483648 } }, age := 182 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 29, misc := 182 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65564 }, y := { raw := 2097204 } },
      flash := { frame := 0, tics := 0, x := { raw := 65564 }, y := { raw := 2097204 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 7, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686982 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686982 }, bob := { raw := 60 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1572864 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 1572864 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1572864 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1572864 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
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
                { floor := { raw := 0 }, ceiling := { raw := 1572864 } },
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
                          { floor := 0, ceiling := 24, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 181 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 182,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3144081 }, y := { raw := 2704463 }, momy := { raw := 3985 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
                height := { raw := 3670016 } },
            cmd := { } } },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 182,
  collected := #[3], message := "Door activated", messageTicks := 93 }

def twoImp_state_183 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 26, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
  audioEvents :=
    #[{ name := "bgsit2", origin := Option.some (Doom.Audio.Sfx.Origin.actor 3),
        position := { x := { raw := 14304064 }, y := { raw := 376000 } } }],
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 97 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 3, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 3,
              reaction := 7 },
        mode := Doom.ActorMode.chase, age := 183 }],
  impEvents := #[(2, Doom.Imp.Event.sound "bgsit2")], soundTargets := #[Option.some 0, Option.none, Option.none],
  deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 32, misc := 183 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 6, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1703936 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 1703936 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1703936 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1703936 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 14304064 }, y := { raw := 376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 1703936 } },
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
                          { floor := 0, ceiling := 26, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 29, misc := 182 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 183 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 183,
  collected := #[3], message := "Door activated", messageTicks := 92 }

def twoImp_state_184 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 28, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 98 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 2, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 3,
              reaction := 7 },
        mode := Doom.ActorMode.chase, age := 184 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 32, misc := 184 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 5, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1835008 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 1835008 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1835008 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1835008 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 14304064 }, y := { raw := 376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 1835008 } },
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
                          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 28, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 32, misc := 183 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 184 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 184,
  collected := #[3], message := "Door activated", messageTicks := 91 }

def twoImp_state_185 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 30, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 99 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 1, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 3,
              reaction := 7 },
        mode := Doom.ActorMode.chase, age := 185 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 32, misc := 185 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 4, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 1966080 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 1966080 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1966080 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 1966080 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 14304064 }, y := { raw := 376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 1966080 } },
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
                          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 30, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 32, misc := 184 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 185 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 185,
  collected := #[3], message := "Door activated", messageTicks := 90 }

def twoImp_state_186 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 32, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 100 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 3,
              movecount := 12, reaction := 6 },
        mode := Doom.ActorMode.chase, age := 186 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 34, misc := 186 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 3, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 2097152 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 2097152 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2097152 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2097152 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 13928064 }, y := { raw := 752000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 2097152 } },
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
                          { position := { x := 218, y := 5 }, angle := 225, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 32, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 32, misc := 185 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 186 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 186,
  collected := #[3], message := "Door activated", messageTicks := 89 }

def twoImp_state_187 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 34, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 101 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 3,
              movecount := 12, reaction := 6 },
        mode := Doom.ActorMode.chase, age := 187 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 34, misc := 187 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 2, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 2228224 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 2228224 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2228224 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2228224 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 13928064 }, y := { raw := 752000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 2228224 } },
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
                          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 34, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 34, misc := 186 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 187 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 187,
  collected := #[3], message := "Door activated", messageTicks := 88 }

def twoImp_state_188 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 36, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 102 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 3,
              movecount := 12, reaction := 6 },
        mode := Doom.ActorMode.chase, age := 188 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 34, misc := 188 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, count := 1, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 2359296 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 2359296 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2359296 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2359296 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 13928064 }, y := { raw := 752000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 2359296 } },
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
                          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 36, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 34, misc := 187 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 188 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 188,
  collected := #[3], message := "Door activated", messageTicks := 87 }

def twoImp_state_189 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 38, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 103 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 3, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 11, reaction := 5 },
        mode := Doom.ActorMode.chase, age := 189 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 35, misc := 189 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 17, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 2490368 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 2490368 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2490368 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2490368 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 13552064 }, y := { raw := 1128000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 2490368 } },
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
                          { position := { x := 212, y := 11 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 38, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 34, misc := 188 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 189 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 189,
  collected := #[3], message := "Door activated", messageTicks := 86 }

def twoImp_state_190 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 40, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 104 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 2, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 11, reaction := 5 },
        mode := Doom.ActorMode.chase, age := 190 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 35, misc := 190 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 16, count := 16, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 2621440 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 2621440 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2621440 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2621440 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 13552064 }, y := { raw := 1128000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 2621440 } },
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
                          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 40, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 35, misc := 189 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 190 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 190,
  collected := #[3], message := "Door activated", messageTicks := 85 }

def twoImp_state_191 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 42, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 105 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 1, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 11, reaction := 5 },
        mode := Doom.ActorMode.chase, age := 191 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 35, misc := 191 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 16, count := 15, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 2752512 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 2752512 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2752512 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2752512 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 13552064 }, y := { raw := 1128000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 2752512 } },
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
                          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 42, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 35, misc := 190 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 191 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 191,
  collected := #[3], message := "Door activated", messageTicks := 84 }

def twoImp_state_192 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 201, y := 22 }, angle := 135, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 44, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 106 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 447, tics := 3, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 10, reaction := 4 },
        mode := Doom.ActorMode.chase, age := 192 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 36, misc := 192 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 16, count := 14, oldHealth := 58 },
  attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 44,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
              cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
      camera := { x := { raw := 3144081 }, y := { raw := 2704463 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3144081 }, y := { raw := 2704463 }, ceilingz := { raw := 8388608 },
          height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 2883584 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 2883584 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2883584 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 2883584 } }, blocking := Bool.true },
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
              #[{ x := { raw := 3144081 }, y := { raw := 2704463 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 58, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := -9437184 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := 0 },
                { kind := 3001, x := { raw := 13176064 }, y := { raw := 1504000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 2883584 } },
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
                          { position := { x := 206, y := 17 }, angle := 135, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 44, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 35, misc := 191 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 201, y := 22 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 192 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 192,
  collected := #[3], message := "Door activated", messageTicks := 83 }

def twoImp_inputs_023 : List UInt32 := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

end LeanDoomProofs
