# Events Formatting

>[!NOTE]
>The effects you can incur within an event can be found in the file event_reward_samples.gon, but for the sake of thouroughness a [copy of the file has been added into this repository under the templates folder](templates/event_rewards_samples.gon)

In order to create a event in a new or existing file in data/events you need to add a new Identifier (EventID) like this:

`EventID {}` -- The custom identifer of the event.
* `requirements {}` -- List of requirements that must be met for this event to occur
* `intro {}` -- The name for the event, contains data for the starting "prompt", cat choice, etc.
* `main {}` -- Contains the prompt, choices, and choice data

## Requirements

These requirements ask the game whether this event can be chosen or show up. Note that the following list does not contain ALL possible requirements, just the ones applicable for "deciding" if a event should be chosen.

* `has_token TokenID` -- Does the current savefile have this specific token?

* `not_has_token TokenID` -- Does the current savefile not have this specific token?

* `counter_minimum [TokenID X]` -- Does this current savefile have at least this specific amount of tokens?

* `counter_maximum [TokenID X]` -- Does this current savefile have more than this specific amount of tokens?

* `counter_range [TokenID X Y]` -- Does this current savefile have a amount of tokens specific to or between ranges X and Y? 

* `is_not_chapter [ChapterID]` -- Is the current chapter ID not the specified chapter(s)?

* `is_chapter [ChapterID]` -- Is the current chapter ID the specificed chapter(s)?

* `minimum_party_size X` -- Party size must be at least as big as X.

* `not_on_quest 1` -- "1" as boolean true. Does the current party have any quest items in their inventory/equipment? 

## Intro

* `title string` -- The title of the event. NOT the prompt that shows up. (can check in CSV files) 

* `cat_choice Choice` -- Chooses a specific cat for the party; possible variables are (random, choose, none)
> Note that the other two variables are never used.

* `choose_cat_with_highest_stat StatName` -- Overrides cat_choice by choosing a cat with the highest specific [stat.](enums.md#stats)

* `choose_cat_with_min_health X%` -- Overrides cat_choice by choosing a cat with at LEAST this specific amount of health (0-100)

* `choose_cat_with_item_slot_equipped ItemSlot` -- Overrides cat_choice by choosing a cat that has any object in this [slot.](enums.md#stats)

* `choose_cat_with_item ItemID` -- Overrides cat_choice by choosing a cat that has a specific item equipped.

* `choose_cat_with_parasite bool` -- Overrides cat_choice by choosing a cat with a parasite (if possible).

* `choose_cat_with_most_injuries bool` -- Overrides cat_choice by choosing a cat with the most injuries on a team.