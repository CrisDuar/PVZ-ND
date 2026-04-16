# Custom Levels Samples

Drop any `.json` file from this folder onto the **Custom Levels** room in PvZ ND to install it.
The drag-and-drop handler copies the file into your account's `custom_levels/` folder and the list refreshes automatically.

## Format

Custom levels use the same JSON schema as bundled levels in `datafiles/levels/stage*/Level*.json`.
The JSON is parsed by [`load_level_json`](../scripts/load_level_json/load_level_json.gml) and fed into
[`load_level_struct`](../scripts/load_level_struct/load_level_struct.gml).

Required top-level fields:

| Field | Type | Notes |
| --- | --- | --- |
| `control` | struct | Must include `mowers`, `limit`, `windy`, `rain`, `stage`, `daytime`. |
| `sprite` | string | Asset name of the prize sprite shown after clearing. |
| `snd` | string | Asset name of the prize sound. |
| `is_conveyor` | bool | If `true`, uses conveyor-belt plant packets instead of choose-your-seeds. |
| `cys` | bool | "Choose your seeds". Forced `false` when `is_conveyor` is `true`. |
| `preplants` | array | Plant IDs pre-selected when `is_conveyor` is `false`. |
| `loop` | bool | Music loop flag. |
| `idle_sng`, `horde_sng` | string | Asset names for the idle / final-wave songs. |
| `horde_prcnt` | number | Fraction of progress at which the final wave triggers (0..1). |
| `surprise_enabled` | bool | Allow surprise zombies. |
| `pt` | number | Spawner pace / points-threshold seed. |
| `infinite`, `infinite_loop`, `progressbar`, `onlyname` | bool/number | Endless mode + HUD toggles. |
| `lvl_en`, `lvl_es`, `lvl_zh` | string | Localized level names. |
| `rw` | number[] | Y-pixel positions of the usable rows (one entry per row). |
| `arr_row` | number[][] | Groups of row indices referenced by wave entries via `row`. |
| `wf` | `[waveIndex, flagType][]` | Flag / warning markers (`flagType` 1 = mini-wave, 2 = final wave). |
| `waves` | `{row, typ, num}[][]` | Zombies spawned per wave. `typ` must be a valid `z_*_obj` asset name. |

Optional:

- `fog`, `smog` — if > 0, spawns the matching controller with that x-target.
- `prizevar`, `lvl`, `money`, `plantroom` — prize metadata; custom levels currently override these in `load_custom_level`.
- `objects` — placed objects, same schema as `Level*_obj.json` (see `load_objects_struct`).
- `show_zombies` — defaults to `true`; set `false` to hide the zombie preview icons.

See `sample_custom_level.json` in this folder for a minimal working template.
