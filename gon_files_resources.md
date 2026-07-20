## INDEX

>[!NOTE]
> Index is still a work in progress

* [Passives](#passives)
* * [AddStatus](#addstatus)
* * [AddPassives](#addpassives)
* * [StatusOn](#statuson)
* * [Passive if/when/while](#passive-ifwhenwhile)
* * [SpawnOn](#spawnon)
* * [Reactions](#reactions)
* * [Repeated actions](#repeated-actions)
* * [Spell passives](#spell-passives)
* * [Stats passives](#stats-related-passives)
* * [Auras](#auras)
* * [Ability specific](#ability-specific-passives)
* * [Item specific](#item-specific-passives)
* * [FormChanger specific](#form-changer-related-passives)
* * [Visual / Sounds](#visual--sound)
* * [AI](#ai)
* * [Misc](#passive-misc)
* [Statuses](#statuses)
* * [Status applying](#status-applying)
* * [Ability casting](#ability-casting)
* * [Spawn](#spawn)
* * [Tiles](#tiles)
* * [Stats](#stats)
* * [Damage](#damage)
* * [Turns](#turns)
* * [Viasual / Sounds](#visual--sound)
* * [Misc](#status-misc)
* [Conditionals](#conditional-triggers)


## PASSIVES

`AddTag string` -- Adds a tag to the character

`AddHiddenTag string` -- Adds an hidden tag to the character (hidden tags are more specific tags refenced only in gon files)

`CreateGlobalModifiers {}` -- Sets certain global modifiers
>Note: You can find most global modifiers in [weather formatting.](weather_formatting.md#global-modifiers)

`RemoveGlobalModifiers {}` -- Removes certain global modifiers

`AddElementsToBasicAttack Element_Name` -- Adds a specific [element](enums.md#elements) to the basic attack

### AddStatus

`AddStatusToBasicAttack {}` -- Table of statuses given to the basic attack

`AddTemporaryEffectsToBasicAttack {}` -- Table of statuses added to the temporary effects of the basic attack

`AddStatusToFirstBasicAttack {}` -- Table of statuses given to the first basic attack

`AddSelfStatusToBasicAttack {}` -- Table of statuses given to the basic attack that get applied to the source

`AddStatusToAllDamage {}` -- Table of statuses given to all damages coming from the target

`AddStatusToFirstSpellEachTurn {}` -- Table of statuses given to the first spell used each turn

`AddStatusToTrampleDamage {}` -- Table of statuses given to the trample damage

`AddStatusToBasicMeleeAttack {}` -- Table of statuses given to the basic attack when melee

`AddStatusToMeleeDamage {}` -- Table of statuses given to all melee attacks

`AddStatusToElementDamage {}` -- Table of statuses given to damage of specific elements
* `element [Element_Name]` -- Chosen [element](enums.md#elements) list

`AddStatusToElementAbilities {}` -- Table of statuses given to abilities with a specific element
* `element Element_Name` -- Chosen [element](enums.md#elements)

`AddStatusToReceivedDamage {}` -- Table of statuses given to received damage

`AddStatusToReceivedDamage_ExcludeStatuses {}` -- Table of statuses given to received damage (excluding damage from statuses)

`AddStatusesToReceivedElementalDamage {}` -- Table of statuses given to received damage of specific elements [NOT WORKING AS OF v1.0.20941]
* `element [Element_Name]` -- Chosen [element](enums.md#elements) list 

`AddStatusToKnockbackDamage {}` -- Table of statuses given to knockback damage

`AddStatusToSpells {}` -- Table of statuses given to spells

`AddElementsToWeapon Element_Name` -- Adds an element to a weapon 

`AddStatusToWeapons {}` -- Table of statuses given to weapons

`AddSelfStatusToWeapons {}` -- Table of statuses given to the source when using the weapon

`AddStatusToFirstBasicAttack {}` -- The first basic attack of the target gives the specified statuses

`AddStatusesIfPersistentWeatherElement {}` -- Table of statuses given if there is a persistent element weather
* `element [Element_Name]` -- Chosen [element](enums.md#elements) list

`AddTemporaryEffectsToEquipment {}` -- Table of statuses added to the temporary effects of the equipped items's abilities

### AddPassives

`AddPassivesToMinions {}` -- Table of passives applied to the target's familiars
* `tag_filter string` -- Optional field if it should be applied to only minions with a specified tag

`AddPassivesToCharmed {}` -- Table of passives applied to charmed characters

`AddPassivesToSummonAbilityMinions {}` -- Table of passives applied to familiars spawned with abilities

`AddPassiveToSpawnedRocks {}` -- Table of passives applied to spawned rocks

### StatusOn

`StatusWhenAllySpendsMana {}` -- Table of statuses given to the character when an ally spends mana

`StatusAlliesOnSpendMana {}` -- Table of statuses given to allies when the character spends mana

`StatusAlliesOnDeath {}` -- Table of statuses given to allies when the character dies
* `trigger_limits X` -- How many times it can be triggered (default: infinite)

`ScaledStatusAlliesOnSpendMana {}` -- Table of statuses given to allies when the character spends mana for each mana point spent

`ExtraStatusWhenDealingDamage {}` -- Table of stautuses given to all damages dealt

`StatusWhenStatusCompletelyRemoved {}` -- Table of statuses given when a status gets removed
* `status Status_Name` -- Status to check

`StatusEachTurnEnd {}` -- Table of statuses given at the end of each turn

`StatusAlliesEachTurn {}` -- Table of statuses given to all allies at the end of each turn
* `exclude_self bool` -- If the source is excluded

`StatusEachTurnEndForEachTurn {}` -- Table of statuses given at the end of each turn, scaled for how many turns have passed

`StatusEachTurnBegin {}` --  Table of statuses given at the start of every turn

`StatusEachTurnEndPerEnemyKill {}` -- Table of statuses given at the end of the turn for every enemy killed during the turn

`StatusEachTurnBeginIfHasStatus {}` -- Table of statuses given at the end of the turn if it has a specific status
* `status Status_Name` -- Chosen status
* `consume bool` -- If the status is consumed after
* `animation Frame_Label` -- What animation to use

`StatusEachRoundBegin {}` -- Table of statuses given at the start of every round

`StatusEachRoundEnd {}` -- Table of statuses to given at the end of every round

`StatusOnBattleStart {}` -- Table of statuses given at the start of the battle, CANNOT BE USED IN GLOBAL EFFECTS

`CharacterTypeGainsStatusAtBattleStart {}` -- Tables of statuses given at battle start, CAN ONLY BE USED IN GLOBAL EFFECTS

`StatusOnBattleEnd {}` -- Table of statuses given at the end of the battle
* `even_if_dead bool` -- Give statuses even if the cat was downed (default: `false`)

`StatusOnBattleEndIfKillThresholdMet {}` -- Table of statuses given at the end of the battle if it killed X Characters
* `kills X` -- Kill count
* `statuses {}` -- Specified statuses [TEST if not needed]

`StatusOnGainCoins {}` -- Table of statuses given when gaining coins

`StatusOnCollectPickup {}` -- Table of statuses given when collecting a pickup

`StatusOnPickupCoins {}` -- Table of statuses given when collecting a coin (as a pickup)

`TaggedPickupEffectReplacement {}` -- Table of statuses given when collecting a pickup with a specified tag instead of it's normal effects
* `tag string`

`StatusOnEatFood {}` -- Table of statuses given when eating a food item/pickup

`StatusOnFullMana {}` -- Table of statuses given when reaching full mana

`StatusOnEndMove {}` -- Table of statuses given when finishing to move

`StatusOnTookDamage {}` -- Table of statuses given when getting damaged

`StatusOnTookDamageFromAbility {}` -- Table of statuses given when getting damaged by an action

`StatusOnTookDamageFromEnemyAbility {}` -- Table of statuses given when getting damaged by an enemy's action

`StatusOnLoseShield {}` -- Table of statuses given when taking shield damage

`StatusOnTakeHealthDamage {}` -- Table of statuses given when taking health damage

`StatusOnTakeHealthOrShieldDamage {}` -- Table of statuses given when taking health or shield damage

`StatusOnHealed {}` -- Table of statuses given when healing

`StatusOnGainShield {}` -- Table of statuses given when getting shields

`StatusOnKill {}` -- Table of statuses given when the target kills something

`StatusOnPopCorpse {}` -- Table of statuses given when breaking a corpse

`StatusOnDie {}` -- Table of statuses given when dead

`StatusOnDodge {}` -- Table of statuses given when dodging an attack

`StatusOnKillEnemy {}` -- Table of statuses given when the target kills an enemy

`StatusOnBackstab {}` -- Table of statuses given when hitting a backstab

`StatusOnCrit {}` -- Table of statuses given when hitting a critical attack

`StatusOnFallAsleep {}` -- Table of statuses given when falling asleep

`StatusIfDidntMove {}` -- Table of statuses given at the end of the turn if the target didn't move

`StatusIfUnusedMovePoints {}` -- Table of statuses given if the target ends it's turn with unused movement actions

`StatusIfUnusedActPoints {}` -- Table of statuses given if the target ends it's turn with unused basic attack actions (Inside the block `X` is the amount of action points left)

`StatusOnUseBasicAttack {}` -- Table of statuses to given when the basic attack is used

`StatusOnCastSpell {}` -- Table of statuses given when casting a spell

`StatusOnUseElementAbility {}` -- Table of statuses given when casting an ability with a specific element
* `element Element_Name` -- Chosen [element](enums#elements)

`StatusOnUseAbilityWithTag {}` -- Table of statuses given when casting an ability with a specific tag
* `tag string` -- Chosen tag
* `exclude_basicattack bool` -- If the basic attack doesn't count

`StatusOnTurnEndIfCastNSpells {}` -- Table of statuses given at the end of the turn if exactly X spells were casted
* `spells X` -- Number of spells

`StatusOnTurnEndIfManaExact {}` -- Table of statuses given at the end of the turn if the mana is exactly X
* `mana X` -- Number of mana

`StatusOnTurnEndIfManaOrHealthExact {}` -- Table of statuses given at the end of the turn if the mana or health is exactly X
* `mana X` -- Number of mana or health

`StatusOnStanceSwitch {}` -- Table of statuses given when changing monk stance

`StatusOnDealtDamage {}` -- Table of statuses given when dealing damage

`StatusOnDealtDamageThreshold {}` -- Table of statuses given when dealing over X damage
* `threshold X` -- Damage threshold
* `count_overkill bool` -- If overkill damage counts

`StatusOnEatPill {}` -- Table of statuses given when consuming a pill

`StatusOnEnemyDeath {}` -- Table of statuses given when an enemy dies

`StatusOnEnemyConfused {}` -- Table of statuses given when an enemy hits themselves in confusion

`StatusOnAllyCatDeath {}` -- Table of statuses given when an ally cat dies

`StatusOnSpawnIn {}` -- Table of statuses given when the character is spawned in the battle

`StatusOnTriggerTrap {}` -- Table of statuses given when a target's trap is triggered

`StatusOnBreak {}` -- (ITEM) Table of statuses given at when the item breaks

`StatusOnSetPieceBreak {}` -- (ITEM SET) Table of statuses given when a piece of the set breaks

`ScaledStatusOnHolyShieldBlock {}` -- Table of statuses given for every amount of damage received that break an holy shield

`ScaledStatusOnSpendMana {}` -- Table of statuses given for every mana spent

`ScaledStatusOnOverMana {}` -- Table of statuses given for every mana over capacity

`ScaledStatusOnOverHealed {}` -- Table of statuses given for every heal over capacity

`ScaledStatusOnLoseShield {}` -- Table of statuses given for every shield lost

`ScaledStatusOnBleedDamage {}` -- Table of statuses given for every bleed damage

`StatusAdjacentOnTheirTurnBegin {}` -- Table of statuses given to adjacent characters when their turn begins

`StatusAdjacentOnTheirTurnEnd {}` -- Table of statuses given to adjacent characters when their turn ends

`ConvertDamageToScaledStatus {}` -- Table of statuses given instead of the damage taken
* `stacks X` -- Max amount of damage convertable

`ApplyStatusesToRandomEnemiesEachTurn {}` -- Table of statuses given to random X enemies
* `count X` -- Amount of enemies

`ApplyStatusesNextTurnEnd {}` -- Table of statuses given at the end of the next turn

`AlphaStatusOnTurnBegin {}` -- Table of statuses given at turn start to the cat with alpha

`StatusAllCharactersOnSpawn {}` -- Table of statuses given to all characters that spawn while the source exists

`StatusAlliesOnBattleStart {}` -- Gives the specified statuses to all allies on battle start

`StatusDamagers {}` -- Gives the specified statuses to any character that attacks the source

`CritsApplyStatus {}` -- When an attack crits apply the specified statuses

`StatusKilledCharacters {}` -- Table of statuses given to killed characters

`StatusRandomEnemiesOnBattleStart {}` -- Table of statuses given to X enemies on battle start
* `count X` -- Number of enemies

`TheHunger {}` -- Table of statuses given on turn end if the character doesn't deal any damage to a unit

`StatusCharactersOnRoundStart {}` -- Table of statuses given to all characters on round start

`StatusAfterXStacks {}` -- Table of statuses given after the status with the same key being called X times
* `stack_key string` -- Key of this status
* `threshold X` -- Times needed
* `expires_on_turn_end bool` -- If it resets on turn end

`StatusAfterXTurns {}` -- Table of statuses given after X turns
* `stacks X`

`Diabetes {}` -- Table of statuses given at turn end if no food was eaten

### Passive if/when/while

`PassiveIfWeaponIsUsable {}` -- (ITEM) executes the passives if the weapon is usable

`PassiveLevelUpAtCombatEnd X` -- Levels up spell by X when a battle ends

`PassiveLevelScaledStatus {}` -- Applies the specified passives, inside the block "X" is the level of the passive

`PassiveWhenTheAlpha {}` -- Table of passives executed while the target is the alpha

`PassiveWhenAffectedByElement {}` -- Table of passives executed while the target is affected by a specific element
* `element Element_Name` -- [Element](enums.md#elements) name
* `passives {}` -- Table of passives

`PassiveWhenOnTile {}` -- Table of passives executed while the target is on a specific set of tiles
* `tile [Tile_Name]` -- List of [tiles](enums.md#tiles)
* `passives {}` -- Table of passives

`PassiveWhenAtFullMana {}` -- Table of passives executed while the target is at full mana

`PassiveIfAllArmorEmpty {}` -- Table of passives executed while the target has all it's armor slots empty

`PassiveIfEmptyFace {}` -- Table of passives executed while the target has no face armor

`PassiveIfEmptyNeck {}` -- Table of passives executed while the target has no neck armor

`PassiveIfEmptyHead {}` -- Table of passives executed while the target has no head armor

`PassiveWhileHasStatus {}` -- Table of passives executed while the target has the specified status
* `status Status_Name` -- The status
* `passives {}` -- Table of passives

`PassiveWhileNotHasStatus {}` -- Table of passives executed while the target doesn't have the specified status
* `status Status_Name` -- The status
* `passives {}` -- Table of passives

`TempPassiveWhileHasStatus {}` -- Table of passives executed while the target has the specified status, the passives are completely removed when the status is removed
* `status Status_Name` -- The status

`PassiveWhileCharmed {}` -- Table of passives executed while the target is charmed

`PassiveWhileShielded {}` -- Table of passives executed while the target has shield

`PassiveWhileNotTakingTurn {}` -- Table of passives executed while in't not the target's turn

`PassiveWhileWearingMetal {}` -- Table of passives executed while the target has a metal item

`PassiveAtHealthThreshold {}` -- Appliest the specified passives when the target health matches the condition
* `threshold X` -- The threshold amount
* `mode Threshold_Mode` -- How the condition is calculated [equal, less, greater, less_or_equal, greater_or_equal]
* `passives {}` -- Table of passives

`PassiveUntilCastSpell {}` -- Table of passives executed until the target uses a spell

`PassiveAtStatThreshold {}` -- Appliest the specified passives when a stat matches the condition
* `mode Threshold_Mode` -- How the condition is calculated [equal, less, greater, less_or_equal, greater_or_equal]
* `threshold {}`
* * `STAT X` -- [Stat](enums.md#stats) and amount to check the condition for (There can be more than one)
* `passives {}` -- Table of passives

`PassiveWhileHasDurability {}` -- Table of passives executed while the heald weapon still has durability left

`PassiveWhileInMonkMeleeStance {}` -- Table of passives executed while in the monk's melee stance (TEST non monk stances)

`PassiveWhileInMonkRangedStance {}` -- Table of passives executed while in the monk's ranged stance (TEST non monk stances)

`PassiveWhilePreviewingMonkMeleeStance {}` -- Table of passives executed while previewing the monk's melee stance (TEST non monk stances)

`PassiveWhilePreviewingMonkRangedStance {}` -- Table of passives executed while previewing the monk's ranged stance (TEST non monk stances)

`PassiveAfterXKills {}` -- Table of passives executed after having killed X characters
* `stacks X` -- Number of kills
* `passives` -- Table of passives

### SpawnOn

`SpawnOnBattleStart {}` -- Spawns X Characters on battle start
* `object CharacterID` -- Character (Can also be used as `SpawnOnBattleStart CharacterID`)
* `number X / [X X]` -- Number or range of Characters

`SpawnOnBattleStartRandomEmptyTile {}` -- Spawns X Characters on battle start on a random tile
* `object CharacterID` -- Character 
* `number X / [X X]` -- Number or range of Characters

`SpawnOnDeath {}` -- Spawns X charcaters on death
* `obj [CharacterID]` -- Character or list of possible characters to spawn (Can also be used as `SpawnOnDeath CharacterID`)
* `count X / [X X]` -- Number or range of characters to spawn
* `faction Faction_Name` -- [Faction](enums.md#factions) of the spawned character
* `additiona_statuses {}` -- Table of statuses given to the spawned character

`SpawnThingOnDeath CharacterID` -- Spawns a character on death (redundant)

`TransformOnDeathImmediately {}` -- Transforms into another character as soon as the character dies
* `obj CharacterID` -- Character
* `first_turn First_Turn_Type` -- When to take the first turn [next_turn initiative next_round end_of_round keep_turns]

`SpawnThingOnDamage {}` -- Spawn objects/Characters whenever the source takes damage
* `object CharacterID` -- Character name
* `number X` -- Number of Characters
* `chance 1.0-0.0` -- chance of spawning
* `shield_only bool` -- If the character is spawned only if shield damage is taken

`GlobalSpawnOnRoundEnd {}` -- Spawns X characters on random tiles at the end of the round
* `object CharacterID` -- Character to spawn
* `number X / [X X]` -- Number or range of characters to spawn

`SpawnExtraThingsOnBattleStart {}` -- Spawns the specified Characters on battle start
* `object [CharacterID]` -- Character(s) to spawn
* `number X` or `[X Y]` -- Number of Characters to spawn, or range of Characters to spawn

`ReplaceSpawnedObjects [CharacterID_old CharacterID_new]` -- Replaces all characters spawned by the source of a specific type to a new one

### Reactions

`MovementReaction {}` -- Uses a specific ability when someone moves near the target
* `ability AbilityID` -- Ability Name
* `enemies_only bool` -- If it reacts to only enemies
* `on_self_move_too bool` -- If it reacts when you move as well
* `create_temp_ability bool` -- If it creates a temporary ability to use (Needed if used on a character that doesn't have this ability as a spell)

`AbilityReaction {}` -- Uses a specified ability when the source is hit
* `ability [AbilityID]` -- Specified ability, if given a list it will choose one (Can also be used as `AbilityReaction [AbilityID]`)
* `backstabs_only bool` -- If it reacts only when backstabbed
* `ability_damage_only bool` -- If it reacts only when hit with a damaging attack
* `match_knockback_direction bool` -- If the reaction ability follows the direction of the knockback given by the damaging attack
* `cancel_knockback bool` -- If it cancels the knockback given by the damaging attack
* `even_on_0_damage` -- If it reacts even when the damaging attack deals no damage
* `even_on_0_damage_if_knockback bool` -- If it reacts even when the damaging attack deals no damage, but gives knockback
* `even_if_stunned bool` -- If it reacts even when stunned
* `target_furthest_valid bool` -- If the reaction ability targets the furthest valid target
* `only_when_not_your_turn bool` -- If it reacts only when it's not the source's turn
* `verify_target bool` -- If it checks if the target exists? [TEST]
* `ranged_only bool` -- If it reacts only when the damaging attack is a ranged attack
* `even_if_blocked bool` -- If it reacts even if the damaging attack gets blocked
* `enemies_only bool` -- If it reacts only when the damaging attack comes from an enemy
* `damage_threshold X` -- It reacts only when X damage is dealt
* `health_threshold X` -- It reacts only when below X health
* `buddy_damage_only bool` -- It reacts only when the damaging attack comes from a buddy
* `chance X%` -- X chance of reacting

`DeathRattle {}` -- When the target dies uses the specified ability
* `ability AbilityID` -- Ability (Can also be used as `DeathRattle AbilityID`)
* `pop_corpse bool` -- If the corpse should be destroyed
* `is_dying_animation bool` -- If the animation is the dying animation
* `immediate bool` -- If it should be done instantly upon death
* `cancel_knockback bool` -- If it cancels received knockback
* `target_killer bool` -- If the target should target the killer if possible
* `must_target_killer bool` -- If the target must target the killer

`DeathRattleRevive {}` -- When the target dies it revives and uses the specified ability
* `ability AbilityID` -- Ability (Can also be used as `DeathRattleRevive AbilityID`)
* `even_if_stunned bool` -- If it can be used when stunned

`SecurityBotProtect {}` -- Uses a specific ability whenever someone damages a allied character, targetting the damager
* `ability AbilityID` -- Ability to use
* `move AbilityID` -- Movement ability to use
* `enemies_only bool` -- If to react only when the damage comes from an enemy (default: `false`)
* `tag_restriction string` -- If to react only when a character with a tag is damaged
* `not_on_kill bool` -- If to react only when the damage is not fatal (default: `false`)

`ProtectTargetedAllies {}` -- Uses an ability on an ally being attacked by an enemy before it gets actually hit (Can target itself)
* `ability AbilityID` -- The ability used (can also be used as `ProtectTargetedAllies AbilityID`)
* `tag_filter string` -- If it uses the ability only when an ally with tag is attacked

`HarpoonTrapPassive AbilityID` -- Uses a specified ability when a character finishes their movement in front of source in a straight line (Does not actually target the character)

`CaveFamilyEnrage {}` -- Cast ability when X or less other Characters with tag are alive [TEST]
* `ability AbilityID` -- Ability to cast
* `tag string` -- Tag
* `count X` -- Character count

`BungaEntrance {}` -- Uses an ability when either all characters with a tag die, or when below a certain health threshold
* `ability AbilityID` -- Ability to use
* `warrior_tag string` -- Tag of the dead characters
* `health_threshold X` -- Health threshold
* `even_if_stunned bool` -- If to use the ability even if stunned

`AbilityWhenBuddyDies AbilityID` -- Uses an ability when the buddy dies

`AbilityWhenTaggedCharacterMovesNear {}` -- Makes the character use a specified ability targetting characters with a specified tag when they move in range
* `ability AbilityID` -- Ability to use
* `tag string` -- Tag
* `range X` -- Tile range

`TowerDefenseReflex AbilityID` -- USes an ability when an enemy moves in range

`MoveWhenDamaged {}`
* `move_ability AbilityID` -- Ability used to move (Can also be used as `MoveWhenDamaged AbilityID`) (if not included it uses the character's base move ability)
* `weights Movement_WeightID` -- Weights used to decide where to move 

`DamageIfDidntUseSpecificAbility {}` -- Deals X damage at the end of the turn if the character didn't use a specified ability
* `ability AbilityID` -- Ability
* `damage X` -- Damage to deal

`RevengeDamage {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) targetting characters who damage the source

`MeleeRevengeDamage {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) targetting characters who deal melee damage to the source

`GlobalMeleeRevengeDamage {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) targetting characters who deal melee damage to the source (applied to all characters)

`TerminatorChase {}` -- C-800 behaviour, when the enemies use a spell it moves, and if gets in range of the enemy it uses a special ability
* `move AbilityID` -- Movement ability used
* `ability AbilityID` -- Special ability used when in range

`FaceLastDamage {}` -- Face the last entity that damaged you (can be used as `FaceLastDamage 1`)
* `use_turn_animations true` -- Use a animation with the turnF or turnB if possible (check names)

`RefreshEquipmentAbilityOnElement {}` -- Refreshes all abilities of the equipped items when the character is affected by a specified element
* `element Element_Name` -- [Element](enums.md#elements)
* `text string` -- Pop up text when refreshed (can read from cvs)

`DiesToElement {}` -- Makes the character instantly die when affected by a specific element
* `element Element_Name` -- The [element](enums.md#elements) (Can also be used as `DiesToElement Element_Name`)
* `instant bool` -- If the death is instant

`ExplosionIfHitSomething X` -- Creates an explosion that deals X damage if something is hit

`SafeExplosionIfHitSomething X` -- Creates an explosion that deals X damage if something is hit (doesn't damage the caster)

`ChanceToSpitOnDamage {}` -- Chance to spit the consumed character on damage
* `ability AbilityID` -- Ability used to spit
* `flat_chance X%` -- Chance
* `chance_per_damage X%` -- Chance for each point of damage dealt
* `backstabs_only bool` -- If it works only with backstabs (default: false)
* `even_on_0_damage_if_knockback bool` -- If it works even when the damage deals 0 damage but dealws knockback (default: false)

`AllUnitsExplodeOnDeath X` -- Whenever a character dies it explodes dealing X damage

`MutateViaAbility AbilityID` -- If a mutation gets triggered, it mutates using the specified ability

`ChanceToBlockAndCounter {}` -- Chance to block upcoming attacks and counter with the charcater's basic attack
* `chance X%` -- Chance (can also be used as `ChanceToBlockAndCounter X%`)
* `backstab_only bool` -- If it triggers only on backstabs (default: false)

`GainManaWhenAnythingDies X` -- Gain X mana when any character dies

### Repeated actions

`AbilityOnBattleStart AbilityID` -- Uses a specific ability at battle start

`AbilityOnBattleStart_Immediate AbilityID` -- Uses a specific ability at battle start (Before the battle is even shown)

`AbilityOnRoundEnd AbilityID` -- uses a specific ability on round end

`AutocastEachRound {}` -- Uses a specific ability at the end of every round
* `ability AbilityID` -- Ability to use (Can also be used as `AutocastEachRound AbilityID`)
* `even_if_stunned bool` -- If it uses the ability even if stunned
* `force_display_name bool` -- If it forces to display the name of the ability when used

`HealAlliesEachTurn {}` -- Heals each ally at the end of every turn
* `stacks X` -- Healing amount
* `mana X` -- Mana healing amount
* `exclude_self bool` -- If the source is excluded

`ChanceToRevive {}` -- Chance to revive at the end of the round
* `stacks X` -- Chance out of 100 for it to revive (Can also be used as `ChanceToRevive X`)
* `health X%` -- Percentage of health revived with
* `statuses {}` -- Table of statuses given when revived

`BloatEyePassive2 AbilityID` -- Makes the character use a specified ability whenever any character takes an action, targetting them if enemies

### Spell passives

`ReplaceBasicMove AbilityID` -- Replaces the basic move with the specified ability

`ReplaceBasicMove_Mutation AbilityID` -- Replaces the basic move with the specified ability (Will be overridden by non-mutation move replacement)

`ReplaceBasicAttack AbilityID` -- Replaces the basic attack with the specified ability

`ReplaceBasicAttack_Mutation AbilityID` -- Replaces the basic attack with the specified ability (Will be overridden by non-mutation attack replacement)

`OverrideBasicAttack AbilityID` -- Replaces the basic attack with the specified ability (It will overwrite any other attack replacement)

`ReplaceBasicAttackWhenCastable AbilityID` -- Replaces the basic attack with the specified ability when the ability is castable

`ReplaceBasicAttackWhenDead AbilityID` -- Replaces the basic attack with a specific ability when it's dead

`ReplaceSpellsWhenDead AbilityID` -- Replaces the character's base spells with a specific one when it's dead

`DisableAbilitiesWithTag string` -- Disables all the target's abilities that have a specified tag

`BonusAbility AbilityID` -- Gives the target the specified ability in it's bonus spell slot

`BonusAbility_DelayedApplication AbilityID` -- Gives the target the specified ability in it's bonus spell slot (Has priority over `BonusAbility`)

`ConjureCastSpellsForAllies 1 / 2` -- Gives allies the character's last used spell as bonus ability, 2 makes the spell be upgraded

`AllSpellsCostActPoints X` -- All spells cost X act points

`SetSpellCosts X` -- Sets the cost of all spells to X

`IncreaseSpellRange X` -- Increases the spells range by X

`AddSpellDamage X` -- Increases the damage of all spells by X

`ElementalManaCostReduction {}` -- Reduces the cost of all spells with a specific element
* `element [Element_Name]` -- [Element(s)](enums.md#elements)

`ManaCostReductionTagged {}` -- Reduces the cost of all spells with a specific tag
* `tag string` -- Tag
* `reduction X / X%` -- Amount of mana to reduce

`ClassManaCostReduction {}` -- Reduces the cost of all spells of a specific class
* `class ClassName` -- Class (remove it to reduce the mana cost of all spells of the character's class) (Putting `Jester` will reduce the cost of all classes spells)
* `reduction X` -- Amount of mana to reduce (TEST percentage)

### Stats related passives

`BalanceStats 1` -- Balances all the character stats

`AddMovement X` -- Adds X tiles to the movement range

`CapMovementAbilityRange 1` -- Caps movement abilities' range at 1

`LimitDamage X` -- Limits the damage amount taken to X

`LimitHeal X` -- Limits the healing amount received to X

`OverrideMaxHealth X` -- Sets max health to X

`OverrideMaxMana X` -- Sets max mana to X

`AddStartingMana X` -- Adds X to the starting battle mana

`AddManaRegen X` -- Adds X to the end turn mana regen

`StrictLimitDamage X` -- Damage received is capped at X

`AddCorpseHealth X` -- Adds X hp to the character's corpse

`NoHealthOnlyShield 1` -- Makes the character have only shield (This affects interactions like shield piercing attacks)

`BoostHeals X` -- Boosts the target's heals by X

`BoostReceivedHealing X` -- Boosts the received heals by X

`AddEndOfCombatRegen X` -- Adds X to the end of combat health regenetation

`HealAtStart X%` -- Heals X% at the start of the battle

`KillsHeal X or X%` -- When killing a character, heals the damager by X if it's not a percentage, or by X% of it's max health if it's a percentage

`CharismaIsMaxStat 1` -- Makes charisma be equal to the character's highest stat

`FurnitureStats {}` -- When the cat returns home it will give these house stats when present
* `Comfort X`
* `Stimulation X`
* `Appeal X`
* `Health X`
* `Evolution X`

`BasicAttackDamageMultiplier X%` -- Basic attack's damage is multiplied by X

`AbilityDamageMultiplier float` Abilities's damage is multiplied by X

`AddCritMultiplier X%` -- Critical hits's damage is multiplied by X

`HealthMultiplier float` -- Base health is multiplied by X

`MultiplyReceivedHealing float` -- Received heals are multiplied by X

`ManaRegenMultiplierIfManaEmpty float` -- Mana regen is multiplied by X if the mana is empty

`ManaRegenMultiplierIfNoCastSpells` -- Test

`MultiplyCoinsOnBattleStart X` -- Multiply coins on battle start by X

`MultiplyKnockbackDamage float` -- Knockback damage is multiplied by X

`MultiplyKnockbackDistance float` -- Knockback distance is multiplied by X

`AllyMultiplyKnockbackDamage float` -- Knockback damage for all allies is multiplied by X

`AllyMultiplyKnockbackDistance float` -- Knockback distance for all allies is multiplied by X

`TrapEffectsMultiplier X` -- The damage and effects of the target's traps are multiplied by X

`FaceArmorPassiveMultiplierBonus X` -- Copies the face armor passive effects X times

`HeadArmorPassiveMultiplierBonus X` -- Copies the head armor passive effects X times

`NeckArmorPassiveMultiplierBonus X` -- Copies the neck armor passive effects X times
 
`WeaponPassiveMultiplierBonus X` -- Copies the weapon passive effects X times

`TrinketPassiveMultiplierBonus X` -- Copies the trinket armor passive effects X times

`TrinketActiveEffectsMultiplierBonus X` -- Trinket active effects are copied X times

`WeaponActiveEffectsMultiplierBonus X` -- Weapon active effects are copied X times

`WeaponDamageMultiplierBonus float` -- Weapon damage is multiplied by X

`IncreaseExplosionSize X` -- Increases the source's explosions size by X

`IncreaseExplosionDamage X` -- Increases the source's explosions damage by X

### Auras

`DepressionAura {}` -- Gives all units in a Y range X all stats down
* `stacks X` -- Amount of stats down (Can also be used as `DepressionAura X`)
* `range Y` -- Effect range (Set to `global` for global range)
* `square bool` -- If the range is a square instead of a cross
* `aura_effects_allies bool` -- If this effect targets allies

`AllyBonusAbilityAura {}` -- Gives all units in a cross or square a bonus ability
* `ability AbilityID` -- Bonus ability (Can be used as `AllyBonusAbilityAura AbilityID`)
* `square bool` -- If the range is a square instead of a cross
* `range X` -- Effect range (Set to `global` for global range)

`AllyMoveAbilityAura AbilityID` -- All adjacent unit's movement ability is replaced with a specified one
* `ability AbilityID` -- Move ability (Can be used as `AllyMoveAbilityAura AbilityID`)
* `square bool` -- If the range is a square instead of a cross
* `range X` -- Effect range (Set to `global` for global range)

### Ability specific passives

`AbilityInheritsWeaponEffects X` -- The ability inherits the equipped weapon effects multiplied by X 

`DownRankAIIfWeaponUsable float` -- sets the ability ai chance to the specified flaotif the character's weapon is usable

`AbilityEnabledOncePerFightAtHealthThreshold X% `-- Enables the ability once after reaching X% health

`CopyCatPassive_Initializer X` -- Copy cat ability effect

`CopyBasicAttackEffects 1` -- Copies the basic attack effects

`CatchBoomerang 1` -- Catches the boomerang projectile

`ReloadOnAllyCatDies 1` -- Reload the ability when an ally cat dies

`ReloadOnAllyDies 1` -- Reload when an ally dies

`ReloadOnAnyDamage 1` -- Reload when taking damage

`ReloadOnBackstab 1` -- Reload when backstabbing a character

`ReloadOnElementalDamageReceived Element_Name` -- Reload when receiving damage of a specific [element](enums.md#elements)

`ReloadOnGainCoins 1` -- Reload when gaining a coin

`ReloadOnGainDivineShield 1` -- Relaod when gaining divine shield

`ReloadOnKill 1` -- Reload when killing any character

`ReloadOnKillEnemy 1` -- Reload when killing an enemy

`ReloadOnKillTagged string` -- Reload when killing a character with a specific tag 
`ReloadOnKillUnitWithStatus Status_Name` -- Reload when killing a character with a specific status

`ReloadOnSpendMana 1` -- Reload when spending any mana

`ReloadOnTotalDamageReceived X` -- Reload after receiving X damage

`ReloadOnUseAbilityWithManaCost X` -- Reload after uning an ability with a mana cost of X

### Item specific passives

`Fragile 1` -- Makes the item fragile, breaks when the character is downed

`FragileDuringElement Element_Name` -- Makes the item fragile when affected by a specific [element](enums.md#elements)

`Brittle 1` -- Makes the item brittle, 25% chance to break when hit

`BrittleDuringElement Element_Name` -- Makes the item brittle when affected by a specific [element](enums.md#elements)

`Flammable 1` -- Makes the item flammable, breaks when hit by fire and gives 1 Burn

`BreakOnElement Element_Name` -- Breaks the item when affected by a specific [element](enums.md#elements)

`TintItem {}` -- Tints the item, only for trinkets and weapons
* `add [r g b]` -- Added color value
* `mul [r g b]` -- Multiplied color value
* `ignore_if_str_aux_equals string` -- Ignore the tint if the item's str_aux is equal to a specified string

### Form changer related passives

`FormChangeWhileHasStatus {}` -- (FORMCHANGER) Changes the character form based on if it has a specified status
* `status Status_Name` -- Status
* `form_has` -- Form to change to if it has the status
* `form_hasnot`  -- Form to change to if it doesn't have the status

`FormChangeWhilePrimingAbility` -- (FORMCHANGER) Changes the form while (any) ability is primed (TEST)

### Visual / Sound

`SizeScale float` -- Changes the target's size scale

`SizeScalePercent X%` -- Changes the target's size scale by percentage

`SetDefaultFacePassive FaceID` -- Changes the default face of the cat with the specified one

`CharacterLightSource {}` -- Makes the character cast a light
* `color [float float float]` -- Color of the light in rgb
* `size float` -- Size of the light [TEST glow]

`MoveSpeedMultiplier float` -- Changes the movement speed by a multiplier

`HideSomeHudStuff 1` -- Hides some hud elements like health, shield and statuses

`SoundEventOnHit SoundID` -- Plays a sound if the damage hits

`LoopingSoundWhileAlive SoundID` -- Plays a looping sound while the character is alive

### Ai

`ReplaceBrain {}` -- Replaces the [ai](character_formatting.md#character-ai) of the character with a new one

`Uncontrollable 1` -- Makes the character ai controlled

### Passive Misc

`AlliesAvoidTraps 1` -- Allies do not trigger the source's traps

`DamageNeighborsOnEndMove {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) applied to characters who end their movements adjacent to the source or vice versa

`ReceivedStatusReplacement [Status_Name_old Status_Name_new]` -- Replaces all statuses of a specific type applied to the source with a new one (Can work with non in-game statuses)

`RandomPassivePool {}` -- Randomly selects a passive from the table

`PassiveGroup {}` -- Treats a table of passives as one

`IgnoreTiles 1` -- Ignore tiles

`ChanceToAmbush X%` -- Gives an X% chance for battles to start with an ambush

`ReplaceBlankTilesOnBattleStart Tile_Name` -- Replaces all blank [tiles](enums.md#tiles) with a specific tile at battle start

`MinimumKnockbackFromPhysicalAttacks X` -- Makes the minimum knockback to all received phisical attacks X

`ExtraBasicAttacks X` -- Gives X extra basic attacks

`ExtraWeaponAttacks X` -- Gives X extra weapon attacks

`InnateElement Element_Name` -- Makes target be of a certain [element](enums.md#elements)

`ElementImmune Element_Name` -- Makes target immune to a certain [element](enums.md#elements)

`StatusImmunity [Status_Name]` -- Makes target immune to a list of statuses

`AmplifyStatus {}` -- Adds X stacks to a specific status when inflicted by the target
* `status Status_Name` -- Status (can also be used as `AmplifyStatus Status_Name`)
* `addstacks X` -- Stacks to add (default: 1)

`AmplifyPositiveStatus X` -- Adds X stacks to positive statuses when inflicted by the character

`AmplifyNegativeStatus X` -- Adds X stacks to negative statuses when inflicted by the character

`AmplifyKnockback X` -- Adds X knockback to knockback inflicted by the character

`AmplifyReceivedNegativeStatus X` -- Adds X stacks to negative statuses given to the character

`AmplifyReceivedPositiveStatus X` -- Adds X stacks to positive statuses given to the character

`EquipTemporaryItem Item_Name` -- Gives the target a temporary item that breaks after battle

`EquipPermanentItem Item_Name` -- Gives the target an item that stays after the battle

`CanRemoveCursedItems 1` -- Makes the character be able to remove cursed items

`ConsumablesMeleeRange X` -- Increases by X the melee range of the target consumables

`BonusFoodEachBattle X` -- Gives X bonus food when winning a battle

`ConsumablesInfiniteRange 1` -- Gives the target infinite range on it's consumables

`SafeExplosions 1` -- The character's explosive damage won't affect allies

`BouncyProjectiles {}` -- Makes the target projectiles bounce X times to a Y range
* `max_bounces X` -- Max number of bouces the projectile can do
* `max_range Y` -- Max range the bouncing can happen

`SharePickups {}` -- Makes the pickups collected by the character be shared to all other party members
* `include_coins bool` -- If coins are shared as well

`SharePickupsWithSpawner 1` -- Makes the pickups collected by the character be shared to the spawner of the character

`HouseFoodRequirementMultiplier X` -- Changes how much food is needed for the target's when a day passes [TEST if things other than 0 work]

`TrinketPassiveMultiplierBonus X` -- Multiplies the held trinket passive effects by X

`TrinketActiveEffectsMultiplierBonus X` -- Multiplies the held trinket active effects by X

`AlternateCraftingPools {}` -- Changes specified crafting pools with new ones
* `ItemPoolID New_ItemPoolID` -- Changes the Pool_Name pool with New_Pool_Name (This doesn't take into consideration tech, so if you want to change all 4 tech levels you have to specify it for each one)
* etc...

`BackstabWeakness float` -- Makes the character take damage * X if the damage was backstack (backstab already has a .25 damage bonus)

`SetFaction  Faction_Name` -- Puts the character in a specific [faction](enums.md#factions)

`SetBrittleImmune Itemset_Name` -- Removes brittle to items of a specific item set

`DamageFromBehindOnly 1` -- Makes the character ignore all attacks that aren't from the back 

`MulticlassLevelUp ClassID` -- Adds a class' abilities and passives to the upgrade pool

`CanLevelUpWhenDead 1` -- Makes the character be able to level up even if dead

`AddLevelUpRerolls X` -- Adds X rerolls to the level up choices

`AddLevelUpStatMultiplier 1` -- Doubles the stat given when leveling up

`JesterLevelUpRerolls 1` -- Makes rerolls use the pools of every class

`CantSpreadDiseases 1` -- Makes `SpreadDisease` not work when used by the character

`CantCatchDiseases 1` -- Makes `SpreadDisease` not work when applied to the character

`FadeInsteadOfDie 1` -- Makes the character fade out when dying

`ExpireOnSpawnerTurnEnd 1` -- Makes the character die when the turn of the spawner character ends

`MimicSpawnerAttacks 1` -- Makes the character's basic attack the one of it's spawner

`TakeWeaponFromSpawner 1` -- Makes the character take the spawner's weapon when spawning in

`ReflectProjectiles X%` -- Gives X chance to reflect incoming projectiles

`ReflectProjectiles {}` -- Reflects incoming projectiles dealing X damage to itself
* `self_damage X` -- Damage dealt

`AutoEquipConsumables 1` -- Automatically equips consumables from the adventure inventory when the consumable slot is empty

`CopyPassiveSlot 0-3` -- Copies the effects of the passive in a specified slot (2-3 are the disorders)

`Robot {}` -- Makes the character metal, conductive and energized when hit by electric damage
* `allow_energize_self bool` -- If it can get energized even with it's own electric attacks (If false can be used as `Robot 1`)
* `alternate_energized_effect {}` -- Table of statuses given instead of energized when hit by electric damage

`SpawnNearEnemies 1` -- Makes the character spawn near the enemies

`Phasing 1` -- Makes the characters be able to pass through characters and objects

`LimitedTileTrail Tile_Name` -- Whenever the character moves or is moved, creates a specified [tile](enums.md#tiles) on the tile it moved from

`FinalBossBecomeTheChild {}` -- Table of statuses if this entity is called on to transform into the Child entity

`RandomWeatherEachFight [WeatherID]` -- Picks a random weather to apply at battle start

`ChanceToForceEvent {}` -- Adds a chance for an event to be forced when entering an event node
* `event EventID` -- Event to be forced
* `chance X%` -- Chance

`ExcludeFromEvents EventID` -- Makes a specific event unable to pick the character as subject

`RealTimePressure X` -- Makes every party member have a time limit of X to take an action, otherwise a random action is taken

`RealTimePressure_OneUnit X` -- Makes the character have a time limit of X to take an action, otherwise a random action is taken

`PermanentKitten 1` -- Makes the character permanently a kitten

`ExtraInjuryOnDeath 1` -- Gives an extra injury when downed

---

## STATUSES

>[!NOTE]
>These statuses can be given as parameter a list of an integer and a float [X Y] where X = status stacks Y = chance of applying

### The full list of statuses ripped from the source code are [here.](https://github.com/NancokPS2/mewgenics-gon-map/blob/main/Statuses.txt) HOWEEVER, keep in mind that because some of these statuses are either unused or not fully coded, they have potential to break or crash on use.

" X statuses "

* `Shield X`
* `Burn X`
* `Bleed X`
* `Stun X`  
* `Slow X`
* `Immobile X`
* `PermanentImmobile 1`
* `Freeze X`
* `Hex X`  
* `Drowsy X`   
* `Weakness X`
* `Poison X`
* `Leeches X`
* `Madness X`
* `PermanentMadness 1`
* `Doomed X`
* `SafeDoomed X`
* `HiddenDoomed X`
* `Tarred X`
* `Scrambled X`
* `DelayedPain X`
* `Bruise X`
* `SpiderInfested X`
* `Thorns X`
* `BleedThorns X`
* `PoisonThorns X`
* `Brace X`
* `Cleave X`
* `Tech X`
* `Trample X`
* `Adrenaline X`
* `Quivered X`
* `Charge X`
* `ChargeFists X`
* `TempBackstab X`
* `TempBackstabPiercing X`
* `BlessingOfPeace X`
* `Lifesteal X`
* `Reflect X`
* `HealthRegenUp X`
* `DiminishingHealthRegen X`
* `EmptyMind X`
* `FreeSpell X`
* `KineticSpikes X`
* `PoisonLace X`
* `MagicWeakness X`
* `Marked X`
* `TempInjuryImmunity X`
* `TempManaCostReduction X`
* `TempBasicAttackBonusAOE X`
* `TempBonusKnockback X`
* `TempBonusKnockbackDamage X`
* `TempCounterAttack X`
* `TempPreEmptiveCounterAttack X`
* `NextTurnDoubleRangedDamage X`
* `InjuryImmunity X`
* `AlphaCat X`
* `Charmed X`
* `DoubleCastSpell X`
* `BlastResistance X`
* `CritChanceUp X` -- X is each percentage point
* `DodgeChance_Status X` -- X is each percentage point
* `ExtraBasicAttacks_Status X`
* `Trapper_Status X`
* `DoubleCastSpellsEachTurn_Status X`
* `Ammo X` -- Has no effects on it's own (check [notes](notes.md#functionless-statuses))

>[!NOTE]
>These statuses can be given as parameters negative numbers for debuffs

* `PermanentSTATNAMELONG X` [(Stats list)](enums.md#stats)
* `STATNAMELONGUp X` [(Stats list)](enums.md#stats)
* `TempSTATNAMELONGUp X` [(Stats list)](enums.md#stats)
* `AllStatsUp X`
* `RandomStatUp X`
* `RandomPermanentStat X`
* `DamageUp X`
* `SpellDamageUp X`
* `RangeUp X`
* `TempRangeUp X`
* `TempDamageUp X`
* `TempSpellDamageUp X` -- (BUG) When the status is removed, it removes all bonus spell damage
* `OneUseSpellDamageUp X` -- (BUG) When the status is removed, if it was given in the same damage instance as SpellDamageUp, it removes all SpellDamageUp.

### Status applying

`ApplyToRandomClosestAlly {}` -- Table of statuses applied to a random closest ally

`ApplyToRandomPartyMemberIfPossible {}` -- Table of statuses applied to a random party member, if there is no other party member the statuses are applied to the source

`ApplyToSource {}` -- Use to switch to source in targeted effects

`ApplyToSourceOnKill {}` -- (DAMAGE_INSTANCE) Table of statuses given to the source if it kills 

`ApplyToOthersWithSharedTagAndFaction {}` -- Table of statuses given to all other characters that share the same tag and faction as the source

`ApplyToTile {}` -- Table of statuses applied to the tile where the projectile would land

`ApplyToConsumed {}` -- Table of statuses given to the consumed character

`ApplyMultipleTimes {}` -- Table of statuses given X times
* `stacks X` -- Times to give statuses

`ApplyStatusesNextTurnBegin {}` -- Table of statuses given at the start of the next turn

`TimeDelayStatusApplication {}` -- Effects within this table aren't triggered until a certain amount of time.
* `delay X` -- Time to wait

`CollectsPickupsWithAltEffects {}` -- Gives the source the specified statuses for every pickup collected by the ability, replaces the pickup effects

`Temporary {}` -- Gives a temporary status for a select amount of turns
* `status Status_Name/Passive_Name` -- Status or Passive name
* `data Any` -- Data of the status/passive
* `stacks X` -- Stacks amount of the temporary status/passive
* `turns X` -- Turns the status/passive remains
* `expires_on_begin_turn bool` -- If it counts down as soon as the next target turn begine
* `expires_on_end_turn bool` -- If it counts down as soon as the target turn ends

`RandomStatusFromPool {}` -- Gives a random specified status effect (ignores run seed)

`LateBloomer {}` -- Table of statuses to give after X turns 
* `stacks X` -- Number of turns

`VisualCountDownThenApplyStatus {}` -- Table of statuses applied after a visual countdown
* `delay X` -- Delay (If higher than 5, the countdown won't be shown until it reaches 5) (default: 5)

`ApplyPassives {}` -- Table of passive effects to add to the target

### Ability casting

`UseAbility AbilityID` -- Makes the character use a specific ability  

`UseAbility_NonStack AbilityID` -- Makes the character use a specific ability (Applying it multiple times won't stack the effect)  

`ForceUseAbility AbilityID` -- Forces the character to use a specific ability  

`ForceUseAbility_NonStack AbilityID` -- Forces the character to use a specific ability (Applying it multiple times won't stack the effect)  

`ForceUseAbilityOnTarget AbilityID` -- Forces the character to use a specific ability on the current target

`ImmediateUseAbility_Instant AbilityID` -- Makes the character use a specific ability instantly

`MoveAndUseAbilityEachTurnBeginIfPossible AbilityID` -- Makes the character move and use a specified ability at the start of every turn if possible

`UseMoveAbilityWithAI {}` -- Uses a specified move ability that a character has with a different ai
* `ability AbilityID` -- Ability in spell slot to use
* `move_weights Movement_WeightID` -- Movement weight to use

`UseRandomSpell_Madness 1` -- Makes the character use one of it's spells at random using madness targetting

`CharmedForceAttack 1` -- Makes the target automatically attack targetting the source's enemies

`ForceAttack 1` -- Forces target to attack  

`Metronome {}` -- Cast random spell 
* `stacks X` -- Number of spells (can also be used as `Metronome X`)
* `banned_abilities [AbilityID]` -- Abilities metronome cannot use (default: [])

`PoolMetronome {}` -- Casts a random specified ability
* `pool [AbilityID]` -- Ability list

`TeamCastAbility {}` -- Makes all of the targe's team cast an ability
* `ability AbilityID` -- Ability to cast (Can also be used as `TeamCastAbility AbilityID`)
* `tag_restriction string` -- Tag required by the character to cast the ability
* `same_orentation bool` -- If the character uses the same orentation of the original caster

`DeathwormUnderground AbilityID` -- Makes the target go off map, when a character moves on the tiles the target was on, it will use the specified ability (Needs to be a return ability)

`ForceMoveTowards 1` -- Makes the target move towards the source

`ForceMoveTowardsEnemies 1 or AbilityID` -- Makes the target move towards it's enemies, can be given an AbilityID as input to use a different movement ability

`ForceMoveTowardsTaggedObject {}` -- Makes the target move towers objects with a specific tag
* `ability AbilityID` -- Movement ability used
* `tag string` -- Specified tag

`ForceMoveNonAlliesInRangeTowardsTile X` -- Makes a non-allied unit move to a targeted tile in range, using their basic move action. X is the aoe effect of this. 

`ForceMoveAway {}` -- Forces the target to move away from the source (Can be used as `ForceMoveAway 1`)
* `free bool` -- If it doesn't use the character movement point (default: `true`)

### Spawn

`BounceObject {}` -- Spawns a specified Character bouncing it from the source
* `obj CharacterID` -- Character to spawn (Can also be used as `BounceObject CharacterID`)
* `slide X` -- How many tiles it slides for after spawning
* `chance float` -- Chance of it spawning (0-1)

`ObjectOnHitCharacter {}` -- Spawns X specified Characters from the target
* `object CharacterID` -- Character (Can also be used as `ObjectOnHitCharacter CharacterID`)
* `stacks X` -- Number of Characters (default: `1`)

`SpawnThingIfHitKills CharacterID` -- Spawns a specified character when the target is killed  

`LeaveBehind {}` -- Spawns behind the specified character
* `object CharacterID` -- Character

`PopAndSpawn {}` -- Destroys this character and spawns another
* `object CharacterID` -- New character to spawn (Can also be used as `PopAndSpawn CharacterID`)
* `no_splatter bool` -- If the destroyed character doesn't show any splatter
* `clone_referenced_catdata bool` -- If the cat data is passed from the source character to the spawned character
* `clone_items bool` -- If the spawned character clones the items from the source character

`AfterImage CharacterID` -- Whenever the character moves or is moved, spawns a specified character on the tile it moved from

`GlobalSpawnCharacter` -- Spawns a character in some sort of global sense (used to spawn MegaGuppy)

### Tiles

`SpawnFlames 1 / [1 float]` -- Spawns fire, chance can be specified with a float

`SpawnCreep 1` -- Spawns creep tile

`BramblesOnHit 1` -- Spawns brambles on the targetted tile

`FlowersOnHit 1` -- Spawns flowers on the targetted tile

`SpawnBearTrap 1` -- Spawns a bear trap on the targetted tile

`SpawnCustomTrap MovieClip` -- Spawns a custom trap that takes the damage instance properties and effects with a specified movieclip (Check out tiles.swf for existing trap movieclips)

`ChangeTile Tile_Name` -- Changes the targeted tile to the selected [tile](enums.md#tiles)  

`AOEPuddle X` -- Creates a water puddle with size X

### Stats

`FullHeal 1` -- Heals the target to full

`FillMana 1` -- Fully fills the target's mana

`EmptyMana 1` -- Sets mana to 0

`NoStartingMana 1` -- Starts with 0 mana

`NoHealthRegen 1` -- Doesn't regenerate health at the end of the round

`NoManaRegen 1` -- Doesn't regenerate mana at the end of the turn

`TempNoManaRegen 1` -- Doesn't regenerate mana at the end of the turn, removed after the turn ends

`HealthGain X` -- Heals by X  

`ManaGain X` -- Gives X mana

`MaxHPUp X` -- Increases max hp by X

`ManaSteal X` -- Source steals X mana from the target

`PercentHeal X` -- Heals by X percent of the max health

`HealAndOverhealToShield X` Heals by X and turns overheals into shield

`SwapHighestAndLowestStat 1` -- Swaps the highest and lowest stats (takes into consideration stat statuses)

### Damage

`OverrideDamage X` -- overrides the damage dealt with X

`IgnoreDamage 1` -- Ignores the damage dealt

`DoDamage {}` -- Creates a [damage instance](ability_fields.md#damage_instance--self_damage) targetting the target

`ArcLightning {}` -- Arcs lightning to a in distance that chains to other enemies (seems to chain only once)
* `stacks X` -- Actually not sure, X is 100 usually
* `enemies_only boolean` -- If the lightning only hits enemies
* `ignore_self boolean` -- If the lightning can or cant hit the source
* `max_distance X` -- X is range of tiles it can bounce to
* `chance X` -- Chance to continually chain. X is a float between 0 and 1

`RandomMagicMissile {}` -- Spawns X sparks targetting the source's enemies
* `stacks X` -- Number of sparks (can be used as `RandomMagicMissile X`)
* `full_size bool` -- true = 3 damage, false = 1 damage (default: `false`)

`UndoDamage X` -- Undo last X damages taken by the target 

`Rebuke X` -- Deal damage to the target equal to X * the damage that unit last dealt  

`RNGCannonRandomDamage X` -- Deals 0-X damage to the target, affected by luck

`DamageOrHealConditionally 1` -- Makes the ability heal allies and damage enemies  

`Die 1` -- Target dies  

`SafeDie 1` -- Dies without injury

`Vaporize 1 ` -- Destroys the target

`DeferVaporize 1` -- Destorys the target (delayed)

`VaporizeTarget 1` -- Destroys only the targetted character

`CorpseVaporizer 1` -- Destroys the target and it's corpse

`VaporizeCorpse 1` -- Destroys a corpse

`VaporizeCorpseFlipAdvantage [1 float]` -- Destorys a corpse (advantage is flipped, luck reduces the chance of it happening)

`VaporizeInanimate 1` -- Destroys a character if it's an inanimate object

### Turns

`EndTurn 1` -- Ends the turn

`StealTurn 1` -- Removes the target's next turn and gives it to the source

`RemoveTurnsThisRound 1` -- Removes all turns of the target

`TakeExtraTurn X` -- Target takes X extra turn(s)

`TakeExtraTurnEndOfRound 1` -- Takes an extra turn at the end of the round

`AlliesTakeExtraTurn 1` -- Makes the take an extra turn if it's an ally

`TakeBonusTurnWithStatus {}` -- Takes an extra turn with a specified table of statuses

`TakeBonusTurnWithAIControl {}` -- Takes an extra turn with ai control
* `end_of_round bool` -- If the extra turn is at the end of the round
* `include_spells bool` -- If the ai can use spells

`AIControlNextTurn {}` -- Makes the next X turns be ai controlled
* `stacks X` -- Turn amount
* `include_spells bool` -- If it can use spells (default: false)

`AlphaTurns 1 / -1` -- 1 = Takes an extra turn at the start of the battle, -1 = at the start of every round

### Visual / Sounds

`SwitchMusic {}` -- Changes the currently playing music
* `new_song SongID` -- ID of the song to use (put `same` to keep the current song)
* `new_layer LayerID` -- ID of the layer of the song to pick [map, event, battle, boss]

`SetDefaultFace FaceID` -- Changes the default face of the cat with the specified one

`ParticleBurst ParticleID` -- Plays the specified particles

`ShowText string` -- Shows a custom pop up text (can pull from cvs)

`ShowFakeDamage {}` -- Shows a fake damage popup on the target
* `stacks X` -- Amount of damage
* `style [Damage_Style]` -- [Style](misc.md#damage-styles) of the damage

`DoDistortionRing {}` -- Creates a visual distorted ring effect (Like gravity slam/zaratana) 
* `speed X`
* `intensity X`
* `radius X`

`DoScreenShake {}` -- Creates a screen shake effect
* `time X`
* `intensity X`

### Status Misc

`WeaponAuxMultiplier float` -- Multiplies the weapon aux by X

`PurgeAll 1` -- Removes all buffs and debuffs from the target

`ClearNegativeEffects 1` -- Removes negative effects being given

`AllyInfested {}` -- Applies a special type of infested, spawning a specific character type and in a specific faction
* `object CharacterID` -- Character to spawn
* `faction Faction_Name` -- [Faction](enums.md#factions) of the spawned character

`Infested X` -- Applies a special type of infested, spawning a character of the same type of the one who applied it

`EvolveAbilityFromPool {}` -- ABILITY Permanently changes the ability to one from the specified class pool or from a pool in ability_pools.
* `pool Pool_Name` -- Ability pool (Can either be the Class name or the Pool name) 
* `upgraded bool` -- If it's the upgraded version 

`ApplyShieldToApplierBasedOnMaxHealth 1` -- Applies shield to the source based on the max health of the targeted unit

`FindItem ItemID` -- Gives an item to the adventure inventory

`FindItemFromPool ItemPoolID` -- Gives an item from a specified pool

`RefreshMovePoints N` -- Refreshes N movement points  

`TransformBasicAttack AbilityID` -- Transform the target basic attack to a chosen ability  

`TransformBasicMove AbilityID`  -- Transform the target basic move to a chosen ability  

`TransformAbility AbilityID` -- ABILITY Transform the current ability into a chosen ability  

`BodyGuard {}` -- When an ally is damaged take their place using a specific ability
* `stacks X` -- Status amount
* `ability AbilityID` -- Ability used

`Counterspell 1` -- Counters the next played enemy spell, stopping it

`BonusCritChance X` -- Gives X crit chance to the damage

`CastAgain X` -- casts the ability another X times

`ConjureBonusAbility AbilityID / AbilityPoolID` -- Gives the target the specified ability in it's bonus spell slot (Special inputs: `random` for a random ability, `Class` for an ability from the character's class)

`CopySpells {}` -- Source copies the target spells for X turns (Must be a cat unit)
* `stacks X` -- Turns (can also be used as `CopySpells X`)
* `upgraded bool` -- If the abilities are upgraded

`CopiedSpells X` -- Target copies the source spells for X turns (Must be a cat unit) (check [notes](notes.md#functionless-statuses))

`RerollEnemy 1` -- Rerolls the target to a random chapter enemy  

`RepairOnKill X` -- Repair used item by X when it kills  

`AIFavorLowHealth X` -- Gives X ai score to targets with low health

`SpecificInjury Injury_Name` -- Gives the target a specific injury

`RandomInjury X` -- Gives the target X random injury [TEST]

`AddRandomEliteBuff X` -- Gives the target X random elite buffs (Doesn't work in conditionals)

`Revive 0-100%` -- Revive the target at a health percentage

`CollectsPickups 1` -- Collects targeted pickups  

`ShareHealthRegen 1` -- Shares health regen with allies  

`CurrentWeaponDamageUp X` -- Gives X damage up to the current held weapon  

`AutoReanimate X%` -- Reanimate a character as a zombie at X% hp, it joins the source's team

`RandomMutation X` -- Gives X random mutations

`RandomTaggedMutation string` -- Gives a random mutation that has the specified tag

`ContextualHeal 1` -- Makes the ability heal allies and damage enemies [TEST might be in a different context]  

`IgnoreSelf 1` -- Effects and damage don't get applied to the source  

`IgnoreDebuffs 1` -- Debuffs given are not applied

`Leech X` -- Damage dealt heals the source times X

`FlatLeech X` -- Source heals by X hp

`FlatLeechIfDamaged X` -- Source heals X hp when actually damaging the target

`RemoteLeech 1` -- Heals the spawner by the damage dealt [TEST X]

`RemoteFlatLeech X` -- Heals the spawner by X when damaging something

`PullSourceToKnockbackImmuneTarget 1` -- When knockback is dealt, if the target is immune to it pull the source to it  

`ScrambleLastUsedSpell {}` -- Replaces the last used spell with a random one
* `permanent bool` -- If the effect is permanent

`GainCoinsRange {}` -- Character gains a random amount of coins in a range
* `min X` -- Minimum range
* `max X` -- Maximum range

`AddWeaponAux X` -- Adds X to the currently equipped weapon aux

`SetItemAux {}` -- Sets the aux value of an item in a specific item slot
* `slot Item_Slot` -- [Item slot](enums.md#item-slots)
* `value X` -- value to set

`CatPartsTransform {}` -- Transforms a cat character parts into specific parts via their id
* `tail X`
* `body X`
* `head X`
* `arm1 X`
* `arm2 X`
* `leg1 X`
* `leg2 X`
* `ear1 X`
* `ear2 X`

`CatPartsSizeScaleStatus {}` -- Changes the scale of specific parts of the target cat
* `tail float`
* `body float`
* `head float`
* `arm1 float`
* `arm2 float`
* `leg1 float`
* `leg2 float`
* `ear1 float`
* `ear2 float`

`Consumed {}` -- The source consumes the target, becoming it's consumed character and gaining the Consuming status
* `instant bool` -- TEST
* `mount_mode bool` -- TEST
* `force_contact bool` -- If it forces contact to be made
* `drop_on_death bool` -- If the consumer will release the consumed character when it dies
* `drop_on_self_death bool` -- If the consumer will release the consumed character when itself dies
* `do_not_pop_corpse bool` -- If the consumer won't destroy the corpse of the consumed character
* `struggle_ability AbilityID` -- Ability that replaces the basic attack of the consumed character while it's consumed

`ChanceToBreakFree {}` -- Chance to break free from being consumed, scales with luck
* `stacks 0-100` -- Chance
* `ability AbilityID` -- Ability the consumer uses if successful
* `fail_ability AilityID` -- Ability the consumer uses if unsuccessful

`Imprison CharacterID` -- Creates specified Characters around the target

`Cleanse 0 or 1` -- Removes all debuffs on the target (1 makes it so it also gives 1 holy shield for every type of debuff)

`NextAttackBonusRange X` -- Gives next attack bonus range

`ReduceManaCost X` -- Reduces mana cost by X

`ReduceManaCostExcludeBrainstorm X` -- Reduces mana cost by X excluding the brainstorm ability [TEST]

`MaxStartingMana 1` -- Makes the character start with max mana

`NextAttackSpecialCrit {}` -- Gamble ability stuff [TEST]
* `extra_coins_per_stack X` -- Gives X extra coins
* `crit_multiplier_bonus X` -- Gives X extra mult critical chance for the next attack
* `luck_increase X` -- [TEST if it's not only luck]

`FaceAway 1` -- Makes the target face away
        
`ReviveNextRound {}` -- Revives the target after X rounds (takes any status as optional parameter for when the character is revived)
* `stacks X` -- Rounds it takes to revive (Can also be used as `ReviveNextRound X`)
* `revive_health Y%` -- Health the target is revived with

`DontHealEnemies 1` -- Prevents the damage instance heal from applying to enemies

`Displace X` -- Displaces the target by X tiles

`DisplaceTowardsSource X` -- Displaces the target by X tiles towards the source

`DisplaceToAbilityTarget 1` -- Displaces characters in the ability's area as close to the targetted tile 

`RandomDistanceDisplace {}` -- Displaces the target by a random distance
* `stacks X` -- Max distance (can also be used as `RandomDistanceDisplace X`)
* `min_dist X` -- Minimum distance

`NextActionLuckUp X` -- [TEST if it's not only LuckUp]

`NextBasicAttackCritsThisTurn 1` -- Makes the next basic attack crit, removed at turn end

`RefreshItemAbilities X` -- Refreshes the target's item abilities

`Tangled {}` -- Tangles the target
* `stacks X` -- Tangled amount (Can also be used as `Tangled X`)
* `alt_art MotionClip_Name` -- Motion clip to replac ethe default tangled art

`KnockbackDirectionIsFacingDirection 1 or Direction_Changer` -- Makes the inflicted knockback be directed where the character is facing, direction can also be modified with [flip rotate_right rotate_left]

`KnockbackIfCrit {}` -- Give X knockback to the target if the attack crits
* `knockback X` -- Amount of knockback
* `override_chain_knockback Y` -- Override chain knockback given with Y

`KnockUpAndAway {}` -- Knocks the target away throwing it in the air [TEST]
* `stacks X` -- [TEST]
* `distance X` -- Knockback distance
* `displace true` -- [TEST]
* `self_damage false` -- [TEST]

`ScatterCoins {}` -- Scatters X coins around
* `stacks X`-- Amount of coins
* `stackable bool` -- If they can stack together

`EnableWeather Weather_Name` -- Starts a specified weather

`PlayBackground X` -- Plays X backgrounds. (TEST to see if anything outside of 1 is a option)

`InsertIntoBackgroundPlaceholder 1` -- Inserts a character within battle into the background (TEST)

`FinalBossPupils {}` -- These values seem to be hardcoded (TEST for changing anim)
* `radius X`
* `virtual_head_position []` -- seems to be eye, head, eye
* `look_at_offset []` -- predceeing followings
* `teleport_tracking_halflife X` -- float
* `reset_center_because_of_animation_halflife X` -- float
* `reset_center_because_no_target_halflife X` -- float
* `tracking_acquisition_halflife X` -- float

`RemoveAmbientLightEffects` -- Removes existing ambient light effects

`VisualFX FX_Name` -- Shows a visual effect on the target

`VisualFXTile FX_Name` -- Shows a visual effect on the target's tile

`SetHealth X%` -- Sets the target's health to X%

`FormChange string` -- Changes the target's form

`RemoveMovePoints 1` -- Removes a movement point from the target

`RemoveActPoints 1` -- Removes an act point from the target 

`RefreshMovePoints 1` -- Refreshes a movement point for the target

`RefreshActPoints 1` -- Refreshes an act point for the target

`RefreshMovePointsIfHit 1` -- Refreshes a movement point for the target if the damage instance hits

`ReloadAssociatedAbility 1` -- Reloads the ability that applied this status

`Craft {}` -- Creates an item in a specific slot from a specific pool
* `pool ItemPoolID` -- The item pool 
* `slot Item_Slot` -- [Item slot](enums#item-slots)
* `works_with_tech bool` -- If the crafting is influenced by tech (searches ItemPoolID_X, where X is the amount of tech)
* `temporary bool` -- If the crafted item lasts only for the current battle

`RemoveStatusStacks {}` -- Removes X stacks of a specified status
* `status Status_Name`-- Status
* `stacks X` -- Stacks

`RemoveStatus Status_Name` -- Removes a specified status

`RemoveStatusByStackKey string` -- Removes all statuses with a specific stack key (you can add a stack key to a status by applying it as a table and add the field `stack_key string`)

`NextBattleStatusStacks {}` -- Table of statuses given to the character the next X fights
* `fights X`

`NextBattleStatus {}` -- Table of statuses to give at the start of the next battle

`ForceTransferWeapon 1` -- Forces the source's weapon to go to the target

`BackflipWhenTargeted {}` -- Gives X backflips using a specified ability for the backflip
* `stacks X` -- Amount (Can also be used as `BackflipWhenTargeted X`)
* `ability AbilityID` -- Ability used to backflip


`FlippedFacingForceAttack 1` -- Flips direction and force attacks

`GainDisorderFromPool_PostCast Pool_name` -- Gives a random disorder from a pool

`LateStatusApplication {}` -- Table of statuses to apply later in the status evaluation

`Instakill X` -- Instakills non boss units, and deals X damage to bosses

`MonkStanceSwitch 1` -- Switches the monk stance of the target [TEST]

`DestroyNeckArmor 1` -- Destroys the neck item if it exists

`DestroyFaceArmor 1` -- Destroys the face item if it exists

`DestroyTrinket 1` -- Destroys the trinket item if it exists

`DestroyWeapon 1` -- Destroys the weapon item if it exists

`DestroyWeaponThrow 1` -- Destroys the thrown weapon

`DamageWeapon X` -- Damages the weapon by X

`RemoveItem Item_Name` -- Removes a specific item from the target's equipped items

`UpgradeRandomAbility 1` -- Upgrades a random ability temporarily

`PermanentUpgradeRandomActive X` -- Upgrades permanently X random abilities

`PermanentUpgradeRandomActiveOrPassive X` -- Upgrades permanently X random abilities or passives

`ExplosionImmunity 1` -- Gives explosion damage immunity

`ChanceToBreak 0-100` -- (ITEM) Breaks the used item with an X chance

`IncreaseItemAuxOnKill X` -- (ITEM) Increases the item aux by X when it kills

`TauntAlways 1` -- Gives constatly the taunt effect (Enemies will prioritize the source)

`ChangeTauntPriority X` -- Positive numbers will make the source more targetted, negative numbers will make the source less likely to be targetted

`RefreshOncePerFightAbilities 1` -- Refreshes all abilities/items with once per fight restrictions

`SpreadDisease {}` -- Gives a specified passive (with a popup) as a disease
* `disease PassiveID` -- Passive to give
* `chance X%` -- Chance of it being spread
* `can_apply_to_anything bool` -- If it can spread to any kind of unit and not only player cats

`QuakeAreaChance {}` -- Triggers stalagmites to falls
* `radius X` -- Tile range
* `chance X%` -- Chance of the stalagmites falling

---

## X_is 

`X_cant_be_zero bool` -- X can't be 0 (goes in cost)

`XIsCountStatusStacks Status_Name` -- X becomes the status stacks count

`XIsTimesDamageTaken N` -- X becomes N * times taken damage [TEST]

`XIsTargetHealth {}` -- Inside the expression X is the target's health

`XIsLivingAlliesWithTag string` -- X becomes the number of allies with a specific tag

`XIsConsumedCharacterMaxHP N` -- X becomes N * the max health of the character the source consumed

`XIsIncreaseEachTurn N` -- X increases by N each turn

`XIsRampAndReset N` -- X becomes N when this ability is used [Can't get to work for some reason]

`XIsRecycleCostReduction N` -- X becomes 1 while weapon is unused and N when used

`XIsSpellStormRampAndReset N` -- Whenever a spell is used X increases by 1, starts and becomes N when the ability is used

`XIsSpellStormRampAndReset {}` -- Whenever a spell is used X increases by 1, is stacks at the start of the battle

* `stacks N` -- Starting X value
* `reset_percent 0-100%` -- How much X is reset when the ability is used

`XIsOtherHealsThisTurn 1` -- X the number of hp something was healed by you during the turn

---

## CONDITIONAL TRIGGERS

> [!TIP]
> After a condition `Else {}` can be used to execute when the condition is not met.

`Conditional_GoodRoll {}` -- Execute if roll is successful (positive roll)
* `odds X% or float` -- Roll odds

`Conditional_BadRoll {}` -- Execute if roll is successful (negative roll)
* `odds X% or float` -- Roll odds

`Conditional_RandomChance {}` -- Execute if roll is successful (neutral roll)
* `odds X% or float` -- Roll odds

`Conditional_DebuffRoll {}` -- Execute if roll is successful (Treated as a debuff)
* `odds X% or float`

`Conditional_Shielded {}` -- Execute if target has shield

`Conditional_NotShielded {}` -- Execute if the target has no shield

`Conditional_HealthThreshold {}` -- Execute at a certain health threshold

* `threshold_flat X` -- Flat threshold
* `threshold_expr X` -- Expression threshold (putting only a number/variable results in a less_than_equal to expression) [TEST]
* `threshold_percent 0-100%` -- Percentage threshold

`Conditional_ManaThreshold {}` -- Execute at a certain mana threshold

* `threshold_flat X` -- Flat threshold
* `threshold_expr X` -- Expression threshold (putting only a number/variable results in a less_than_equal to expression) [TEST]
* `threshold_percent 0-100%` -- Percentage threshold

`Conditional_OncePerBattle {}` -- Execute this condition once per battle

* `key string` -- Identifier of the condition (Known keys: gamewin)

`Conditional_FirstApplicationThisTurn {}` -- Execute this condition once per turn

* `key string` -- Identifier of the condition

`Conditional_HasTag {}` -- Execute if target has tag
* `tag string` -- Name of the tag

`Conditional_SourceHasTag {}` -- Execute if the source has tag
* `tag string` -- Name of the tag

`Conditional_Adjacent {}` -- Execute if target is adjacent to source

`Conditional_Ally {}` -- Execute if target is an ally of the source

`Conditional_Enemy {}` -- Execute if target is an enemy of the source

`Conditional_Boss {}` -- Execute if target is a boss

`Conditional_NotBoss {}` -- Execute if target is NOT a boss

`Conditional_BossOrBig {}` -- Executes if the target is either a boss or big

`Conditional_Corpse {}` -- Execute if target is a corpse

`Conditional_HasStatus {}` -- Execute if target has status 

`Conditional_SourceHasStatus {}`

* `status Status_Name` -- Status name

`Conditional_PartyMember {}` -- Execute if target is a party member [TEST]

`Conditional_IsSelf {}` -- Execute if the target is the source

`Conditional_AbilityTargetIsSelf {}` -- Execute when the target is the source

`Conditional_Displaceable {}` -- Execute if the target is displaceable

`Conditional_Buddy {}` -- Execute if target is the source's buddy

`Conditional_InForm {}` -- Execute if target is in a specific form
* `form Form_Name` -- Form name

`Conditional_Object {}` -- Execute if target is an object

`Conditional_Cat {}` -- Execute if the target is a cat

`Conditional_PlayerCat {}` -- Execute if target is a player cat

`Conditional_LivingPlayerCat {}` -- Execute if target is a player cat who happens to be alive

`Conditional_Familiar {}` -- Executes if the target is a familiar

`Conditional_AffectedByElement {}` -- Execute if target is affected by an element
* `element Element_Name` -- [Element](enums.md#elements) name

`Conditional_FormulaIsPositive {}` -- Execute if the formula given is positive

* `formula X` -- formula (can be a more complex formula if given as a string)

`Conditional_SourceAbilityHasTag {}` -- Execute if the source is an ability and has a specific tag
* `tag string`

`Conditional_Backstab {}` -- Execute if the damage is a backstabs

`Conditional_Frontstab {}` -- Executes if the damage comes from the front

`Conditional_IsTrample {}` -- Execure if the damage comes from trample

`Conditional_CanBeHealed {}` -- Execute if the target can be healed

`Conditional_LastHit {}` -- ABILITY Execute at the last hit of a multihit ability

`Conditional_ActiveWeather_Any {}` -- Execute if there is any active weather in the list

* `weather [Weather_Name]` -- weathers list

`Conditional_DoesDamage {}` -- Execute when the damage instance deals actual damage

`Conditional_HasCleansableDebuffs {}` -- Execute if the target has removable debuffs [TEST]

`Conditional_NotBig {}` -- Execute if target is not 2x2? [TEST]

`Conditional_Speculative {}` -- don't know [TEST] (Else can be used to not make an AI calculate outcomes (Check special_enemy_abilities.gon))

`Conditional_FinishedSpawning {}` -- Execute if the target finished spawning??? [TEST]
