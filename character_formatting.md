# Character formatting

>[!WARNING]
>This list is still a work in progress, some things haven't been tested to their fullest, haven't been documentet properly, or aren't present

`CharacterID {}`
* `variant_of CharacterID`
* `graphics {}`
* `stats {}`
* `properties {}`
* `abilities {}`
* `passives {}` -- Table of passives given to the character
* `ai {}`

## Character graphics

`movieclip MovieClip_Name` -- MovieClip used for the character (`_CAT` for characters that use the cat model)

`name string` -- Name of the character

`tooltip string` -- Tooltip of the character

`scale .X` -- Visual scale of the character

`shadow MovieClip_Name` -- MovieClip of the character's shadow (`Nothing` for no shadow)

`shadow_size .X` -- Visual scale of the character's shadow

`projectile_spawn_offset [X Y]` -- Offset from where projectiles shot from the target come from

`uifloaters_offset .X` -- Y offset of the health/statuses ui of the character

`status_display_count_max X` -- How many statuses can be displayed at the same time

`no_splatter bool` -- If when killed the character burts into guts

`dont_sink bool` -- [TEST]

`art_flip -1` -- [TEST]

`spawnin_animation Frame_Label` -- Animation used when the character spawns

`water_mask Water_Mask_Type` -- Shape of the character's water mask when it's on a water tile [square medium big medmed]

`custom_cat_data CatDataID` -- (_CAT) Cat data used for the appearence and sounds of the character

`alt_animations [[Frame_Label Frame_Label]]` (_CAT) List of default cat animations to swap with custom ones


## Character stats

`strength X` -- The characters strength stat

`dexterity X` -- The characters dexterity stat

`constitution X` -- The characters constitution stat (Doesn't affect health for non playable characters)

`intelligence X` -- The characters intelligence stat

`speed X` -- The characters speed stat

`charisma X` -- The characters charisma stat

`luck X` -- The characters luck stat (For non playable characters if not included it doesn't show on the character's tooltip)

## Character properties

`tag [string]` -- List of character tags

`hidden_tag [string]` -- List of hidden character tags [I have no idea what changes]

`faction Faction_Name` -- [Faction](enums.md#factions) the character is part of [CHECk if they custom]

`inherit_faction bool` -- If the character inherits it's faction from the spawner

`type Character_Type` -- Type of the character [small cat boss object]

`initial_health X` -- Starting health of the character

`health X` -- Max health of the character

`shield X` -- Starting shield of the character

`dispersed_bonus_turns X` -- Gives additional X bonus turns to the character during the round

`evenly_dispersed_bonus_turns X` -- Gives additional X bonus turns to the character evenly distributed across the round

`round_end_bonus_turns X` -- Gives additional X bonus turns to the character at the end of the round

`initiative X` -- Initiative of the character, changing how soon it acts during the round

`flying bool` -- If it's a flying character

`size Size_Type` -- The size of the character [1x1 2x2 3x3]

`tall bool` -- If it's a tall object [Not sure what it does]

`inanimate bool` -- If it's an inanimate character

`layer Layer_Type` -- What [layer](enums#layers) the character exists on 

`knockback_immune bool` -- If the character is knockback immune

`can_be_backstabbed bool` -- If the character can be backstabbed

`kill_required bool` -- If the character needs to be killed to end the battle

`move_block Block_Type` -- How the character blocks movement paths [nothing everything_even_when_dead]

`takes_turns bool` -- If the character takes turns

`takes_main_turn bool` -- If the character takes it's main turn

`can_be_champion bool` -- If the character can be a champion

`allow_offmap_corpse bool` -- If the character's corpse can exist off map

`lock_orientation [X Y]` -- Orientation in which the character is locked

`banned_elite_buffs [EliteBuffID]` -- List of elite buffs banned for this character

`can_grant_extra_turns bool` -- If this character can give extra turns

`auto_run_priority Run_Type` -- How the character handles running away [stationary support default]

`movement X` -- How many tiles can the character move

`base_movement X` -- Base movement of the character (Used for playable characters)

`base_initiative X` -- Base initiative of the character (Used for playable characters)

`base_health X` -- Base health of the character (Used for playable characters)

`base_mana X` -- Base mana of the character (Used for playable characters)

`base_mana_regen X` -- Mana regen of the character 

`base_health_regen X` -- Base health regen of the character (Used for playable characters)

`base_initial_mana X` -- Base starting mana of the character (Used for playable characters)
 
`base_crit_chance X` -- Base crit chance of the character (Used for playable characters)

`mana_matters bool` -- If this character uses mana

`weak_threshold X` -- How low the character's health has to be to switch to it's weak animation

`can_be_overkilled bool` -- If the character's body can be automatically destroyed when hit hard enough

`can_collect_coins bool` -- If the character can collect coins

`can_eat_food bool` -- If the character can eat food

`corpse_health X` -- Health of the character's body (0 means it has no body, `indestructible` means that it cannot be destroyed)

`is_player_cat bool` -- If the character is a player cat

`can_run bool` -- If the character can run away

`exclude_from_hallucinate bool` -- If the character is excluded from hallucinations

`uncapturable bool` -- If the character is uncapturable

`allow_flying_effect bool` -- If the character can have the flying effect

`view_bleeding_characters_as_enemies bool` -- If the character sees bleeding characters as enemies

`access_to_player_inventory bool` -- (_CAT) If the character can access the player inventory 

`catdata_ignore_skills bool` (_CAT) If the character ignores skills from the given catdata

`disallow_items all or ItemID` -- (_CAT) If the character is not allowed to use any or a specific item

## Character abilities

`move AbilityID` -- Ability used by the character to move

`attack AbilityID` -- Ability used by the character as basic attack

`spells [AbilityID]` -- Spells the character has

## Character ai

`brain Brain_Type` -- [GenericBrain PatternBrain PlayerBrain NoBrain]

`move_weights MoveWeight_Type`

`decision_weights DecisionWeight_Type`

`auto_orient bool`

`virtual_abilities {}`
* `VirtualAbilityName {}`
* * `ability AbilityID`
* * `move_for_ability AbilityID`
* * `move_weights MoveWeight_Type`
* * `decision_weights DecisionWeight_Type`

`pattern {}`
* `do Character_Ability`
* `do_all [Character_Ability]`
* `do_random [Character_Ability]`
* `do_strict [Character_Ability]`
* `move_then_do_priority [Character_Ability]`

> [!NOTE]  
> `*Character_Ability` will make the character use the ability without moving  
> `**Character_Ability` will make the character use the ability without moving and use a movement point  
> `Character_Ability~` will make the character try to use the ability for as many times it can

`mainturn_pattern {}`

`bonusturn_pattern {}`

`round_end_bonusturn_pattern {}`