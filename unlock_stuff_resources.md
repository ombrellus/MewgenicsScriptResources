# Adventure Progression Unlock Resources

*This list has been split into three major parts: dependancies, effects, and misc*

Keep in mind many of these must first be declared to be locked in **locked_content**. Look below for that.

## REQUIREMENTS

`beat_chapter_boss ChapterID` -- Beat the boss of a given chapter
(note: this seems redundant in terms of having complete_chapter as a check)

`beat_house_boss HouseBossID` -- House boss needed to beat to unlock this

`visit_chapter ChapterID` -- [Chapter](enums.md#vanilla-chapters) needed to just visit to unlock this

`complete_chapter ChapterID` -- [Chapter](enums.md#vanilla-chapters) completed to unlock this
(note: this seems redundant in terms of having beat_chapter_boss as a check)

`complete_chapters [ ChapterID ]` -- [Chapters](enums.md#vanilla-chapters) needed to completely unlock this.

`complete_chapter_with_class [ChapterID ClassID]` -- Provided [chapter](enums.md#vanilla-chapters) needs to be beaten with certain class

`requires_hard_path bool` -- If this unlock requires you to have beat hard path of any map.

`require_mapgen_flag string` -- Requires a certain map flag to be unlocked or used.

`repeat X` -- How many times this unlock must be triggered validly before it actually gives the effect

`requires_unlocked_npc` -- Requires a certain NPC to be unlocked

`required_difficulty X` -- Must be on a certain difficulty to be triggered

`complete_act_difficulty [ ActNum difficultyNum ]` -- Complete an act on a difficulty

## EFFECTS

`complete_item_quest ItemID` -- Completes the quest for said item

`fail_item_quest ItemID` -- Fails the quest for said item

`set_mapgen_flag string` -- Sets a mapgen flag read in any map's flags code

`set_savefile_flag string` -- Sets a savefile flag.

`increment_savefile_counter string` -- Changes the provided counter in savefile variables by 1.

`popup {}` -- The popup that shows up on unlock
* `prompt string` -- The string that pops up under the image
* `frame string` -- The image [`UnlockItem` used for item unlocks]
* `immediate bool` -- Effects are immediate instead of after going home.

`reset_npc_sequence SequenceID` -- Allows this npc sequence to be triggered again by certain means.

`preempt_npc_sequence SequenceID` -- (TEST???)

`trigger_npc_sequence SequenceID` -- Npc sequence from a npc on the house map triggered
(TO TEST): Seems to work even if the npc is not unlocked.

`trigger_npc_sequence_tomorrow SequenceID` -- Npc sequence from a npc on the house map triggered the next day

`post_combat_cutscene string` -- Cutscene that plays directly after the battle where this unlock is triggered.

`queue_cutscene_immediate string` -- Cutscene plays immediately after the unlock. (This seems innaccurate, since these play between leaving the immediate map and going to the next one.)

`surviving_kaiju pyrophina / zaratana` -- Sets the surviving kaiju [Test possible custom]

`trigger_house_boss HouseBossID` -- Triggers a house boss

`unlock_boss BossID` -- Unlocks a boss [BossIDs are specified under bosses in the map they are found]

`unlock_quest_item ItemID` -- Unlocks a quest item

`unlock_passive PassiveID` -- Unlocks a passive

`unlock_ability AbilityID` -- Unlocks a ability

`unlock_item_immediate ItemID` -- Unlocks the said item

`unlock_song SongID` -- Unlocks a house radio song

`unlock_levelgroup string` -- Unlocks a group of levels [group level name is the name of the folder containing all the levels]

`unlock_npc_tomorrow` -- Unlocks a NPC the next day

`unlock_act_difficulty [ actNum DifficultyNum ]` -- Unlocks a difficulty for a act

## MISC

`repeatable bool` -- If this unlock is triggered to check and the unlock has not been achieved SPECIFICALLY from failing it (i.e. a item quest) this unlock will be checked or started again later

# Locked Content Setup

The following are tables you would populate for locking away content. When making your own, be sure to name your file `locked_content.gon.patch` and the name of each table should be followed with a `.append`:

i.e.
`locked_bosses.append [ ]`

## Table Names

`default_unlocked_classes [ClassID]` -- This is a table of the UNLOCKED classes, and all other classes are considered locked until unlocked

`locked_abilities [AbilityID]` -- Contains a list of ability objects.

`locked_passives [PassiveID]` -- Contains a list of passive objects.

`locked_items [ItemID]` -- Contains a list of locked items; this is all armor, weapons, and trinkets.

`locked_bosses [BossID]` -- Contains a list of locked bosses linked by their object pointer name in boss_cutscene_info

`locked_levelgroups [string]` -- Contains a list of locked levelgroups. This is the folder name of the levels in the levels folder. Can be located within any chapter folder (i.e. bigsharklevels is within the sewer levels)

# NPC Favor Unlocks (file)

This file tends to be a bit odd. While the effects of NPCs are stored under their name, their actual unlocks are triggered by a counter system that reads a integer value for a explicit variable, suggesting there may have been alterior or other plans of upgrading.

## Beanies Quest Stuff

Despite being in this file the setup for this object is nothing like the rest of them. 

`destinations { Destination_Name X }` -- Destinations that specify how much in coins Beanies rewards you when you finish a quest item that goes to that area.
* Vanilla Variables: `caves boneyard meatworld moon core dimensionx jurassic theend endoftime`

`prereqs { chaptertitle chaptertitle }` -- Locks a flag or unlock behind having beat a chapter. Seems either unused or inaccurately labeled, since dimensionx is needed in this to unlock Ice Age.

`intro [ItemID]` -- Contains the item object pointer name of the first quest item he gives.

`main_pool [ItemID]` -- Pool that contains the item object pointer name for each item (oddly not the pointer to the sequence)

## NPCS

NPCs are titled by name from the hardcoded list. The name of an unlock in their pool MUST be the same as the name of the sequence within their npc file.

Here are all the values you can use.

### Requirements

`favor X` -- The amount of cats needed

`required_act X` -- The act required for this favor to be unlocked.

`required_chapter X` -- The chapter number to have beaten for this favor to be unlocked.

`required_difficulty X` -- Difficulty that has been played on for this favor to be unlocked.

`required_age X` -- Tracy breaks the hardcoded meta of cat details with this. (int)

### Rewards

Anything that's usually incrementally upgraded will have a "1"

`reward_text string` -- Text shown when reward has been granted

`gift_item ItemID` -- Puts a item in your storage. (TEST to see if it forces out another into trash)

`gift_item_from_pool ItemPool` -- Puts a item in your storage from a pool delcared in general_pools

`set_savefile_flag string` -- Sets a saveflag flag

`coins X` -- Amount of coins you get for completing this favor.

`house_upgrade string` -- Activates a object in the "upgrades" table within house.gon, [house_upgrade_attic house_upgrade_mediumhouse house_upgrade_largehouse house_upgrade_4throom]

`shop_level_up 1` -- Used by Organ Grinder, Tracy and Jack for the .fla to read and output certain objects when loaded. Upgrades by (int)

`tracy_special_item {}` -- Used by Tracy to ensure this item will appear in a shop. (TEST) Seems to be hardcoded to only Tracy's at-home shop.
* `type string` -- Seems to be hardcoded. Accepts special_foodbox, blankcollar, bonus_rare_item and random_unique_idol
* `cost X` -- Cost of item in shop


`storage_expansion 1` -- Upgrades storage expansion by (int)

`generate_beanies_quest QuestPool` -- Generates a quest from a pool within beanies_questinfo.

### MISC

`level_display max` -- Displays a custom symbol instead of the amount of cats given/needed. So far the only value accepeted is "max"

`repeat X / infinite` -- The number of times this can be repeated. "infinite" can replace the int.

`rep_reward_count 1` -- The # of reward copies given from finishing a quest from a repeated amount of times. Because a variety of NPCs use this as a replacement to their normal reward for repeat unlocks, it is currently unknown if the value it provides is hardcoded or not.

## Misc

`tracy_idols [FurnitureID]` -- A list of all idols tracy can provide the player 


