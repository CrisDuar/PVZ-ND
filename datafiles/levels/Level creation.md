# Level properties

Explanation of each variable needed to create a level.  
If a variable is written in *italic*, it means that the property is not available for custom levels.  

---
## Reward

***sprite:*** The sprite of the reward.  

***lvl:*** Value of the progress obtained. For example, if it's set to `2.0`, then the progress stored in the variable specified in `pricevar` will be set to `2.0`.  

***prizevar:*** Progress to be updated. These are the valid values:  

| Value | Description |
| ---- | ----|
| niveles | Adventure mode progression |
| vasebreaker | Vasebreaker progression |
| levelhard | Hard mode progression. You must add a number at the end of the string (i.e levelhard0) |

***snd***: Song used after collecting the reward.  

***money***: How much money you get after completing a level.

| Value | Description |
| ---- | ----|
| 0 | Default theme |
| 1 | Special reward |

***plantroom:*** *Room* where the game takes the player after beating the level. These are some commonly used values:  
- "price_rm" (Reward description screen).
- "note_rm" (Note screen)
- "level1_sl_rm" (Level selection for the first stage. The number indicates the stage)
- "hardmode_day_rm" (Level selection for hard mode day stage). 

---
## Level configuration

**limit:** Coordinates `(x)` of the level limit (the bar that doesn't let you plant any further).  

**pt**: Grace time at the start of the level. It's expressed in `seconds`.  

**fn**: Number of waves that a level has.  

preplants": `array` of plants IDs. Indicates the plants in a locked and loaded level.  

**horde_prcnt:** Indicates the 50% rule (how much percentage of the current wave must remain to spawn the next one).  

**surprise_enabled:** The level uses ambushes.  

**infinite:** The levels loops when it reaches the final wave.  

**infinite_loop:** After reaching the final wave in an infinite level, the game sets the current wave to the one specified here.  

**show_zombies:** Shows the zombies during CYS screen.  

***lvl_type [deprecated]:*** Sets the level type. These are the valid values:  

| Value | Description |
| ---- | ----|
| -1 | No achievements (custom levels) |
| 0 | Regular or adventure |
| 1 | Hard mode |
| 2 | Endless |
| 3 | Versus or battles |
| 4 | Vasebreaker |
| 5 | Minigames |

**mowers:** `array`of IDs. Sets the lawnmowers used. The array index's corresponds to the row where the lawnmower will be set. These are the valid values.  

| Value | Description |
| ---- | ----|
| -1 | No lawnmower |
| 0 | Red lawnmower |
| 1 | Blue lawnmower |
| 2 | Pool cleaner |
| 3 | Brain |  

**versus_minigame:** `boolean`. Enables singleplayer versus mode minigame. You should also make the level infinite.  

**graves:** How many graves spawn at the very start of the level.  

**maxgraves:** Maximum of graves that can be spawned at the same time.  

**challenges:** `array`. Each position corresponds to a `0` or `1` to enable and disable a challenge.  

---
## Choose your seeds and conveyor

**cys:** `boolean`. The level lets you pick your seeds.  

**is_conveyor:** `boolean`. The level has a conveyor belt. This variable overwrittes `cys`.  

**conv_p_packets:**: `array of arrays` with the following structure: `[unit_id, costume, odds]`. Indicates the plants used in the conveyor belt.  

***conv_z_packets:***: `array of arrays` with the following structure: `[unit_id, -1, odds]`. Indicates the zombies used in the conveyor belt. While this variable works in common levels, its use is not recommended.

---
## Level stage, daytime and weather

**stage:** Sets the level stage. These are the valid values.  

| Value | Description |
| ---- | ----|
| 0 | Unsodded (1 row) |
| 1 | Unsodded (3 rows) |
| 2 | Frontyard |
| 3 | Pool |
| 4 | Weather |
| 5 | Park |

**daytime:** Sets the level daytime. These are the valid values.  

| Value | Description |
| ---- | ----|
| 0 | Noon |
| 1 | Sunset |
| 2 | Night |  

Note: If a stage does not have a daytime background, the game will use an available one.  

**windy:** Enables wind.  

**rain:** Enables rain.  

**fog:** `-1.0` by default (fog disabled). Indicates the coordinates (x) of the fog.

**smog:** `-1.0` by default (smog disabled). Indicates the coordinates (x) of the smog.  

---
## Music

**idle_sng:** Default song ID.  
**horde_sng:** Final wave song ID.  
**loop:** When set to `true`, the game won't use the final wave song.  

---
## Progress bar

**onlyname**: Shows only the level's name, not the progress bar.
**progressbar:** When set to `true`, the level displays the progress bar. This variable overwrittes `onlyname`.  
**lvl_en:** Level's name in english.  
**lvl_es:** Level's name in spanish.  
**lvl_zh:** Level's name in chinese (currently not used).  

---
## Zombie spawning and rows coordinates

**rw:** Coordinates of the available rows. These are the default values for 5 and 6 rows levels.

- Five rows: `[166.0, 267.0, 370.0, 472.0, 578.0]`  
- Six rows: `[152.0, 236.0, 339.0, 422.0, 527.0, 615.0]`  

**arr_row**: `array of arrays`. Each array of indexes indicates the available rows where a zombie can spawn. I.e, this is useful to make some zombies only spawn in water lanes, others only on land lanes, and the rest on any lane.  

**wf**: `array of arrays`. The structure is the following `[wave_id, flag_type]`. Indicates what waves have warnings before spawning.  

| Value | Description |
| ---- | ----|
| 0 | Nothing |
| 1 | A huge wave of zombies is approaching |
| 2 | A huge wave of zombies is approaching. Final wave |
| 3 | Necromancy |  

**waves:** `array of arrays`. Specifies the structure of the level. Each position of the array corresponds to a wave. Each wave contains one or multiple objects with the following structure: `{row, typ, num}`.  
- `row`: Indicates which index specified in `arr_row` is the zombie going to use to spawn.  
- `typ`: Zombie ID.  
- `num`: Amount of zombies spawned.   

---
## Objects  

You can place objects in a level using the `objects` property, which is an `array of objects`. Each object contains the following properties:

- obj_id: ID of the object.
- obj_type: Object type.  

| Value | Description |
| ---- | ----|
| 0 | Plants |
| 1 | Tile objects |
| 2 | Zombies |  

- pos: `array`. Each index contains and object with (x, y) coordinates in the level grid. Multiple positions indicates that multiple objects will be created.  
- vars: Each object has a specific set of variables that can be modified. The valid values for this `array` varies according to the object ID and Type.  

---
## Example

```json
{
  "sprite":"menusun1_spr",
  "lvl":2.0,
  "prizevar":"niveles",
  "money":10.0,
  "snd": 0,
  "plantroom":"price_rm",

  "limit":1600.0,
  "pt":7.0,
  "fn":4.0,
  "preplants":[0],
  "horde_prcnt":0.4,
  "surprise_enabled":true,
  "infinite":false,
  "infinite_loop":3.0,
  "show_zombies": false,
  "lvl_type": 1,
  "mowers":[
    -1.0,
    -1.0,
    0.0
  ],
  "versus_minigame": false,
  "graves": 3,
  "maxgraves": 10,
  "challenges": [1, 0, 1],

  "cys":false,
  "is_conveyor":false,
  "conv_p_packets":[
    [7, -1, 100],
    [8, -1, 50],
    [9, -1, 20]
  ],
  "conv_t1":4.0,
  "conv_t2":6.0,
  "conv_limit": 7.0,

  "stage":2.0,
  "daytime":0.0,
  "windy":false,
  "rain":false,
  "fog":-1.0,
  "smog":-1.0,
  
  "idle_sng": 3,
  "horde_sng": 4,
  "loop":false,

  "progressbar":true,
  "onlyname":false,
  "lvl_en":"Level 1",
  "lvl_es":"Nivel 1",
  "lvl_zh":"关卡",

  "rw":[370.0],
  "arr_row":[
    [0.0]
  ],
  "wf":[
    [3.0, 2.0]
  ],
  "waves":[
    [
      {"row":0.0, "typ": 1, "num":1.0}
    ],
    [
      {"row":0.0, "typ": 1, "num":1.0}
    ],
    [
      {"row":0.0, "typ": 1, "num":2.0}
    ],
    [
      {"row":0.0, "typ": 1, "num":2.0},
      {"row":0.0, "typ": 2, "num":1.0}
    ]
  ],

  "objects":[
    {
        "obj_id": 2,
        "obj_type": 1,
        
        "pos": [
          {"x": 6, "y": 0},
          {"x": 7, "y": 0},
          {"x": 8, "y": 0},
          {"x": 7, "y": 1},
          {"x": 8, "y": 1},
          {"x": 6, "y": 2},
          {"x": 7, "y": 2},
          {"x": 8, "y": 3},
          {"x": 5, "y": 4},
          {"x": 7, "y": 4},
          {"x": 8, "y": 4}
        ],

        "vars": [2]
    },
    {
        "obj_id": 2,
        "obj_type": 1,
        
        "pos": [
          {"x": 5, "y": 0},
          {"x": 6, "y": 1},
          {"x": 5, "y": 2},
          {"x": 5, "y": 3},
          {"x": 7, "y": 3},
          {"x": 6, "y": 4}
        ],

        "vars": [3]
    },
    {
        "obj_id": 2,
        "obj_type": 1,
        
        "pos": [
          {"x": 5, "y": 1},
          {"x": 8, "y": 2},
          {"x": 6, "y": 3}
        ],

        "vars": [7]
    },
    {
        "obj_id": 5,
        "obj_type": 0,
        
        "pos": [
          {"x": 1, "y": 0}
        ],

        "vars": [true]
    },
    {
        "obj_id": 0,
        "obj_type": 0,
        
        "pos": [
          {"x": 1, "y": 4}
        ],

        "vars": [true]
    },
    {
        "obj_id": 21,
        "obj_type": 0,
        
        "pos": [
          {"x": 2, "y": 2}
        ],

        "vars": [true]
    }
  ]
}
```