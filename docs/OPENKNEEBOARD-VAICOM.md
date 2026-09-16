# OpenKneeboard and VAICOM PRO

## Included kneeboard tab

The OvGME package installs 13 numbered PNG reference pages into `KNEEBOARD\T-45`. OpenKneeboard should discover the directory through its DCS Aircraft tab; otherwise add it as a Folder tab.

Planned generated pages:

- `01-TM-MFD-1.png`
- `01-TM-MFD-1-JOY-BTN7.png`
- `02-TM-MFD-2.png`
- `02-TM-MFD-2-JOY-BTN7.png`
- `03-TM-TPR.png`
- `04-VIPER-TQS-MISSION-PACK.png`
- `05-VKB-F14-GUNFIGHTER.png`
- `05-VKB-F14-GUNFIGHTER-JOY-BTN7.png`
- `06-WINCTRL-PTO2.png`
- `07-WINCTRL-ICP.png`
- `07-WINCTRL-ICP-JOY-BTN7.png`
- `08-TM-MFD-MFD3.png`
- `02-AVA-BASE-F16C.png`

## VAICOM PRO

This scaffold does not bundle an AutoHotkey/VAICOM PTT bridge. Installing it does not change VoiceAttack or VAICOM. If a bridge is added, document its physical inputs and chords here and reserve those inputs in the module profile.

## Optional VoiceAttack navigation

OpenKneeboard remote-control programs are normally under `C:\Program Files\OpenKneeboard\utilities`. Useful commands include `NEXT_PAGE`, `PREVIOUS_PAGE`, `NEXT_TAB`, `PREVIOUS_TAB`, `INCREASE_BRIGHTNESS`, `DECREASE_BRIGHTNESS`, `ENABLE_TINT`, and `DISABLE_TINT`. Use phrases that do not overlap VAICOM keywords.
