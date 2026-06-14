# Map (Making)

Maps are stored in the "maps" folder and load the data for a map when loaded; this constitutes music, certain enemy selections, and levels loaded. Of course, the actual map gfx has to be done in adobe, but the ingame maps have been provided in [the ingame swfs folder.](ingame%20swfs/map.fla)

Note that all map values are local to their own file.

## Non-Structured

This stuff is just on the file without having to be in a alterior object (table).

`graphics ActionScriptLink` -- The map.fla object it loads for the visual map.

`chapter_id ChapterID` -- Must be a variable within the MewDirector.h, which is later re-declared in the chapter_id_enum.gon file.

`tileset TilesetID` -- Matches up with a group of tilesets delcared in tilesets.gon.

`world_name_frame FrameLabel` -- The name of the naming layer frame that corrosponds with a .fla object (NOTE: FIND WHAT THE OBJECT IS CALLED)

`area_name string` -- Name of the area (can look up to CSV files)

`intro_cutscene ActionScriptLink` -- The modular_cutscenes.fla object if loads for the visual introduction.

`act X` -- The ACT it belongs to

`chapter X` -- The CHAPTER it represents.

`version X` -- TEST??

`music MusicID` -- [Music](misc.md#music) used for the area

`ambience string` -- The ambience track to pull from in audio/ambience for the map (including extension).

i.e. 

[TODO: POPULATE WITH STRING REFERENCES TO EXAMPLE FROM ALLEY TRACKS]

`levels {}` -- The level groups to use for specific nodes (groups can be unlockable)
* `folder LevelFolder` -- The folder(s) where level groups will be pulled from
* `easy [LevelFolder]` -- The folder(s) within the pathing that all normal levels are pulled from
* `hard [LevelFolder]` -- The folder(s) within the pathing that all hard levels are pulled from 
* `rare [LevelFolder]` -- The folder(s) within the pathing that all rare levels are pulled from (used for elite levels)
* `boss [LevelFolder]` -- The folder(s) within the pathing that all boss levels are pulled from
* `miniboss [LevelFolder]` -- The folder(s) within the pathing that all miniboss levels are pulled from
* `special [LevelFolder]` -- The folder(s) within the pathing that all special levels are pulled from (unused)

`events {}` -- Where event are pulled from
* `normal []` -- The "normal" event pool to pull from. This is the only table ever read in events and it is unknown what other tables the game supports.
    * `common` -- A hardcoded common pool. Note the absence of .gon at the end of the name.
    * `gonfile.gon` -- You can insert .gon files from the events folder in here.

`enemy_pools {}` -- A pool of enemies that can be pulled when a "random enemy" for the chapter spawns.
* `small [CharacterID]` -- All small enemies
* `medium [CharacterID]` -- All medium sized enemies
* `large [CharacterID]` -- All large sized enemies

`item_pools {}` -- The items pulled as rewards after battles, etc etc.
* `chapter_item_pool ItemPoolID` -- Like events and "normal", this is the only acceptable value in item pools.


## Boss

There are two major ways to set up bosses. **For multi-boss levels, set up a local table like this:**

`bosses {}` -- This table is populated with multiple bosses it pulls randomly from
* `BossID {}` -- Your boss id, it is first specified here
* * `subfolder LevelFolder` -- Name of the folder containing the boss levels (inside boss)
* * `boss_cutscene string` -- Id of the boss cutscene found inside boss_cuscene_info.gon

Or, if the naming for the subfolder and boss_cutscene is exactly the same as the bossID you specified, you may just do this.

`BossID auto`

**If you have a single boss**, the best way to set this up is through the map nodes.

```
boss {
    type boss //this is the type of node
    is_final_boss false //ironically does not mean it's the final boss. Instead points to if completing this event should proc the unlock for this area on currrnt playing classes.
    boss_cutscene dybbuk //boss cutscene it draws from.
}
```

* `type` -- Type of node
* `is_final_boss` -- ironically does not mean it's the final boss. Instead points to if completing this event should proc the unlock for this area on currrnt playing classes.
* `boss_cutscene` -- boss cutscene it draws from.

## Minibosses

Similarly, minibosses can be set up the same way as the multi-boss setup.

`minibosses {}` -- This table is populated with (multiple) minibosses it pulls randomly from. The game tends to only set it up with the "auto" function so it's (UNTESTED) if the manual setup works.

For instance, Boneyard does this:
```
minibosses {
    mamamaggot auto
}
```

## Nodes

`nodes {}` -- This table sets up the way nodes are read and treated from the .fla object to the game. For the sake of not having to write out every single node, it is HIGHLY advised to put `#include "standard_nodes.gon"` at the top of the table. After that, you can begin to edit each node.

The name that a "node" connects to is the instance name of the object on the map.

This is the setup of a custom node:

`nodeName {}` -- Replace nodeName with the name assigned on the scene
* `type nodeType` -- The type of node it represents. All node types can be found in "standard_nodes.gon"
* `locked bool` -- Is this node usually locked?
* `override_art ActionScriptLink` -- Art that should play over the standard node look. 
* `override_music MusicID` -- (ANY BATTLE TYPE). Changes the [music](misc.md#music) for the fight with another one
* `musiclayer string` -- (ANY BATTLE TYPE). Changes the music layer for the fight with another one
* `tileset TilesetID` -- (ANY BATTLE TYPE). Changes the battle tileset for the fight with another one
* `hidden bool` -- Is this node usually hidden?
* `next_map map.gon` -- (EXIT TYPE). The gon file to read for the next map.
* `unlockcheck_on_complete string` -- (BOSS TYPE). Flags a unlock in adventure_progression_unlocks to run.
* `boss_cutscene string` -- (BOSS TYPE). Sets the boss cutscene to a specific one
* `level LevelFolder` -- (BOSS TYPE). Sets the boss level group to a specific one
* `level EventID` -- (SPECIAL_EVENT TYPE). Sets the event that the node plays to a specific one
* `level EventID` -- (SPECIAL_EVENT TYPE). Sets the event that the node plays to a specific one
* `level ShopID` -- (TREASURE/SHOP TYPE). Sets the treasure or shop that the node leads to a specific one

## Flags 

`random_generation_flags {}`
* `choose_one [FlagName]` -- Selects one of these flags at random to set upon map generation

`flags {}` -- Flags are the way maps can be "affected" by events and unlock ingame. Objects in these can be referenced by adventure_progression_unlocks to bw turned off (though not off). These are off by default until "unlocked" and cannot be turned off again (as of now)

* `flagName {}` -- Replace flagName with the name you want.
    * `node` -- The exact same setup as the custom nodes shown above.