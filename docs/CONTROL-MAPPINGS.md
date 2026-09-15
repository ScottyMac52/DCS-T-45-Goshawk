# T-45 Goshawk control mappings

This is the device-by-device reference for the profiles packaged by this repository. It reflects `config/kneeboard.json` and the current module `.diff.lua` files; those files remain the executable source of truth.

## Configuration overview

| Device/group | Role |
| --- | --- |
| STICK | VKB F-14 • guns • weapons release • trim • NWS • pilot salute |
| MFD 1 | • OSBs • power • brightness • display controls |
| MFD 2 | • OSBs • power • brightness • display controls |
| PEDALS | TPR • rudder • left/right wheel brakes |
| THROTTLE | Viper TQS • thrust • speed brake • engine • canopy • master arm |
| PTO2 | CarrierAce • gear • flaps • hook • launch bar • brakes • bypass |

## Device index

| Device | Profile file | Layers | Documented assignments |
| --- | --- | --- | ---: |
| F16 MFD 1 | `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua` | Base, `JOY_BTN7` | 25 |
| F16 MFD 2 | `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua` | Base, `JOY_BTN7` | 25 |
| T-Pendular-Rudder | `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua` | Base | 3 |
| Viper TQS | `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua` | Base | 11 |
| VKBSim Gunfighter F14 | `VKBSim Gunfighter F14 {2D5CEC70-5189-11f1-8001-444553540000}.diff.lua` | Base | 8 |
| WINCTRL CarrierAce PTO 2 | `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua` | Base | 15 |

## Reading the tables

- `JOY_BTN#` identifies a physical button; `JOY_X`, `JOY_Y`, and similar names identify axes.
- A modifier before the input means both must be active, for example `JOY_BTN7 + JOY_BTN3`.
- A profile with no module-specific assignments is intentional: it can still receive DCS-Common UI Layer commands, and its page remains available as the place to add future module bindings.
- DCS device GUIDs in filenames are installation-specific. See [Installation](INSTALLATION.md#device-guids) before copying these profiles to another computer.

## Devices

### F16 MFD 1

- Profile: `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua`
- Kneeboard page: `01-TM-MFD-1.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN27` | Day | — |
| `JOY_BTN28` | Night | — |
| `JOY_BTN21` | Bright+ | — |
| `JOY_BTN22` | Bright- | — |
| `JOY_BTN1` | PB 1 | — |
| `JOY_BTN2` | PB 2 | — |
| `JOY_BTN3` | PB 3 | — |
| `JOY_BTN4` | PB 4 | — |
| `JOY_BTN5` | PB 5 | — |
| `JOY_BTN6` | PB 6 | — |
| `JOY_BTN7` | PB 7 | — |
| `JOY_BTN8` | PB 8 | — |
| `JOY_BTN9` | PB 9 | — |
| `JOY_BTN10` | PB 10 | — |
| `JOY_BTN11` | PB 11 | — |
| `JOY_BTN12` | PB 12 | — |
| `JOY_BTN13` | PB 13 | — |
| `JOY_BTN14` | PB 14 | — |
| `JOY_BTN15` | PB 15 | — |
| `JOY_BTN16` | PB 16 | — |
| `JOY_BTN17` | PB 17 | — |
| `JOY_BTN18` | PB 18 | — |
| `JOY_BTN19` | PB 19 | — |
| `JOY_BTN20` | PB 20 | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN28` | Off | — |

### F16 MFD 2

- Profile: `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua`
- Kneeboard page: `02-TM-MFD-2.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN27` | Day | — |
| `JOY_BTN28` | Night | — |
| `JOY_BTN21` | Bright+ | — |
| `JOY_BTN22` | Bright- | — |
| `JOY_BTN1` | PB 1 | — |
| `JOY_BTN2` | PB 2 | — |
| `JOY_BTN3` | PB 3 | — |
| `JOY_BTN4` | PB 4 | — |
| `JOY_BTN5` | PB 5 | — |
| `JOY_BTN6` | PB 6 | — |
| `JOY_BTN7` | PB 7 | — |
| `JOY_BTN8` | PB 8 | — |
| `JOY_BTN9` | PB 9 | — |
| `JOY_BTN10` | PB 10 | — |
| `JOY_BTN11` | PB 11 | — |
| `JOY_BTN12` | PB 12 | — |
| `JOY_BTN13` | PB 13 | — |
| `JOY_BTN14` | PB 14 | — |
| `JOY_BTN15` | PB 15 | — |
| `JOY_BTN16` | PB 16 | — |
| `JOY_BTN17` | PB 17 | — |
| `JOY_BTN18` | PB 18 | — |
| `JOY_BTN19` | PB 19 | — |
| `JOY_BTN20` | PB 20 | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN28` | Off | — |

### T-Pendular-Rudder

- Profile: `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua`
- Kneeboard page: `03-TM-TPR.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_Y` | WBrake Left | invert=true |
| `JOY_X` | WBrake Right | invert=true |
| `JOY_Z` | Rudder | — |

### Viper TQS

- Profile: `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua`
- Kneeboard page: `04-VIPER-TQS-MISSION-PACK.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN16` | Cage | — |
| `JOY_BTN44` | Catapult | — |
| `JOY_BTN10` | SBrake RET | — |
| `JOY_BTN9` | SBrake EXTD | — |
| `JOY_BTN52` | Engine ON | — |
| `JOY_BTN53` | Engine OFF | — |
| `JOY_BTN51` | Cnpy CLSD | — |
| `JOY_BTN50` | Cnpy OPN | — |
| `JOY_BTN23` | Master Arm | — |
| `JOY_RZ` | Zoom View | — |
| `JOY_Z` | Thrust | — |

### VKBSim Gunfighter F14

- Profile: `VKBSim Gunfighter F14 {2D5CEC70-5189-11f1-8001-444553540000}.diff.lua`
- Kneeboard page: `05-VKB-F14-GUNFIGHTER.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN1` | Guns Fire | — |
| `JOY_BTN3` | Pickle | — |
| `JOY_BTN6` | Salute | — |
| `JOY_BTN7` | NWS | — |
| `JOY_BTN12` | LWD | — |
| `JOY_BTN9` | RWD | — |
| `JOY_BTN11` | NOSE UP | — |
| `JOY_BTN10` | NOSE DOWN | — |

### WINCTRL CarrierAce PTO 2

- Profile: `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua`
- Kneeboard page: `06-WINCTRL-PTO2.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN32` | Hook Up | — |
| `JOY_BTN34` | Hook DWN | — |
| `JOY_BTN5` | Flaps UP | — |
| `JOY_BTN7` | Flaps DWN | — |
| `JOY_BTN3` | LBar RET | — |
| `JOY_BTN4` | LBar EXTND | — |
| `JOY_BTN35` | LNDG GEAR UP | — |
| `JOY_BTN37` | LNDG GEAR DWN | — |
| `JOY_BTN11` | ASkid OFF | — |
| `JOY_BTN10` | ASkid ON | — |
| `JOY_BTN38` | PBrake OFF | — |
| `JOY_BTN39` | PBrake ON | — |
| `JOY_BTN1` | RESET | — |
| `JOY_BTN13` | FIELD | — |
| `JOY_BTN12` | CARRIER | — |
