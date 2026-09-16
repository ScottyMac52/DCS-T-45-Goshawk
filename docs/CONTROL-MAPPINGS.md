# T-45 control mappings

This reference is generated from the effective DCS `.diff.lua` profiles used by IPI. Those profiles remain the executable source of truth.

## Device index

| Device | Profile file | Layers | Assignments |
| --- | --- | --- | ---: |
| F16 MFD 1 | `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua` | Base, JOY_BTN7 | 25 |
| F16 MFD 2 | `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua` | Base, JOY_BTN7 | 25 |
| T-Pendular-Rudder | `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua` | Base | 3 |
| Viper TQS | `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua` | Base | 11 |
| VKBSim Gunfighter F14 | `VKBSim Gunfighter F14 {2D5CEC70-5189-11f1-8001-444553540000}.diff.lua` | Base, JOY_BTN7 | 10 |
| WINCTRL CarrierAce PTO 2 | `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua` | Base | 15 |
| WINCTRL ViperAce ICP | `WINCTRL ViperAce ICP {3731E2E0-4D98-11f1-8001-444553540000}.diff.lua` | Base, JOY_BTN7 | 42 |
| F16 MFD 3 | `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua` | Base | 0 |

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

### T-Pendular-Rudder

- Profile: `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua`
- Shared hardware: `tm-tpr`
- Physical instance: `14ed3d40-3f58-11f1-8002-444553540000`
- Kneeboard page: `03-TM-TPR.png`

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
- Shared hardware: `vkb-f14-gunfighter`
- Physical instance: `2d5cec70-5189-11f1-8001-444553540000`
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
| `JOY_BTN8` | Master Arm | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN3` | NWS | — |

### WINCTRL CarrierAce PTO 2

- Profile: `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua`
- Shared hardware: `winctrl-pto2`
- Physical instance: `19b7d090-6120-11f0-8001-444553540000`
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

### WINCTRL ViperAce ICP

- Profile: `WINCTRL ViperAce ICP {3731E2E0-4D98-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `winctrl-icp`
- Physical instance: `3731e2e0-4d98-11f1-8001-444553540000`
- Kneeboard page: `07-WINCTRL-ICP.png`

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
| `JOY_BTN19` | HUD ON | — |
| `JOY_BTN20` | HUD OFF | — |
| `JOY_RY` | HUD Bright | — |
| `JOY_Y` | MIP Lights | — |
| `JOY_BTN30` | DEP Dep+ | — |
| `JOY_BTN31` | DEP Dep- | — |

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

### F16 MFD 3

- Profile: `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `c5be49a0-2342-11ee-8001-444553540000`
- Kneeboard page: `08-TM-MFD-MFD3.png`

#### Base layer

No module-specific assignments are present. The profile remains available for shared UI Layer controls and future module bindings.
