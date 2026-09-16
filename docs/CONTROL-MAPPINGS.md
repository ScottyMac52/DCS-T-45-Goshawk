# T-45 control mappings

This reference is generated from the effective DCS `.diff.lua` profiles used by IPI. Those profiles remain the executable source of truth.

## Device index

| Device | Profile file | Layers | Assignments |
| --- | --- | --- | ---: |
| [F16 MFD 1](devices/TM-MFD-1-MAPPINGS.md) | `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua` | Base, JOY_BTN7 | 25 |
| [F16 MFD 2](devices/TM-MFD-2-MAPPINGS.md) | `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua` | Base, JOY_BTN7 | 25 |
| [F16 MFD 3](devices/TM-MFD-3-MAPPINGS.md) | `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua` | Base | 1 |
| [MOZA AB9 FFB Base](devices/MOZA-AB9-MAPPINGS.md) | `MOZA AB9 FFB Base {71DA6210-432E-11f1-8001-444553540000}.diff.lua` | Base | 2 |
| [T-Pendular-Rudder](devices/TM-TPR-MAPPINGS.md) | `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua` | Base | 3 |
| [Viper TQS](devices/VIPER-TQS-MISSION-PACK-MAPPINGS.md) | `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua` | Base | 11 |
| [VKBSim Gunfighter F14](devices/VKB-F14-GUNFIGHTER-MAPPINGS.md) | `VKBSim Gunfighter F14 {2D5CEC70-5189-11f1-8001-444553540000}.diff.lua` | Base, JOY_BTN7 | 10 |
| [WINCTRL CarrierAce PTO 2](devices/WINCTRL-PTO2-MAPPINGS.md) | `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua` | Base | 15 |
| [WINCTRL ViperAce ICP](devices/WINCTRL-ICP-MAPPINGS.md) | `WINCTRL ViperAce ICP {3731E2E0-4D98-11f1-8001-444553540000}.diff.lua` | Base, JOY_BTN7 | 42 |

## Reading the tables

- `JOY_BTN#` identifies a button; `JOY_X`, `JOY_Y`, and similar names identify axes.
- A modifier before an input means both must be active.
- Empty/default profiles are documented explicitly rather than omitted.
- DCS device GUIDs in filenames are installation-specific; see [Installation](INSTALLATION.md#device-guids).

## Devices

### F16 MFD 1

- Profile: `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `51fa60c0-cb32-11ed-800b-444553540000`
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
- Shared hardware: `tm-mfd`
- Physical instance: `51fa39b0-cb32-11ed-8008-444553540000`
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

### F16 MFD 3

- Profile: `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `c5be49a0-2342-11ee-8001-444553540000`
- Kneeboard page: `03-TM-MFD-3.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN13` | Salute | — |

### MOZA AB9 FFB Base

- Profile: `MOZA AB9 FFB Base {71DA6210-432E-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `moza-ab9`
- Physical instance: `71da6210-432e-11f1-8001-444553540000`
- Kneeboard page: `04-MOZA-AB9.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_Y` | Pitch | — |
| `JOY_X` | Roll | — |

### T-Pendular-Rudder

- Profile: `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua`
- Shared hardware: `tm-tpr`
- Physical instance: `14ed3d40-3f58-11f1-8002-444553540000`
- Kneeboard page: `05-TM-TPR.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_Y` | WBrake Left | invert=true |
| `JOY_X` | WBrake Right | invert=true |
| `JOY_Z` | Rudder | — |

### Viper TQS

- Profile: `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `viper-tqs-mission-pack`
- Physical instance: `c0a33440-3f54-11f1-8001-444553540000`
- Kneeboard page: `06-VIPER-TQS-MISSION-PACK.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN16` | Cage/Uncage | — |
| `JOY_BTN44` | Catapult | — |
| `JOY_BTN10` | SBrake RET | — |
| `JOY_BTN9` | SBrake EXTD | — |
| `JOY_BTN52` | Eng ON | — |
| `JOY_BTN53` | Eng OFF | — |
| `JOY_BTN51` | Canopy CLS | — |
| `JOY_BTN50` | Canopy OPN | — |
| `JOY_BTN23` | Master Arm | — |
| `JOY_RZ` | Zoom View | — |
| `JOY_Z` | Thrust | — |

### VKBSim Gunfighter F14

- Profile: `VKBSim Gunfighter F14 {2D5CEC70-5189-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `vkb-f14-gunfighter`
- Physical instance: `2d5cec70-5189-11f1-8001-444553540000`
- Kneeboard page: `07-VKB-F14-GUNFIGHTER.png`

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
| `JOY_BTN8` | Master Arm | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN3` | NWS | — |

### WINCTRL CarrierAce PTO 2

- Profile: `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua`
- Shared hardware: `winctrl-pto2`
- Physical instance: `19b7d090-6120-11f0-8001-444553540000`
- Kneeboard page: `08-WINCTRL-PTO2.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN32` | Hook Up | — |
| `JOY_BTN34` | Hook DWN | — |
| `JOY_BTN5` | Flaps UP | — |
| `JOY_BTN7` | Flaps DWN | — |
| `JOY_BTN3` | LBar RET | — |
| `JOY_BTN4` | LBar EXTND | — |
| `JOY_BTN35` | Gear UP | — |
| `JOY_BTN37` | Gear DWN | — |
| `JOY_BTN11` | ASkid OFF | — |
| `JOY_BTN10` | ASkid ON | — |
| `JOY_BTN38` | PBrake OFF | — |
| `JOY_BTN39` | PBrake ON | — |
| `JOY_BTN1` | RESET | — |
| `JOY_BTN13` | FIELD | — |
| `JOY_BTN12` | CARRIER | — |

### WINCTRL ViperAce ICP

- Profile: `WINCTRL ViperAce ICP {3731E2E0-4D98-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `winctrl-icp`
- Physical instance: `3731e2e0-4d98-11f1-8001-444553540000`
- Kneeboard page: `09-WINCTRL-ICP.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7` | DEP 1 | — |
| `JOY_BTN8` | DEP 2 | — |
| `JOY_BTN9` | DEP 3 | — |
| `JOY_BTN11` | DEP 4 | — |
| `JOY_BTN12` | DEP 5 | — |
| `JOY_BTN13` | DEP 6 | — |
| `JOY_BTN15` | DEP 7 | — |
| `JOY_BTN16` | DEP 8 | — |
| `JOY_BTN17` | DEP 9 | — |
| `JOY_BTN18` | DEP 0 | — |
| `JOY_BTN10` | DEP CLR | — |
| `JOY_BTN14` | DEP ENTR | — |
| `JOY_BTN21` | DEP Bingo | — |
| `JOY_BTN22` | DEP CRS | — |
| `JOY_BTN24` | DEP Dec | — |
| `JOY_BTN25` | DEP HDG | — |
| `JOY_BTN23` | DEP LAW | — |
| `JOY_BTN29` | DEP Mode | — |
| `JOY_BTN19` | HUD ON | — |
| `JOY_BTN20` | HUD OFF | — |
| `JOY_BTN30` | DEP Depr+ | — |
| `JOY_BTN31` | DEP Depr- | — |
| `JOY_RY` | HUD Bright | — |
| `JOY_Y` | MIP Lights | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN7` | Shrtct 1 | — |
| `JOY_BTN7 + JOY_BTN8` | Shrtct 2 | — |
| `JOY_BTN7 + JOY_BTN9` | Shrtct 3 | — |
| `JOY_BTN7 + JOY_BTN11` | Shrtct 4 | — |
| `JOY_BTN7 + JOY_BTN12` | Shrtct 5 | — |
| `JOY_BTN7 + JOY_BTN13` | Shrtct 6 | — |
| `JOY_BTN7 + JOY_BTN15` | Shrtct 7 | — |
| `JOY_BTN7 + JOY_BTN16` | Shrtct 8 | — |
| `JOY_BTN7 + JOY_BTN17` | Shrtct 9 | — |
| `JOY_BTN7 + JOY_BTN18` | Shrtct 10 | — |
| `JOY_BTN7 + JOY_BTN23` | KB Nxt Shrtct | — |
| `JOY_BTN7 + JOY_BTN25` | KB Prev Shrtct | — |
| `JOY_BTN7 + JOY_BTN24` | KB Next Pg | — |
| `JOY_BTN7 + JOY_BTN22` | KB Prev Pg | — |
| `JOY_BTN7 + JOY_BTN21` | KB ON/OFF | — |
| `JOY_BTN7 + JOY_BTN14` | KB Mk Shrtct | — |
| `JOY_BTN7 + JOY_BTN10` | KB Mark Pt | — |
| `JOY_BTN7 + JOY_BTN29` | KB Glance | — |
