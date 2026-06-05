# Adventure Progression Unlock Resources

*This list has been split into three major parts: dependancies, effects, and misc*

Keep in mind many of these must first be declared to be locked in **locked_content**. Look below for that.

## REQUIREMENTS

`beat_chapter_boss` -- Beat the boss of a given chapter
(note: this seems redundant in terms of having complete_chapter as a check)

`beat_house_boss` -- House boss needed to beat to unlock this

`visit_chapter` -- Chapter needed to just visit to unlock this

`complete_chapter` -- Chapter completed to unlock this
(note: this seems redundant in terms of having beat_chapter_boss as a check)

`complete_chapters [ ]` -- Chapters needed to completely unlock this.

`complete_chapter_with_class [chapter Class]` -- Provided chapter needs to be beaten with certain class

`requires_hard_path` -- If this unlock requires you to have beat hard path of any map.

`require_mapgen_flag` -- Requires a certain map flag to be unlocked or used.

`repeat` -- How many times this unlock must be triggered validly before it actually gives the effect

`requires_unlocked_npc` -- Requires a certain NPC to be unlocked

`required_difficulty` -- Must be on a certain difficulty to be triggered

`complete_act_difficulty [act# diff# ]` -- Complete an act on a difficulty

## EFFECTS

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

# Locked Content Setup

The following are tables you would populate for locking away content. When making your own, be sure to name your file `locked_content.gon.patch` and the name of each table should be followed with a `.append`:

i.e.
`locked_bosses.append [ ]`

## Table Names

`default_unlocked_classes []` -- This is a table of the UNLOCKED classes, and all other classes are considered locked until unlocked

`locked_abilities []` -- Contains a list of ability objects.

`locked_passives []` -- Contains a list of passive objects.

`locked_items []` -- Contains a list of locked items; this is all armor, weapons, and trinkets.

`locked_bosses []` -- Contains a list of locked bosses linked by their object pointer name in boss_cutscene_info

`locked_levelgroups []` -- Contains a list of locked levelgroups. This is the folder name of the levels in the levels folder. Can be located within any chapter folder (i.e. bigsharklevels is within the sewer levels)

# NPC Favor Unlocks (file)

This file tends to be a bit odd. While the effects of NPCs are stored under their name, their actual unlocks are triggered by a counter system that reads a integer value for a explicit variable, suggesting there may have been alterior or other plans of upgrading.

## Beanies Quest Stuff

Despite being in this file the setup for this object is nothing like the rest of them. 

`destinations { chaptertitle integer }` -- Destinations that specify how much in coins Beanies rewards you when you finish a quest item that goes to that area.
* Current Variables: `caves boneyard meatworld moon core dimensionx jurassic theend endoftime`

`prereqs { chaptertitle chaptertitle }` -- Locks a flag or unlock behind having beat a chapter. Seems either unused or inaccurately labeled, since dimensionx is needed in this to unlock Ice Age.

`intro []` -- Contains the item object pointer name of the first quest item he gives.

`main_pool []` -- Pool that contains the item object pointer name for each item (oddly not the pointer to the sequence)

## NPCS

NPCs are titled by name from the hardcoded list. The name of an unlock in their pool MUST be the same as the name of the sequence within their npc file.

Here are all the values you can use.

### Requirements

`favor` -- The amount of cats needed

`required_act` -- The act required for this favor to be unlocked.

`required_chapter` -- The chapter number to have beaten for this favor to be unlocked.

`required_difficulty` -- Difficulty that has been played on for this favor to be unlocked.

`required_age` -- Tracy breaks the hardcoded meta of cat details with this. (int)

### Rewards

Anything that's usually incrementally upgraded will have a "1"

`reward_text` -- Text shown when reward has been granted

`gift_item` -- Puts a item in your storage. (TEST to see if it forces out another into trash)

`gift_item_from_pool` -- Puts a item in your storage from a pool delcared in general_pools

`set_savefile_flag` -- Sets a saveflag flag

`coins` -- Amount of coins you get for completing this favor.

`house_upgrade` -- Activates a object in the "upgrades" table within house.gon

`shop_level_up 1` -- Used by Organ Grinder, Tracy and Jack for the .fla to read and output certain objects when loaded. Upgrades by (int)

`tracy_special_item` -- Used by Tracy to ensure this item will appear in a shop. (TEST) Seems to be hardcoded to only Tracy's at-home shop.

* `type` -- Seems to be hardcoded. Accepts special_foodbox, blankcollar, bonus_rare_item and random_unique_idol
* `cost` -- Cost of item in shop


`storage_expansion 1` -- Upgrades storage expansion by (int)

`generate_beanies_quest` -- Generates a quest from a pool within beanies_questinfo.

### MISC

`level_display` -- Displays a custom symbol instead of the amount of cats given/needed. So far the only value accepeted is "max"

`repeat int` -- The number of times this can be repeated. "infinite" can replace the int.

`rep_reward_count` -- The # of reward copies given from finishing a quest from a repeated amount of times. Because a variety of NPCs use this as a replacement to their normal reward for repeat unlocks, it is currently unknown if the value it provides is hardcoded or not.

## Misc

`tracy_idols []` -- A list of all idols tracy can provide the player 


