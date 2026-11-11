import LeanDoomProofs.CombatWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding CombatSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def twoImp_state_277 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 191 },
      { thing := 2, kind := 3001, health := 25,
        imp :=
          Option.some
            { id := 3, frame := 452, tics := 2, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 280 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 61, misc := 21 },
  weapon :=
    { weapon := { frame := 15, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 2 },
  weaponAge := 13, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 268, ammoBefore := 42, ammoAfter := 41, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[4275568640] },
  shots := 9, lastShot := 268, kills := 1,
  statusFace := { index := 18, count := 14, lastAttack := 29, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 41,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 61, misc := 20 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 277 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 41,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 106 } }],
  ticks := 277, collected := #[3], message := "Hit - enemy health 25", messageTicks := 61 }

def twoImp_state_278 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 192 },
      { thing := 2, kind := 3001, health := 25,
        imp :=
          Option.some
            { id := 3, frame := 452, tics := 1, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 281 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 61, misc := 22 },
  weapon :=
    { weapon := { frame := 13, tics := 4, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 0, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 268, ammoBefore := 42, ammoAfter := 41, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[4275568640] },
  shots := 9, lastShot := 268, kills := 1,
  statusFace := { index := 18, count := 13, lastAttack := 28, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 41,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 61, misc := 21 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 278 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 41,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 105 } }],
  ticks := 278, collected := #[3], message := "Hit - enemy health 25", messageTicks := 60 }

def twoImp_state_279 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 193 },
      { thing := 2, kind := 3001, health := 25,
        imp :=
          Option.some
            { id := 3, frame := 453, tics := 8, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 282 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 61, misc := 23 },
  weapon :=
    { weapon := { frame := 13, tics := 3, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 1, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 268, ammoBefore := 42, ammoAfter := 41, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[4275568640] },
  shots := 9, lastShot := 268, kills := 1,
  statusFace := { index := 18, count := 12, lastAttack := 27, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 41,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 61, misc := 22 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 279 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 41,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 104 } }],
  ticks := 279, collected := #[3], message := "Hit - enemy health 25", messageTicks := 59 }

def twoImp_state_280 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 194 },
      { thing := 2, kind := 3001, health := 25,
        imp :=
          Option.some
            { id := 3, frame := 453, tics := 7, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 283 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 61, misc := 24 },
  weapon :=
    { weapon := { frame := 13, tics := 2, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 2, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 268, ammoBefore := 42, ammoAfter := 41, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[4275568640] },
  shots := 9, lastShot := 268, kills := 1,
  statusFace := { index := 18, count := 11, lastAttack := 26, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 41,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 61, misc := 23 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 280 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 41,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 103 } }],
  ticks := 280, collected := #[3], message := "Hit - enemy health 25", messageTicks := 58 }

def twoImp_state_281 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 195 },
      { thing := 2, kind := 3001, health := 25,
        imp :=
          Option.some
            { id := 3, frame := 453, tics := 6, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 284 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 61, misc := 25 },
  weapon :=
    { weapon := { frame := 13, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 3, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 268, ammoBefore := 42, ammoAfter := 41, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[4275568640] },
  shots := 9, lastShot := 268, kills := 1,
  statusFace := { index := 18, count := 10, lastAttack := 25, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 41,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 61, misc := 24 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 281 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 41,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 102 } }],
  ticks := 281, collected := #[3], message := "Hit - enemy health 25", messageTicks := 57 }

def twoImp_state_282 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
    #[{ name := "pistol", origin := Option.some (Doom.Audio.Sfx.Origin.actor 0),
        position := { x := { raw := 3144081 }, y := { raw := 2704463 } } }],
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 196 },
      { thing := 2, kind := 3001, health := 15,
        imp :=
          Option.some
            { id := 3, frame := 455, tics := 1, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.pain, age := 286 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 65, misc := 26 },
  weapon :=
    { weapon := { frame := 14, tics := 6, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 17, tics := 6, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3,
      extraLight := 1 },
  weaponAge := 4, refire := Bool.true,
  shotEvents :=
    #[(0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.blood { raw := 6021125 } { raw := 2749686 } { raw := 1985785 } 10),
      (0, Doom.Collision.ShotEvent.damage 3 10)],
  shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 282, ammoBefore := 41, ammoAfter := 40, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[10747904] },
  shots := 10, lastShot := 282, kills := 1,
  statusFace := { index := 18, count := 9, lastAttack := 24, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 41,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[41, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 61, misc := 25 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 282 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 40,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 101 } }],
  ticks := 282, collected := #[3], message := "Hit - enemy health 15", messageTicks := 70 }

def twoImp_state_283 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
    #[{ name := "popain", origin := Option.some (Doom.Audio.Sfx.Origin.actor 3),
        position := { x := { raw := 6805184 }, y := { raw := 2632000 } } }],
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 197 },
      { thing := 2, kind := 3001, health := 15,
        imp :=
          Option.some
            { id := 3, frame := 456, tics := 2, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.pain, age := 287 }],
  impEvents := #[(2, Doom.Imp.Event.sound "popain")], soundTargets := #[Option.some 0, Option.some 0, Option.some 0],
  deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 65, misc := 27 },
  weapon :=
    { weapon := { frame := 14, tics := 5, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 17, tics := 5, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3,
      extraLight := 1 },
  weaponAge := 5, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 282, ammoBefore := 41, ammoAfter := 40, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[10747904] },
  shots := 10, lastShot := 282, kills := 1,
  statusFace := { index := 18, count := 8, lastAttack := 23, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 40,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 65, misc := 26 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 283 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 40,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 100 } }],
  ticks := 283, collected := #[3], message := "Hit - enemy health 15", messageTicks := 69 }

def twoImp_state_284 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 198 },
      { thing := 2, kind := 3001, health := 15,
        imp :=
          Option.some
            { id := 3, frame := 456, tics := 1, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 97, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.pain, age := 288 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 65, misc := 28 },
  weapon :=
    { weapon := { frame := 14, tics := 4, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 17, tics := 4, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3,
      extraLight := 1 },
  weaponAge := 6, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 282, ammoBefore := 41, ammoAfter := 40, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[10747904] },
  shots := 10, lastShot := 282, kills := 1,
  statusFace := { index := 18, count := 7, lastAttack := 22, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 40,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 65, misc := 27 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 284 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 40,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 99 } }],
  ticks := 284, collected := #[3], message := "Hit - enemy health 15", messageTicks := 68 }

def twoImp_state_285 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 199 },
      { thing := 2, kind := 3001, health := 15,
        imp :=
          Option.some
            { id := 3, frame := 452, tics := 8, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 96, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 289 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 65, misc := 29 },
  weapon :=
    { weapon := { frame := 14, tics := 3, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 17, tics := 3, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3,
      extraLight := 1 },
  weaponAge := 7, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 282, ammoBefore := 41, ammoAfter := 40, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[10747904] },
  shots := 10, lastShot := 282, kills := 1,
  statusFace := { index := 18, count := 6, lastAttack := 21, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 40,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 65, misc := 28 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 285 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 40,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 98 } }],
  ticks := 285, collected := #[3], message := "Hit - enemy health 15", messageTicks := 67 }

def twoImp_state_286 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 200 },
      { thing := 2, kind := 3001, health := 15,
        imp :=
          Option.some
            { id := 3, frame := 452, tics := 7, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 96, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 290 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 65, misc := 30 },
  weapon :=
    { weapon := { frame := 14, tics := 2, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 17, tics := 2, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3,
      extraLight := 1 },
  weaponAge := 8, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 282, ammoBefore := 41, ammoAfter := 40, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[10747904] },
  shots := 10, lastShot := 282, kills := 1,
  statusFace := { index := 18, count := 5, lastAttack := 20, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 40,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 65, misc := 29 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 286 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 40,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 97 } }],
  ticks := 286, collected := #[3], message := "Hit - enemy health 15", messageTicks := 66 }

def twoImp_state_287 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 201 },
      { thing := 2, kind := 3001, health := 15,
        imp :=
          Option.some
            { id := 3, frame := 452, tics := 6, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 96, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 291 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 65, misc := 31 },
  weapon :=
    { weapon := { frame := 14, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 17, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3, extraLight := 1 },
  weaponAge := 9, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 282, ammoBefore := 41, ammoAfter := 40, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[10747904] },
  shots := 10, lastShot := 282, kills := 1,
  statusFace := { index := 18, count := 4, lastAttack := 19, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 40,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 65, misc := 30 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 287 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 40,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 96 } }],
  ticks := 287, collected := #[3], message := "Hit - enemy health 15", messageTicks := 65 }

def twoImp_state_288 : Simulation := {
  map :=
    { name := "TWOIMP01",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 202 },
      { thing := 2, kind := 3001, health := 15,
        imp :=
          Option.some
            { id := 3, frame := 452, tics := 5, angle := { raw := 2134134460 }, target := Option.some 0, movedir := 4,
              movecount := 3, reaction := 0, threshold := 96, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 292 }],
  soundTargets := #[Option.some 0, Option.some 0, Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 65, misc := 32 },
  weapon :=
    { weapon := { frame := 15, tics := 4, x := { raw := 65536 }, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, x := { raw := 65536 }, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 10, refire := Bool.true, shotSlope := { raw := -8507 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.pistol, tic := 282, ammoBefore := 41, ammoAfter := 40, pelletsExpected := 1,
        pelletsTraced := 1,
        aim :=
          Option.some
            { slope := { raw := -8507 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -43104, targetTop := 23946,
                    distance := { raw := 3587072 }, shootZ := { raw := 2359296 }, target := 3, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 },
                    portals :=
                      #[{ distance := { raw := 1049600 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 2 },
                        { distance := { raw := 3146752 }, bottom := { raw := 0 }, top := { raw := 8126464 },
                          line := 5 }] } },
        pelletAngles := #[10747904] },
  shots := 10, lastShot := 282, kills := 1,
  statusFace := { index := 18, count := 3, lastAttack := 18, oldHealth := 58 }, attacker := Option.some 1,
  player :=
    {
      inventory :=
        { health := 58, blue := Bool.true, bullets := 40,
          pickupState :=
            { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, special := Bool.true,
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
                { x := { raw := 6291456 }, y := { raw := 4194304 }, dx := { raw := 0 }, dy := { raw := -8388608 },
                  bbox :=
                    { top := { raw := 4194304 }, bottom := { raw := -4194304 }, left := { raw := 6291456 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                  back := Option.some { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, twoSided := Bool.true },
                { x := { raw := 6291456 }, y := { raw := -4194304 }, dx := { raw := -2097152 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -4194304 }, bottom := { raw := -4194304 }, left := { raw := 4194304 },
                      right := { raw := 6291456 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8126464 } }, blocking := Bool.true },
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
                { kind := 3001, x := { raw := 6805184 }, y := { raw := 2632000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8126464 }, sector := 2, health := 60,
                  shootable := Bool.true },
                { kind := 5, x := { raw := -8388608 }, y := { raw := -2621440 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } }],
            links := #[#[], #[], #[], #[], #[], #[2], #[], #[3, 0], #[], #[]],
            sectors :=
              #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } },
                { floor := { raw := 0 }, ceiling := { raw := 8126464 } },
                { floor := { raw := 0 }, ceiling := { raw := 8388608 } }],
            sectorLinks := #[#[0, 2], #[], #[3]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
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
                          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
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
                          { floor := 0, ceiling := 124, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
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
                  rng := { play := 65, misc := 31 }, busy := #[1] } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -144, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 103, y := 40 }, angle := 178, kind := 3001, flags := 7 },
          { position := { x := -128, y := -40 }, angle := 0, kind := 5, flags := 0 }],
      levelTime := 288 },
  inventory :=
    { health := 58, blue := Bool.true, bullets := 40,
      pickupState :=
        { health := 58, bodyHealth := 58, ammo := #v[40, 0, 0, 0],
          cards := #v[Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTBLUECARD" } },
  doors :=
    #[{ sector := 1,
        state := { top := { raw := 8126464 }, speed := { raw := 131072 }, direction := 0, countdown := 95 } }],
  ticks := 288, collected := #[3], message := "Hit - enemy health 15", messageTicks := 64 }

def twoImp_inputs_032 : List UInt32 := [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192]

end LeanDoomProofs
