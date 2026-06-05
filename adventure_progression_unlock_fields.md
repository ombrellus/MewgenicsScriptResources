# Character formatting

*This list has been split into three major parts: dependancies, effects, and misc*

## DEPENDANCIES

`beat_house_boss` -- House boss needed to beat to unlock this

`visit_chapter` -- Chapter needed to just visit to unlock this

`complete_chapter` -- Chapter completed to unlock this

`complete_chapters [ ]` -- Chapters needed to completely unlock this.

`complete_chapter_with_class [chapter Class]` -- Provided chapter needs to be beaten with certain class

`requires_hard_path` -- If this unlock requires you to have beat hard path of any map.

`require_mapgen_flag` -- Requires a certain map flag to be unlocked or used.

`repeat` -- How many times this unlock must be triggered validly before it actually works

`requires_unlocked_npc` -- Requires a certain NPC to be unlocked

`required_difficulty` -- Must be on a certain difficulty to be triggered

`complete_act_difficulty [act# diff# ]` -- Complete an act on a difficulty

## EFFECTS

`beat_chapter_boss` -- Beat the boss of a given chapter

`complete_item_quest` -- Completes the quest for said item

`fail_item_quest` -- Fails the quest for said item

`set_mapgen_flag` -- Sets a mapgen flag read in any map's flags code

`set_savefile_flag` -- Sets a savefile flag.

`increment_savefile_counter` -- Changes the provided counter in savefile variables by 1.

`popup` -- The popup that shows up on unlock
* `prompt` -- The string that pops up under the image
* `frame` -- The image
* `immediate` -- Effects are immediate instead of after going home.

`reset_npc_sequence` -- Allows this npc sequence to be triggered again by certain means.

`preempt_npc_sequence` -- (TEST???)

`trigger_npc_sequence` -- Npc sequence from a npc on the house map triggered
(TO TEST): Seems to work even if the npc is not unlocked.

`trigger_npc_sequence_tomorrow` -- Npc sequence from a npc on the house map triggered the next day

`post_combat_cutscene` -- Cutscene that plays directly after the battle where this unlock is triggered.

`queue_cutscene_immediate` -- Cutscene plays immediately after the unlock. (This seems innaccurate, since these play between leaving the immediate map and going to the next one.)

`surviving_kaiju` -- Sets the surviving kaiju

`trigger_house_boss` -- Triggers a house boss

`unlock_boss` -- Unlocks a boss

`unlock_quest_item` -- Unlocks a quest item

`unlock_passive` -- Unlocks a passive

`unlock_ability` -- Unlocks a ability

`unlock_item_immediate` -- Unlocks the said item

`unlock_song` -- Unlocks a house radio song

`unlock_levelgroup` -- Unlocks a group of levels

`unlock_npc_tomorrow` -- Unlocks a NPC the next day

`unlock_act_difficulty [act# diff#]` -- Unlocks a difficulty for a act

## MISC

`repeatable` -- If this unlock is triggered to check and the unlock has not been achieved SPECIFICALLY from failing it (i.e. a item quest) this unlock will be checked or started again later