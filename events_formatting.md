# Events Formatting

>[!NOTE]
>The effects you can incur within an event can already be found in the file event_reward_samples.gon within your output/data folder, but for the sake of thouroughness a [copy of the file has been added into this repository under the templates folder.](templates/event_rewards_samples.gon)

In order to create a event in a new or existing file in data/events you need to add a new Identifier (EventID) like this:

`EventID {}` -- The custom identifer of the event.
* `requirements {}` -- (optional) List of requirements that must be met for this event to occur 
* `intro {}` -- The name for the event, contains data for the starting "prompt", cat choice, etc.
* `main {}` -- Contains the prompt, choices, and choice data

## Requirements

These requirements ask the game whether this event can be chosen or show up. Note that the following list does not contain ALL possible requirements a "requirements" table can hold, just the ones applicable for "deciding" if a event should be chosen.

`has_token TokenID` -- Does the current savefile have this specific token?

`not_has_token TokenID` -- Does the current savefile not have this specific token?

`counter_minimum [TokenID X]` -- Does this current savefile have at least this specific amount of tokens?

`counter_maximum [TokenID X]` -- Does this current savefile have more than this specific amount of tokens?

`counter_range [TokenID X Y]` -- Does this current savefile have a amount of tokens specific to or between ranges X and Y? 

`is_not_chapter [ChapterID]` -- Is the current chapter ID not the specified chapter(s)?

`is_chapter [ChapterID]` -- Is the current chapter ID the specificed chapter(s)?

`minimum_party_size X` -- Party size must be at least as big as X.

`not_on_quest 1` -- "1" as boolean true (for deciding). Does the current party have any quest items in their inventory/equipment? 
> Note that this is 0 by default, meaning the event will show up even if the cats are on a quest.

**The following requirements are those that can ONLY be used once the event has initialized.**

> [!NOTE] 
> This list is very much unfinished.

`cat_has_item_equipped ItemID` -- The chosen cat has this specific item equipped.

`cat_has_item_equipped [ItemID ItemID]` -- The chosen cat has these specific items equipped.

`not_cat_has_item_equipped ItemID` -- The chosen cat does not have this specific item equipped.

`has_parasite bool` -- The chosen cat has a parasite.

## Intro

`title string` -- The title of the event. **NOT** the prompt that shows up. (can check in CSV files) 

`cat_choice Choice` -- Chooses a specific cat for the party; possible variables are (random, choose, none)
> Note that the variables "choose" and "none" are never used, but likely both default to random.

`subject_clip FlagName` -- The corrosponding set of animation objects within a larger one that is chosen for this animation to choose from. (The name is attributed to the )
> [!WARNING]
> Mods should usually never attempt to add any more movie clips for the event's display art as the game's base for it is reliable and will not cause issue appending to. It is customary to use EventSubject as the most common movieobject, as every other event in the game does. 

`subject_frame FlagName` -- The "name" property of the flagged frame above a movieclip containing the displayed set of frames for a event.

`event_clip NonWheelEvent` -- Unknown. The only accepted input for event_clip is "NonWheelEvent", so this should never be anything else.

**The following within the collapsed section are not necessary and the event can function without one.**

<details>

<summary>- - - - - - - Unnecessary Arguements - - - - - - -</summary>
> While it is not confirmed, it's likely if there are multiple choose_cat arguements in a single "intro", the game will choose whatever arguement for cat choice is called last.

`subject_frame_inner X` -- The opening prompt's frame.
>[!NOTE]
> The game will always default to the first frame for the event opening. However, for sequenced events (where technically each one is a seperate event object) the game uses this to open it up to a different frame in the same selected movieclip object.

`choose_cat_with_highest_stat StatName` -- Overrides cat_choice by choosing a cat with the highest specific [stat.](enums.md#stats)

`choose_cat_with_min_health X%` -- Overrides cat_choice by choosing a cat with at LEAST this specific amount of health (0-100)

`choose_cat_with_item_slot_equipped ItemSlot` -- Overrides cat_choice by choosing a cat that has any object in this [slot.](enums.md#item-slots)

`choose_cat_with_item ItemID` -- Overrides cat_choice by choosing a cat that has a specific item equipped.

`choose_cat_with_parasite bool` -- Overrides cat_choice by choosing a cat with a parasite (if possible).

`choose_cat_with_most_injuries bool` -- Overrides cat_choice by choosing a cat with the most injuries on a team.

</details>

## Main

`prompt string` -- The text shown in the prompt box when the event is loaded. (can check in CSV files) (i.e., {catname} and {his} friends find a lamp...) 

`goto end` -- Skips any displayed options and immediately shows the sign button allowing you to exit the evemt. (Used in happenings)

`shuffle_options bool` -- Should the order of the options be shuffled?

`max_options X` -- The event is only allowed to show X amount of options out of the entire table.

`setup {}` -- Not required. Sets up the prompt and frame shown using conditional_reward tables.
* `conditional_reward {}` -- A table setting up a conditional and it's effects if it is met. 
    * `requirements {}` -- The [requirements](events_formatting.md#requirements) for this conditional to be met. 

    * `reward {}` -- The reward for achieving the conditionals.
        * `prompt string` -- The overriding text shown in the prompt box when the event is loaded. (can check in CSV files)
        * `frame X` -- The overriding frame of the event's movieclip to display when this event is loaded.

    * `else {}` -- If the reward requirements are not satisfied, you can directly make it a "else" function if there are no other requirements to check for.
        * `prompt string` -- The overriding text shown in the prompt box when the event is loaded. (can check in CSV files)
        * `frame X` -- The overriding frame of the event's movieclip to display when this event is loaded.


`options {}` -- Contains all options an event can hold.
* `optionname {}` -- The table of effects of this option, with the internal name of what the option is registered as the variable title of the table (has no effect on gameplay, could be anything: i.e. catscrape, catblock, geniehate, etc)
    * `label string` -- The visual text shown for this specific option. (can check in CSV files)

    * `stat StatName` -- The [stat](enums.md#stats) this should rely on.

    * `good/bad {}` -- The good/bad effects of this event, being that this outcome has been chosen. **THE TABLE NAME SHOULD EITHER BE GOOD OR BAD, NOT BOTH. I.E. good {} OR bad {}.**
        * `common {}` -- The common outcomes of this effect choice. You can put any effect you have seen in the [reward samples](templates/event_rewards_samples.gon) in here.
            * `prompt string` -- The text shown in the prompt box when the effect is loaded. (can check in CSV files)
            * `set_frame X` -- The frame of the event's movieclip to display on this choice's outcome incurring.
            * `play_animation AnimationName` -- The displayed cat plays a specific [animation.](enums.md#vanilla-event-cat-animations) If this is not set, it will automatically play the basic result animations.

        * `rare {}` -- The rare outcomes of this effect choice, same format as common. (If there is no rare, the game will default to common.)

`outcome {}` -- If a event has no options to choose, this table should be used instead to immediately display the desired outcome. You can put any effects that are normally set in the common and rare tables for effects in here.

* `play_animation AnimationName` -- The displayed cat plays a specific [animation.](enums.md#vanilla-event-cat-animations)

## Examples

Here is a classic setup for a "options" event.

```
Butch_Tutorial {
    intro {
        title "EVENT_BUTCH_NAME"
        cat_choice random //choose, random, none (random and none are equivalent)
        choose_cat_with_highest_stat int
        subject_clip EventSubject
        subject_frame butch
        event_clip NonWheelEvent
    }

    main {
        prompt "EVENT_BUTCHTUTORIAL_QUES"

        options {
            attack {
                label "EVENT_BUTCHTUTORIAL_ATTACK_ANSW"
                stat str

                bad {
                    set_frame 2

                    prompt "EVENT_BUTCHTUTORIAL_REW1"
                    injury str
                }
            }

            outsmart {
                label "EVENT_BUTCHTUTORIAL_OUTSMART_ANSW"
                stat int

                good {
                    set_frame 2

                    prompt "EVENT_BUTCHTUTORIAL_REW2"
                    get_item Catnip
                }
            }
        }
    }
}
```

Here is the setup for a classic "outcome" event.


```
ModdedMinibossIntro2 {
    intro {
        title "APMODP_EVENT_NAME_MINIBOSS"
        cat_choice random
        subject_clip EventSubject
        subject_frame happening
        event_clip NonWheelEvent
    }

    main {
        goto end

        outcome {
            play_animation [resultBad 0.1]
            random_pool [
                {
                    next_fight_from_set "special/_myclassboss"
                    override_end_option_prompt "Fight!"
                    prompt "EVENT_MAINDESC_MYMINIBOSS"
                }
            ]
        }
    }
}
```