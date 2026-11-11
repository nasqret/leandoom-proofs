import LeanDoomProofs.CombatWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding CombatSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def twoImp_state_217 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 143, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 94, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 131 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 447, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 8, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 217 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 46, misc := 217 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 6, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 6160384 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 6160384 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6160384 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6160384 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 9426624 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 6160384 } },
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
                          { position := { x := 143, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 94, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 46, misc := 216 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 143, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 217 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 217,
  collected := #[3], message := "Door activated", messageTicks := 58 }

def twoImp_state_218 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 143, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 96, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 132 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 447, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 8, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 218 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 46, misc := 218 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 5, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 6291456 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 6291456 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6291456 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6291456 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 9426624 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 6291456 } },
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
                          { position := { x := 143, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 96, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 46, misc := 217 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 143, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 218 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 218,
  collected := #[3], message := "Door activated", messageTicks := 57 }

def twoImp_state_219 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 98, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 133 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 448, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 7, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 219 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 47, misc := 219 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 4, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 6422528 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 6422528 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6422528 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6422528 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 8902336 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 6422528 } },
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
                          { position := { x := 143, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 98, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 46, misc := 218 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 219 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 219,
  collected := #[3], message := "Door activated", messageTicks := 56 }

def twoImp_state_220 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 100, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 134 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 448, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 7, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 220 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 47, misc := 220 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 3, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 6553600 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 6553600 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6553600 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6553600 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 8902336 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 6553600 } },
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
                          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 100, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 47, misc := 219 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 220 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 220,
  collected := #[3], message := "Door activated", messageTicks := 55 }

def twoImp_state_221 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 102, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 135 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 448, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 7, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 221 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 47, misc := 221 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 2, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 6684672 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 6684672 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6684672 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6684672 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 8902336 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[0], #[3], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 6684672 } },
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
                          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 102, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 47, misc := 220 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 221 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 221,
  collected := #[3], message := "Door activated", messageTicks := 54 }

def twoImp_state_222 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 104, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 136 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 449, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 6, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 222 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 48, misc := 222 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 1, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 6815744 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 6815744 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6815744 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6815744 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 8378048 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 6815744 } },
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
                          { position := { x := 135, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 104, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 47, misc := 221 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 222 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 222,
  collected := #[3], message := "Door activated", messageTicks := 53 }

def twoImp_state_223 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 106, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 137 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 449, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 6, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 223 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 48, misc := 223 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, oldHealth := 58 }, attacker := Option.some 1,
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 6946816 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 6946816 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6946816 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 6946816 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 8378048 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 6946816 } },
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
                          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 106, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 48, misc := 222 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 223 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 223,
  collected := #[3], message := "Door activated", messageTicks := 52 }

def twoImp_state_224 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 108, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 138 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 449, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 6, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 224 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 48, misc := 224 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 16, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 7077888 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 7077888 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7077888 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7077888 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 8378048 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 7077888 } },
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
                          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 108, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 48, misc := 223 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 224 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 224,
  collected := #[3], message := "Door activated", messageTicks := 51 }

def twoImp_state_225 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 110, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 139 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 450, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 5, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 225 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 49, misc := 225 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 15, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 7208960 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 7208960 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7208960 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7208960 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 7853760 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 7208960 } },
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
                          { position := { x := 127, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 110, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 48, misc := 224 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 225 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 225,
  collected := #[3], message := "Door activated", messageTicks := 50 }

def twoImp_state_226 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 112, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 140 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 450, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 5, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 226 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 49, misc := 226 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 14, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 7340032 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 7340032 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7340032 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7340032 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 7853760 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 7340032 } },
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
                          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 112, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 49, misc := 225 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 226 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 226,
  collected := #[3], message := "Door activated", messageTicks := 49 }

def twoImp_state_227 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 114, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 141 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 450, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 5, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 227 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 49, misc := 227 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 13, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 7471104 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 7471104 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7471104 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7471104 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 7853760 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 7471104 } },
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
                          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 114, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 49, misc := 226 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 227 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 227,
  collected := #[3], message := "Door activated", messageTicks := 48 }

def twoImp_state_228 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 111, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 116, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 142 },
      { thing := 2, kind := 3001, health := 60,
        imp :=
          Option.some
            { id := 3, frame := 451, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 4, reaction := 0 },
        mode := Doom.ActorMode.chase, age := 228 }],
  soundTargets := #[Option.some 0, Option.none, Option.none], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 50, misc := 228 },
  weapon :=
    { weapon := { frame := 10, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 101, ammoBefore := 45, ammoAfter := 44, pelletsExpected := 1,
        pelletsTraced := 1, aim := Option.some { }, pelletAngles := #[4291035136] },
  shots := 6, lastShot := 101, kills := 1, statusFace := { index := 18, count := 12, oldHealth := 58 },
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 7602176 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 7602176 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7602176 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 7602176 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 7329472 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 7602176 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 7602176 } },
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
                          { position := { x := 119, y := 40 }, angle := 180, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 116, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 49, misc := 227 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 111, y := 40 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 228 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 44,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[44, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors := #[{ sector := 1, state := { top := { raw := 8126464 }, speed := { raw := 131072 } } }], ticks := 228,
  collected := #[3], message := "Door activated", messageTicks := 47 }

def twoImp_inputs_026 : List UInt32 := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

end LeanDoomProofs
