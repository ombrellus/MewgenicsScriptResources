# Boss Cutscenes

In data/boss_cutscene_info.gon you can add a new cutscene for a boss buy specifying a custom id.

`CutsceneID {}`
* `name string` -- Visual name of the boss
* `frame_label string` -- Label of the frame where the boss portrait is present
* `quotes [string]` -- List of quotes the boss can say, looks up into CSV files


# Music

In audio/music/music_info.gon you can add new music by specifying a custom Identifier (MusicID) and specify each version of the music for each layer.

`MusicID {}`
* `map    "path/to/file"`
* `battle "path/to/file"`
* `boss   "path/to/file"`
* `event  "path/to/file"`
* `midi   "path/to/file"` -- Midi file used for singing cats
* `intro "path/to/file"` -- Intro section used for bosses
* `intros ["path/to/file"]` -- Radio intro for the song, picked at random
* `outros ["path/to/file"]` -- Radio outro for the song, picked at random

>[!NOTE]
> You can specify a path as a list of 2 paths to create a transition to a looping part


# Cat Faces

In data/catgen.gon new faces for cats can be specified by appending a custom Indentifier (FaceID) inside the `faces` table.

`FaceID {}`
* `face_offset [X Y]` -- Position offset of the whole face
* `eyebrow_up X / [X Y]` -- Change in height of the eyebrows, different heights can be specified for the right and left eyebrow
* `eyebrow_rotation X / [X Y]` -- Change in rotation of the eyebrows, different rotations can be specified for the right and left eyebrow
* `ear_rotation X / [X Y]` -- Change in rotation of the ears, different rotations can be specified for the right and left ear
* `mouth Mode` -- What appearence the mouth takes [open, closed, smile]
* `eyes Mode / [Mode Mode]` -- How the eyes look [open, closed], different modes can be specified for the right and left eye

# Damage Styles

In data/damage_text_styles.gon new damage styles can be specified by adding a custom indentifier (DamageStyleID)

`DamageStyleID {}`
* `color [R G B]` -- Color of the text
* `outline_color [R G B]` -- Color of the text's outline
* `right_icon string` -- Icon after the text (Symbol 4538 in UI)
* `back_icon string` -- Icon behind the text (Symbol 4532 in UI)

Damage styles based on the damage amount are specified in an array called `damagescale_thresholds`, each entry is a size 2 array formatted like:
* `[X DamageStyleID]`
Where `X` is the minimun damage needed to switch to the specified damage style

# Text Functions

Mewgenics has a variety of text applications that enhance words written or spoken. MANY of these text functions are ONLY used when spoken, but majority of non-emotion or timing ones can be used.

If you format incorrectly, your text will show up as a thin black/red bar.

![Failed format](images/failtext.png)

Because of the initial ambiguity there might be in what text actions can be applied to non-dialouge strings, we've set up a table containing the function, what it does, and what it's applicable to.

## Universal

`b` -- Bolds a string or substring.
> Example: `[b] Im so awesome![/b]`

`i` -- Italicizes a string or substring.
> Example: `[i] Ombrellus is a cool guy.[/i]... i didn't say that`

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

`{binding:X}` -- The specific [binding](enums.md#input-bindings) a controller or keyboard has for a specific input.

## Abilities

Some abilities have specific utility variables for their descriptions that are replaced upon use. 

`{vX}` -- Replaced by the set of variables in the "tooltip_values" found in the "meta" table of a ability. X is the value called (v0 being the first, v1 being the second, so on)

## Items

Some items have specific utility variables that are replaced upon use.

`{aux}` -- Replaced by the aux of the item. (TEST: Maybe works with abilities not sure)

`{str_aux}` -- Replaced by the variable given for str_aux_initialize.

`{aux_cat_name}` -- Replaced by the name of the cat using said item.

`{str_aux_active_name}` -- Replaced by the active_name aux in str_aux_initialize (called upon random_copyable_colorless_ability)

`{str_aux_active_desc}` -- Replaced by the active_desc aux in str_aux_initialize (called upon random_copyable_colorless_ability)

`{str_aux_passive_name}` -- Replaced by the passive_name aux in str_aux_initialize (called upon random_copyable_colorless_passive)

`{str_aux_passive_desc}` -- Replaced by the passive_desc aux in str_aux_initialize (called upon random_copyable_colorless_passive)

`{amount}` -- The amount of uses left? (This is only ever used ADDITION_USES and ADDITION_DURABILITY so it's likely this actually doesn't do anything but must be tested first before removed.)

`{chaptername}` -- The [chapter name](enums.md#vanilla-chapters) of the destination of a quest item. 

## Combat

`{rounds}` -- The amount of rounds that have passed, with the counter being 1+X, where Round 1 is 0.

`{studiedtype}` -- Used only in combat, and only when triggered by Study (virtually useless)

`{count}` -- Specifically only used in combat to count the amount of enemies that fled the battle.

`{stacy_number}` -- Replaced with a random number.

`{buddyname}` -- Replaced by the "buddy" variable in the passives table of a entity in combat; Guillotina's Head for her body, a chosen cat for Lenny, etc etc.

`{SpawnedBy}` -- Replaced by the spawner of a entity.

## Statuses

Some statuses have specific utility variables that are replaced upon use.

`{stacks}` -- The stacks of the status.

`{absstacks}` -- The mathematically absolute value of the stacks of the status.

`{applier}` -- Applier of the status.

`{applier's}` -- The possessive pronoun of the applier of the status.

## Level Up

`{level}` -- Current level of the chosen cat (seems to only function on single-subject uses.)

## Events

While these aren't important to know regularly, there are useful variables that are replaced with certain strings that help writing flow well. These are mostly pronoun variables (i.e. she, they, him) but there are a couple other useful utilities.

> [!TIP]
> All pronoun specific words have uppercased and lowercased versions (i.e. {His} and {his}). However, since not all people will read this message, the lowercased versions have been supplied anyway.

`{Catname}` -- Replaced with the name of the chosen cat for the event.  
`{catname}` -- Achieves the same as it's counterpart, but does not begin with a uppercase.

`{Catname's}` -- Replaced with the possessive form of the name of the chosen cat for the event.     
`{catname's}` -- Achieves the same as it's counterpart, but does not begin with a uppercase.

`{He}` -- Replaced by the single-subject appropriated version of "he" (i.e. he, she, they, it)      
`{he}` -- Achieves the same as it's counterpart, but does not begin with a uppercase.

`{His}` -- Replaced by the single-subject appropriated possessive pronoun. (i.e. his, her, theirs, its)     
`{his}` -- Achieves the same as it's counterpart, but does not begin with a uppercase.
> Note that " its' " is not a word.

`{Him}` -- Replaced by the single-subject appropriated version of "him." (i.e. him, her, their, it)     
`{him}` -- Achieves the same as it's counterpart, but does not begin with a uppercase.

`{He's}` -- Replaced by the single-subject appropriated conjunction of the chosen cat pronoun and "is". (i.e. he's, she's, they're, it's)       
`{he's}` -- Achieves the same as it's counterpart, but does not begin with a uppercase.

`{Himself}` -- Replaced by the appropriated third-person reflexive (intensive) pronoun. (i.e. himself, herself, themselves, itself)         
`{himself}` -- Achieves the same as it's counterpart, but does not begin with a uppercase.

`{itemname}` -- Replaced with the event's "prize" item. (This will change based on the outcome of the event and it's arguements.)

`{amount}` -- Replaced with certain aux values. Note that even if the event's value is a percent and not a integer, {amount} is still used to represent the percent value (though it should be accompanied by a percent symbol.)

`{ability}` -- Replaced by the event's "prize" ability. 

`{disorder}` -- Replaced by the event's "prize" disorder.

`{passive}` -- Replaced by the event's "prize" passive.

`{statchanges}` -- Replaced by the event's "prize" stat changes ({statchanges} is icons and no actual text. Will look like ""Fluffy got +1[img:str], -1[img:con]"" in context)

## House (Interstatials)

At the moment, these are useless to know since we can't do anything with house interstatial texts as of now (outside of changing them).

`{Catname}` -- Replaced with the name of the chosen cat for the event.

`{CatnameX}` -- Replaced with the name for the X cat selected during a multi-cat scene. (The first cat is 1, second 2, and so on...)

`{gendericonX}` -- Replaced with the appropriate gender icon for the X cat selected in a multi-cat scene. (The first cat is 1, second 2, and so on...)

`{injury}` -- Replaced by a selected injury associated with the selected cat.

`{disorder}` -- Replaced by a selected disorder associated with the selected cat.

`{age}` -- The age of the currently selected cat during a house intestatials cutscene. (seems to only function on single-subject uses.)

`{age}` -- The age an NPC will accept a cat at, visually shown on the NPC map.

`{amount}` -- Replaced with certain aux values. Note that even if the event's value is a percent and not a integer, {amount} is still used to represent the percent value (though it should be accompanied by a percent symbol.)

`{year}` -- Replaced by the current ingame year.

`{weekday}` -- Replaced by the day of the current ingame week.

`{month}` -- Replaced by the current ingame month.

`{day}` -- Replaced by the current ingame day.

## NPC Text

> [!IMPORTANT]
> All of the name and pronoun functions in [event text](misc.md#events) can apply in here.

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

> Example: `Oh also, here's {questreward} coins for your time.[sfx:PickupCoin][pause:1][sfx:PickupCoin][pause:1][sfx:PickupCoin]`

`o:string` -- Colours the outline of the text using a specific colour. Only ingame colour used is black.

> Example: `Frank want [o:black][c:white][img:retired]Retired[/c][/o] cats only.`

`{name}` -- The name of the NPC? (Only used by Baby Jack, Organ Grinder, and Tracy)

`{desc}` -- The description of the NPC? (Only used by Baby Jack, Organ Grinder, and Tracy)

`{organname}` -- The Steam User's name. (Notably, this is only declared on how Steam updates your name on the cloud, so having another person's savefile means you get their name too)

`{questitemname}` -- Replaced by the quest item a NPC will give to you.

`{questdestination}` -- Replaced by the [chapter](enums.md#vanilla-chapters) a NPC wants a specific item taken to.

`{questreward}` -- Replaced by the reward a NPC gives you after finishing a specific QUEST. (Notably, instead of this being a object, this is used to indicate how many coins Beanies plans to reward you with.)

## Misc/Unused

`ss` -- Shakes the screen upon being used. (TEST)

> Example: `[ss][a:shake] GET OUT! [/a]`

`{Teamname}` -- The name of a cat team through an adventure.

`{Adjective}` -- Used by the Teamname variable.

`{Nouns}` -- Used by the Teamname variable.

`{level}` -- The current level of the cat; this variant of the variable is used only on the map screen.

`{item}` -- Replaced by the item unlocked in the item unlock description (niche).

`{version_file}` -- Replaced by the current version file of the game.

# Time Travel Frames

Useless file on it's own.

Each **house NPC** has a selection of small differences in their appearance and outfits, triggered to change when the time machine in Act 3 is used.
The numbers correlating to a user's .gon files is the max amount of different variants pieces of a NPC can display. 

Beanies (All versions) - 15 frames. (Pocket)
Baby Jack - 10 frames. (Eyepatch)
Stacy - 30 frames. (Head thing)
Tracy - 10 frames. (Patch/headband)
Butch - 10 frames. (Scratches)
Organ Grinder - 10 frames. (Head)
Frank (All versions) - 10 frames. (Body)
Tink - 5 frames. (Crown)

It can be surmised that increasing these values allows the game to pick from a larger pool of variants, if the movie objects are appended to.