# Classes Formatting

In order to create a class, in a new or existing file in data/classes you need to add a new Identifier (ClassID) like this:

`ClassID {}` -- The custom identifier of the class
* `meta {}` -- Table that holds the name and description properties of the class
* `graphics {}` -- Table that holds the graphical properties of the class
* `attack_pool [AbilityID]` -- List of possible abilities that can be picked as basic attack
* `ability_pool [AbilityID]` -- List of possible abilities chosen during level up 
* `complicated_abilities [AbilityID]` -- List of abilities that have a lower chance of appearing during level up (abilities need to be in `ability_pool`)
* `starter_abilities [AbilityID]` -- List of abilities that can be chosen when selecting the class (abilities need to be in `ability_pool`)
* `ability_groups {}` -- Table of ability groups that change how the abilities show up during level up (abilities need to be in `ability_pool`)
* `passive_pool [PassiveID]` -- List of passives chosen during level up
* `complicated_passives [PassiveID]` -- List of passives that have a lower chance of appearing during level up (abilities need to be in `passive_pool`)
* `stat_mods {StatName X}` -- Table of [stats](enums.md#stats) and how much they are changed when picking the class
* `levelup_stats [StatName]` -- List of [stats](enums.md#stats) that can be increased during level up
* `innate_passives {}` -- Table of passives applied to the class by default
* `innate_items {ItemSlot ItemID}` -- Table of items given to a specific [item slot](enums.md#item-slots) at the start of the adventure (If not unremovable, removed innate items just disappear)

## Meta

`name string` -- Name of the class (can check in CSV files)
`description string` -- Description of the class (can check in CSV files)

## Graphics

`palette X or [X]` -- Id of the palette row to use for the class color (a list can be used to randomize it)
`hud_palette X` -- Id of the palette row to use for the class hud (If unspecified, it will use the normal palette)
`alt_animations [[AnimationName AnimationName]]` -- List of cat's animations to swap for another animation
`portrait_face FaceID` -- [Face](misc.md#cat-faces) to use for the cat's portrait

## Ability Groups

`attack [AbilityID]` -- Attack abilities
`defense [AbilityID]` -- Defense abilities
`move [AbilityID]` -- Movement abilities (one will always show up if the cat has none)
`misc [AbilityID]` -- Misc abilities