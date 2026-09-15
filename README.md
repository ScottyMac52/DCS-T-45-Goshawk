# DCS-T-45-Components

Scaffolded by **DCS Input Profile Importer** (DCS-Common).

| Identity | Value |
| --- | --- |
| Display name | T-45 |
| DCS input module | `T-45` |
| Kneeboard folder | `T-45` |

## Local build

```bash
npm ci
export DCS_COMMON_ROOT=/path/to/DCS-Common   # or checkout at .dcs-common
npm run build:kneeboard
npm run test:kneeboard
```

Review `SCAFFOLD-REPORT.md` and refine `config/kneeboard.json` before the first release.

UI Layer composition is enabled by default. Hardware pages combine shared UI functions with module-specific functions, and the OvGME package includes DCS-Common's canonical `Config/Input/UiLayer` payload.

See DCS-Common [consumer-repository-setup.md](https://github.com/ScottyMac52/DCS-Common/blob/main/docs/consumer-repository-setup.md).
