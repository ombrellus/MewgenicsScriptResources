# HOUSE BOSS FORMATTING

Note that nothing in here will "summon" the boss. That can be found in [the unlock formatting file](unlock_stuff_resources.md#adventure-progression-unlock-resources), where you should call the custom boss **by the same exact key you gave it in house_boss_info.**

`HouseBossKeyName {}`
* `level LvlFileName` -- The (singular) file it pulls from to load a level.

* `music MusicID` -- The music to play during the fight. It is possible to [load your own music if desired,](misc.md#music) though it must have at least boss, midi, and intro parameters.

* `lead_time X` -- The X (integer) amount of days given before you can fight the boss.

* `rematch_cooldown [initialDays returnDays]` -- initialDays represents a integer amount of days before the fight comes to you; returnDays represents the amount of days before the rematch comes back if you were to fail.

* `initial_cooldown [x y]` -- Unsure [TODO]

* `savefile_string "SAVEFILE_STRING"` -- Name of the current event in the savefile if applicable (i.e. "Kaijus duking it out"), can be directly written as a string or point to the translation file

* `initial_cutscene_night SWFFile` -- _Selects a .swf file from "swfs/cutscenes" to pull from._ SWFFile is the name of the file without the file type extension (i.e. guillotina.swf -> guillotina)

* `rematch_cutscene_night SWFFile`  -- _Selects a .swf file from "swfs/cutscenes" to pull from._ SWFFile is the name of the file without the file type extension (i.e. guillotina.swf -> guillotina)

* `arrival_unlock AdventureProgressionKeyName` -- Calls a "unlock"/table in adventure_progression_unlocks.gon to be ran. (This is usually to run a npc sequence, which leads to Butch and Jack commenting on the Kaijus, Frank to mention C-1000, etc. )

* `act X` -- The ACT the boss belongs to. (Used for Steven?)

* `index X` -- The position in sequence of the ACT the boss belongs to. (Used for Steven?)

TODO: add where icons are for house, steven, etc.