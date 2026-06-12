# Map (Making)

Maps are stored in the "maps" folder and load the data for a map when loaded; this constitutes music, certain enemy selections, and levels loaded. Of course, the actual map gfx has to be done in adobe, but the ingame maps have been provided in [the ingame swfs folder.](ingame%20swfs/map.fla)

Note that all map values are local to their own file.

## Non-Structured

This stuff is just on the file without having to be in a alterior object (table).

`graphics ActionScriptLink` -- The map.fla object it loads for the visual map.

`chapter_id ChapterID` -- Must be a variable within the MewDirector.h, which is later re-declared in the chapter_id_enum.gon file.

`tileset TilesetID` -- Matches up with a group of tilesets delcared in tilesets.gon.

`world_name_frame FrameLabel` -- The name of the naming layer frame that corrosponds with a .fla object (NOTE: FIND WHAT THE OBJECT IS CALLED)

`area_name string` -- Name of the area (can look up to CVS files)

`intro_cutscene ActionScriptLink` -- The modular_cutscenes.fla object if loads for the visual introduction.

`act X` -- The ACT it belongs to

`chapter X` -- The CHAPTER it represents.

`version X` -- TEST??

`music string` -- Folder it pulls from in audio folder for tracks. Tracks MUST be named appropriately for each part, using the name of each part of a full chapter. 

`ambience string` -- The ambience track to pull from in audio/ambience for the map (including extension).

i.e. 

[TODO: POPULATE WITH STRING REFERENCES TO EXAMPLE FROM ALLEY TRACKS]

`levels {}` -- The level groups to use for specific nodes (groups can be unlockable)
* `folder string` -- The folder(s) where level groups will be pulled from
* `easy [string]` -- The folder(s) within the pathing that all normal levels are pulled from
* `hard [string]` -- The folder(s) within the pathing that all hard levels are pulled from 
* `rare [string]` -- The folder(s) within the pathing that all rare levels are pulled from (used for elite levels)
* `boss [string]` -- The folder(s) within the pathing that all boss levels are pulled from
* `miniboss [string]` -- The folder(s) within the pathing that all miniboss levels are pulled from
* `special [string]` -- The folder(s) within the pathing that all special levels are pulled from (unused)

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

`bosses {}` -- This table is populated with multiple bosses it pulls randomly from. There are two major ways to set this up;

You can manually set up the levels and cutscene this boss pulls from;
Note that the name of the table should still be the object pointer from boss_cutscene_info.
The subfolder will be found in the pathing for bosses.
```
radicalrat {
    subfolder radicalrat
    boss_cutscene radicalrat
}
```

Or, if the naming for the subfolder and boss_cutscene is exactly the same as the name of it's boss_cutscene_info.gon object folder, you may just do this.

`radicalrat auto`

**If you have a single boss**, the best way to set this up is through the map nodes. In the nodes table, add this.

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

The name that a "node" connects to is surprinsgly not the actionscript link name of the object, but the assigned meta name of the object on the map. This is how (and why) the game reads nodes such as "exit0" and "exit1", as these are declared on the .fla scene itself. 

This is the setup of a custom node:

`nodeName {}` -- Replace nodeName with the name assigned on the scene
* `type nodeType` -- The type of node it represents. All node types can be found in "standard_nodes.gon"
* `locked boolean` -- Is this node usually locked?
* `override_art ActionScriptLink` -- Art that should play over the standard node look. 
* `hidden` -- Is this node usually hidden?

The following only apply to being in certain nodes

* `unlockcheck_on_complete` -- Only applicable to boss nodes. Flags a unlock in adventure_progression_unlocks to run.
* `next_map map.gon` -- Only applicable to exit nodes. The gon file to read for the next map.
* `level GONObject` -- Only applicable to event and battle nodes. On map init, this sets up what any node of this type will load as a object.

## Flags 

`flags {}` -- Flags are the way maps can be "affected" by events and unlock ingame. Objects in these can be referenced by adventure_progression_unlocks to bw turned off (though not off). These are off by default until "unlocked" and cannot be turned off again (as of now)

* `flagName {}` -- Replace flagName with the name you want.
    * `node` -- The exact same setup as the custom nodes shown above.




# Text Functions

Mewgenics has a variety of text applications that enhance words written or spoken. MANY of these text functions are ONLY used when spoken, but majority of non-emotion or timing ones can be used.

If you format incorrectly, your text will show up as a thin black/red bar.

![Failed format](images/failtext.png)

Because of the initial ambiguity there might be in what text actions can be applied to non-dialouge strings, we've set up a table containing the function, what it does, and what it's applicable to.

## Universal

`b` -- Bolds a string or substring.
> Example: `[b] Im so awesome![/b]`

`i` -- Italicizes a string or substring.
> Example: `[i] Ombrellus is a cool guy.[/i]`

`s:num` -- Sets the size for a string or substring. "Num" is a float value but can be represented with a integer.
> Example: `When I am excited, I speak [s:1.5]BIG![/s] Ooh, sorry there. [s:.4] I didn't realize you don't like loud noises.[/s][s:.08] Sorrryyy....[/s]`

`c:string` -- Sets the colour for a string or a substring.
> Example: `If my text is red, [c:red]I'm warning you to BACK OFF![/c]`

`img[string]` -- Writes a symbol overriding the substring. Symbols are from the file ui.swf and are contained in frames 76 - 101.
Here are the following inputtable symbols; if they can be manipulated by colours, their name in the .fla is their string name with the prefix "FontIcon_". If they cannot, their prefix is "RawFontIcon_", such as the gamepad button, mouse, etc etc

Note: If your string aux is of a icon name, that can be applied into img.
I.e. `img[{str_aux}]`

* Stats: `str`, `int`, `dex`, `spd`, `cha`, `lck`, `con`
* House: `male`, `female`, `neutral` (questionmark), `retired`, `appeal`, `kitten`, `comfort`, `stimulation`, `health`, `evolution` (mutations), `champion`, `elite`
* Classes: `Fighter`, `Mage`,`Hunter`,`Tank`,`Thief`,`Cleric`,`Colorless`,`Jester`,`Butcher`,`Necromancer`,`Monk`,`Psychic`,`Tinkerer`,`Druid`
* Misc: `circle`, `star2`, `triangle`, `square`,`sword`, `shield2`, `poop`, `heart`
* RawFontIcons: `GamepadButton`, `MouseButton`, `shield`, `divineshield`, `star`

> Example: `Did you know the symbol for the Jester [img:Jester] looks like a die?! And Colorless [img:Colorless] looks like a "No" symbol!`

## NPC Text

`a:string` -- Sets a text action to affect the string or substring. Here are the following known options:
* `pulse` -- The letters pulse.
* `shake` -- The letters shake.
* `wave` -- The letters wave.

> Example: `[a:wave] Blub Blub [/a]`

`m:string` -- Sets the currently talking NPC to a mood. Since motions are triggers, there is no [/m] used to "close" any motion actions. Because not every NPC has every animation that can be used, we've created a table for each emotion and the NPCs that can express them!

| Emotion | NPCs Confirmed to use it |
|---|---|
| angry | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| bored | Beanies, Butch, Jack, Organ Grinder, Steven |
| confused | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| default | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| grossedout | Beanies, Butch, Jack, Organ Grinder, Steven |
| happens | Organ Grinder |
| happy | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| inlove | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| mocking | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| paranoid | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| pointdiagonal | Combat Tutorial Butch |
| pointleft | Combat Tutorial Butch |
| pointright | Combat Tutorial Butch |
| pondering | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| question | Beanies |
| questioning | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| sad | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| scared | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| shocked | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| spacedout | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| veryangry | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| veryhappy | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| whispering | Beanies, Butch, Frank, Jack, Organ Grinder, Steven, Tracy |
| winking | Beanies, Butch, Jack, Organ Grinder, Steven |
| worried | Steven |

> Example: 
```
[m:default] im only used during when a npc speaks. i feel okay. I don't even need a closer! [m:inlove] Isn't that incredible?!
[m:shocked] Hold on, what?! [m:confused] Hold on, you don't know what I can do?!
[m:questioning][s:0.7] What do they teach you kids in school?... [/s]
[m:grossedout] Are you kidding?!
[m:angry] Oh, and i can get angry... [m:mocking] Maybe even mock you!
[m:bored] But it gets boring...
[m:happy] Sometimes I become happy!
[m:sad] Or I become sad...
[m:veryhappy] Or very happy! [m:whispering][s:0.7][a:shake] It's so cool, right?! [/a][/s]
[m:winking] thats the power of me!
[m:paranoid] Oh, but make sure to use these specific strings! Otherwise they don't work!!
```

`pause:num` -- Pauses for a certain amount of time between the preceeding substring and the following substring. "Num" is a float value but can be represented with a integer.
`sfx:string` -- Plays a SFX value. Only seen ingame with the coin sound, used by Dr. Beanies.
> note from the editor: how does dr. beanies pay you so much once he's broke? isn't he broke? i dont understand

> Example: `Oh also, here's {questreward} coins for your time.[sfx:PickupCoin][pause:1][sfx:PickupCoin][pause:1][sfx:PickupCoin]`

`o:string` -- Colours the outline of the text using a specific colour. Only ingame colour used is black.

> Example: `Frank want [o:black][c:white][img:retired]Retired[/c][/o] cats only.`

## Misc/Unused

`ss` -- Shakes the screen upon being used. (TEST)

> Example: `[ss][a:shake] GET OUT! [/a]`


