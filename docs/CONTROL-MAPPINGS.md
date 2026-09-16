# T-45 control mappings

This reference is generated from the effective DCS `.diff.lua` profiles used by IPI. Those profiles remain the executable source of truth.

## Device index

| Device | Profile file | Layers | Assignments |
| --- | --- | --- | ---: |
| [F16 MFD 1](devices/TM-MFD-1-MAPPINGS.md) | `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua` | Base, JOY_BTN7 | 25 |
| [F16 MFD 2](devices/TM-MFD-2-MAPPINGS.md) | `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua` | Base, JOY_BTN7 | 25 |
| [F16 MFD 3](devices/TM-MFD-3-MAPPINGS.md) | `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua` | Base | 0 |
| [MOZA AB9 FFB Base](devices/MOZA-AB9-MAPPINGS.md) | `MOZA AB9 FFB Base {71DA6210-432E-11f1-8001-444553540000}.diff.lua` | Base | 0 |
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
| `JOY_BTN27` | Left MFD Day Power | — |
| `JOY_BTN28` | Left MFD Night Power | — |
| `JOY_BTN21` | Left MFD Brightness Up | — |
| `JOY_BTN22` | Left MFD Brightness Down | — |
| `JOY_BTN1` | Left MFD PB 1 | — |
| `JOY_BTN2` | Left MFD PB 2 | — |
| `JOY_BTN3` | Left MFD PB 3 | — |
| `JOY_BTN4` | Left MFD PB 4 | — |
| `JOY_BTN5` | Left MFD PB 5 | — |
| `JOY_BTN6` | Left MFD PB 6 | — |
| `JOY_BTN7` | Left MFD PB 7 | — |
| `JOY_BTN8` | Left MFD PB 8 | — |
| `JOY_BTN9` | Left MFD PB 9 | — |
| `JOY_BTN10` | Left MFD PB 10 | — |
| `JOY_BTN11` | Left MFD PB 11 | — |
| `JOY_BTN12` | Left MFD PB 12 | — |
| `JOY_BTN13` | Left MFD PB 13 | — |
| `JOY_BTN14` | Left MFD PB 14 | — |
| `JOY_BTN15` | Left MFD PB 15 | — |
| `JOY_BTN16` | Left MFD PB 16 | — |
| `JOY_BTN17` | Left MFD PB 17 | — |
| `JOY_BTN18` | Left MFD PB 18 | — |
| `JOY_BTN19` | Left MFD PB 19 | — |
| `JOY_BTN20` | Left MFD PB 20 | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN28` | Left MFD Off Switch | — |

### F16 MFD 2

- Profile: `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `51fa39b0-cb32-11ed-8008-444553540000`
- Kneeboard page: `02-TM-MFD-2.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN27` | Right MFD Day Power | — |
| `JOY_BTN28` | Right MFD Night Power | — |
| `JOY_BTN21` | Right MFD Brightness Up | — |
| `JOY_BTN22` | Right MFD Brightness Down | — |
| `JOY_BTN1` | Right MFD PB 1 | — |
| `JOY_BTN2` | Right MFD PB 2 | — |
| `JOY_BTN3` | Right MFD PB 3 | — |
| `JOY_BTN4` | Right MFD PB 4 | — |
| `JOY_BTN5` | Right MFD PB 5 | — |
| `JOY_BTN6` | Right MFD PB 6 | — |
| `JOY_BTN7` | Right MFD PB 7 | — |
| `JOY_BTN8` | Right MFD PB 8 | — |
| `JOY_BTN9` | Right MFD PB 9 | — |
| `JOY_BTN10` | Right MFD PB 10 | — |
| `JOY_BTN11` | Right MFD PB 11 | — |
| `JOY_BTN12` | Right MFD PB 12 | — |
| `JOY_BTN13` | Right MFD PB 13 | — |
| `JOY_BTN14` | Right MFD PB 14 | — |
| `JOY_BTN15` | Right MFD PB 15 | — |
| `JOY_BTN16` | Right MFD PB 16 | — |
| `JOY_BTN17` | Right MFD PB 17 | — |
| `JOY_BTN18` | Right MFD PB 18 | — |
| `JOY_BTN19` | Right MFD PB 19 | — |
| `JOY_BTN20` | Right MFD PB 20 | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN28` | Right MFD Off Switch | — |

### F16 MFD 3

- Profile: `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `c5be49a0-2342-11ee-8001-444553540000`
- Kneeboard page: `03-TM-MFD-3.png`

#### Base layer

No module-specific assignments are present. The profile remains available for shared UI Layer controls and future module bindings.

### MOZA AB9 FFB Base

- Profile: `MOZA AB9 FFB Base {71DA6210-432E-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `moza-ab9`
- Physical instance: `71da6210-432e-11f1-8001-444553540000`
- Kneeboard page: `04-MOZA-AB9.png`

#### Base layer

No module-specific assignments are present. The profile remains available for shared UI Layer controls and future module bindings.

### T-Pendular-Rudder

- Profile: `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua`
- Shared hardware: `tm-tpr`
- Physical instance: `14ed3d40-3f58-11f1-8002-444553540000`
- Kneeboard page: `05-TM-TPR.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_Y` | Wheel Brake Left | invert=true |
| `JOY_X` | Wheel Brake Right | invert=true |
| `JOY_Z` | Rudder | — |

### Viper TQS

- Profile: `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `viper-tqs-mission-pack`
- Physical instance: `c0a33440-3f54-11f1-8001-444553540000`
- Kneeboard page: `06-VIPER-TQS-MISSION-PACK.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN16` | Cage/Uncage Button | — |
| `JOY_BTN44` | Catapult Hook Up | — |
| `JOY_BTN10` | Speed Brake Switch FORWARD else CENTER | — |
| `JOY_BTN9` | Speed Brake Switch AFT else CENTER | — |
| `JOY_BTN52` | Engine Switch ON | — |
| `JOY_BTN53` | Engine Switch OFF | — |
| `JOY_BTN51` | Canopy - CLOSE | — |
| `JOY_BTN50` | Canopy - OPEN | — |
| `JOY_BTN23` | Master Arm Switch - ARM else SAFE | — |
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
| `JOY_BTN3` | Weapons Release | — |
| `JOY_BTN6` | Pilot Salute | — |
| `JOY_BTN7` | Nose Wheel Steering Button | — |
| `JOY_BTN12` | Trim Hat - ROLL LEFT | — |
| `JOY_BTN9` | Trim Hat - ROLL RIGHT | — |
| `JOY_BTN11` | Trim Hat - NOSE UP | — |
| `JOY_BTN10` | Trim Hat - NOSE DOWN | — |
| `JOY_BTN8` | Master Arm Toggle | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN3` | Nose Wheel Steering Button | — |

### WINCTRL CarrierAce PTO 2

- Profile: `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua`
- Shared hardware: `winctrl-pto2`
- Physical instance: `19b7d090-6120-11f0-8001-444553540000`
- Kneeboard page: `08-WINCTRL-PTO2.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN32` | Tail Hook - RETRACT | — |
| `JOY_BTN34` | Tail Hook - EXTEND | — |
| `JOY_BTN5` | Flap Switch UP else HALF | — |
| `JOY_BTN7` | Flap Switch DOWN else HALF | — |
| `JOY_BTN3` | Launch Bar - RETRACT | — |
| `JOY_BTN4` | Launch Bar - EXTEND | — |
| `JOY_BTN35` | Landing Gear - UP | — |
| `JOY_BTN37` | Landing Gear - DOWN | — |
| `JOY_BTN11` | Anti-Skid Switch - OFF | — |
| `JOY_BTN10` | Anti-Skid Switch - ON | — |
| `JOY_BTN38` | Parking Brake - OFF | — |
| `JOY_BTN39` | Parking Brake - ON | — |
| `JOY_BTN1` | Master Alert Button - RESET | — |
| `JOY_BTN13` | Hook Bypass Switch FIELD | — |
| `JOY_BTN12` | Hook Bypass Switch CARRIER | — |

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
| `JOY_BTN10` | DEP Clear | — |
| `JOY_BTN14` | DEP Enter | — |
| `JOY_BTN21` | DEP Bingo | — |
| `JOY_BTN22` | DEP CRS | — |
| `JOY_BTN24` | DEP Declutter | — |
| `JOY_BTN25` | DEP HDG | — |
| `JOY_BTN23` | DEP LAW | — |
| `JOY_BTN29` | DEP Mode | — |
| `JOY_BTN19` | HUD Power Knob - ON | — |
| `JOY_BTN20` | HUD Power Knob - OFF | — |
| `JOY_BTN30` | DEP Depression Increase | — |
| `JOY_BTN31` | DEP Depression Decrease | — |
| `JOY_RY` | HUD Brightness Knob | — |
| `JOY_Y` | MIP Lights Knob | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN7` | Kneeboard Jump To Shortcut 1 | — |
| `JOY_BTN7 + JOY_BTN8` | Kneeboard Jump To Shortcut 2 | — |
| `JOY_BTN7 + JOY_BTN9` | Kneeboard Jump To Shortcut 3 | — |
| `JOY_BTN7 + JOY_BTN11` | Kneeboard Jump To Shortcut 4 | — |
| `JOY_BTN7 + JOY_BTN12` | Kneeboard Jump To Shortcut 5 | — |
| `JOY_BTN7 + JOY_BTN13` | Kneeboard Jump To Shortcut 6 | — |
| `JOY_BTN7 + JOY_BTN15` | Kneeboard Jump To Shortcut 7 | — |
| `JOY_BTN7 + JOY_BTN16` | Kneeboard Jump To Shortcut 8 | — |
| `JOY_BTN7 + JOY_BTN17` | Kneeboard Jump To Shortcut 9 | — |
| `JOY_BTN7 + JOY_BTN18` | Kneeboard Jump To Shortcut 10 | — |
| `JOY_BTN7 + JOY_BTN23` | Kneeboard Next Shortcut | — |
| `JOY_BTN7 + JOY_BTN25` | Kneeboard Previous Shortcut | — |
| `JOY_BTN7 + JOY_BTN24` | Kneeboard Next Page | — |
| `JOY_BTN7 + JOY_BTN22` | Kneeboard Previous Page | — |
| `JOY_BTN7 + JOY_BTN21` | Kneeboard ON/OFF | — |
| `JOY_BTN7 + JOY_BTN14` | Kneeboard Make Shortcut | — |
| `JOY_BTN7 + JOY_BTN10` | Kneeboard current position mark point | — |
| `JOY_BTN7 + JOY_BTN29` | Kneeboard glance view | — |
