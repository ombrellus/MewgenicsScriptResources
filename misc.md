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


