## PASSIVE ACTIONS

`AddTag string` -- Adds a tag to the character

`AddHiddenTag string` -- Adds an hidden tag to the character (hidden tags are more specific tags refenced only in gon files)

`ApplyStatusesToRandomEnemiesEachTurn {}` -- Table of statuses given to random X enemies
* `count X` -- Amount of enemies

`ApplyStatusesNextTurnEnd {}` -- Table of statuses given at the end of the next turn

`AlphaStatusOnTurnBegin {}` -- Table of statuses given at turn start to the cat with alpha

`AddElementsToBasicAttack Element_Name` -- Adds a specific [element](enums.md#elements) to the basic attack

`AddStatusToBasicAttack {}` -- Table of statuses given to the basic attack

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

`AddStatusesIfPersistentWeatherElement {}` -- Table of statuses given if there is a persistent element weather
* `element [Element_Name]` -- Chosen [element](enums.md#elements) list

`AddPassivesToMinions {}` -- Table of passives applied to the target's familiars

`AddPassivesToCharmed {}` -- Table of passives applied to charmed characters

`AddPassivesToSummonAbilityMinions {}` -- Table of passives applied to familiars spawned with abilities

`AddPassiveToSpawnedRocks {}` -- Table of passives applied to spawned rocks

`ChanceToRevive {}` -- Chance to revive at the end of the round
* `stacks X` -- Chance out of 100 for it to revive (Can also be used as `ChanceToRevive X`)
* `health X%` -- Percentage of health revived with
* `statuses {}` -- Table of statuses given when revived

`StatusWhenAllySpendsMana {}` -- Table of statuses given to the character when an ally spends mana

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

`StatusOnBattleStart {}` -- Table of statuses given at the start of the battle

`StatusOnBattleEnd {}` -- Table of statuses given at the end of the battle
* `even_if_dead bool` -- Give statuses even if the cat was downed

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

`StatusOnStanceSwitch {}` -- Table of statuses given when changing monk stance

`StatusOnDealtDamage {}` -- Table of statuses given when dealing damage

`StatusOnDealtDamageThreshold {}` -- Table of statuses given when dealing over X damage
* `threshold X` -- Damage treshold
* `count_overkill bool` -- If overkill damage counts

`StatusOnEatPill {}` -- Table of statuses given when consuming a pill

`StatusOnEnemyDeath {}` -- Table of statuses given when an enemy dies

`StatusOnEnemyConfused {}` -- Table of statuses given when an enemy gets confused

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

`ConvertDamageToScaledStatus {}` -- Table of statuses given instead of the damage taken
* `stacks X` -- Max amount of damage convertable

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
* `treshold {}`
* * `STAT X` -- [Stat](enums.md#stats) and amount to check the condition for (There can be more than one)
* `passives {}` -- Table of passives

`DamageIfDidntUseSpecificAbility {}` -- Deals X damage at the end of the turn if the character didn't use a specified ability
* `ability AbilityID` -- Ability
* `damage X` -- Damage to deal

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

`SpawnThingOnDamage {}` -- Spawn objects/Characters whenever the source takes damage
* `object CharacterID` -- Character name
* `number X` -- Number of Characters
* `chance 1.0-0.0` -- chance of spawning
* `shield_only bool` -- If the character is spawned only if shield damage is taken

`GlobalSpawnOnRoundEnd {}` -- Spawns X characters on random tiles at the end of the round
* `object CharacterID` -- Character to spawn
* `number X / [X X]` -- Number or range of characters to spawn

`CreateGlobalModifiers {}` -- Sets certain global modifiers

`RemoveGlobalModifiers {}` -- Removes certain global modifiers

`ReplaceSpawnedObjects [CharacterID_old CharacterID_new]` -- Replaces all characters spawned by the source of a specific type to a new one

`ReceivedStatusReplacement [Status_Name_old Status_Name_new]` -- Replaces all statuses of a specific type applied to the source with a new one (Can work with non in-game statuses)

`RandomPassivePool {}` -- Randomly selects a passive from the table

`PassiveGroup {}` -- Treats a table of passives as one

`IgnoreTiles 1` -- Ignore tiles

`MinimumKnockbackFromPhysicalAttacks X` -- Makes the minimum knockback to all received phisical attacks X

`ExtraBasicAttacks X` -- Gives X extra basic attacks

`ExtraWeaponAttacks X` -- Gives X extra weapon attacks

`InnateElement Element_Name` -- Makes target be of a certain [element](enums.md#elements)

`ElementImmune Element_Name` -- Makes target immune to a certain [element](enums.md#elements)

`StatusImmunity [Status_Name]` -- Makes target immune to a list of statuses

`EquipTemporaryItem Item_Name` -- Gives the target a temporary item that breaks after battle

`EquipPermanentItem Item_Name` -- Gives the target an item that stays after the battle

`StatusAllCharactersOnSpawn {}` -- Table of statuses given to all characters that spawn while the source exists
`StatusAlliesOnBattleStart {}` -- Gives the specified statuses to all allies on battle start

`ConsumablesMeleeRange X` -- Increases by X the melee range of the target consumables

`BonusFoodEachBattle X` -- Gives X bonus food when winning a battle

`ConsumablesInfiniteRange 1` -- Gives the target infinite range on it's consumables

`BouncyProjectiles {}` -- Makes the target projectiles bounce X times to a Y range
* `max_bounces X` -- Max number of bouces the projectile can do
* `max_range Y` -- Max range the bouncing can happen

`SharePickups {}` -- Makes the pickups collected by the character be shared to all other party members
* `include_coins bool` -- If coins are shared as well

`SharePickupsWithSpawner 1` -- Makes the pickups collected by the character be shared to the spawner of the character

`AddStatusToFirstBasicAttack {}` -- The first basic attack of the target gives the specified statuses

`StatusDamagers {}` -- Gives the specified statuses to any character that attacks the source

`AutocastEachRound {}` -- Uses a specific ability at the end of every round
* `ability AbilityID` -- Ability to use (Can also be used as `AutocastEachRound AbilityID`)
* `even_if_stunned bool` -- If it uses the ability even if stunned
* `force_display_name bool` -- If it forces to display the name of the ability when used

`AbilityOnBattleStart AbilityID` -- Uses a specific ability at battle start

`AbilityOnBattleStart_Immediate AbilityID` -- Uses a specific ability at battle start (Before the battle is even shown)

`AbilityOnRoundEnd AbilityID` -- uses a specific ability on round end (seems redundant with Autocast)

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

`HealAlliesEachTurn {}` -- Heals each ally at the end of every turn
* `stacks X` -- Healing amount
* `mana X` -- Mana healing amount
* `exclude_self bool` -- If the source is excluded

`LateBloomer {}` -- Takes any status as optional parameter to give after X rounds 
* `stacks X` -- Number of rounds

`SizeScale 0.0-1.0` -- Changes the target's size scale

`SizeScalePercent X%` -- Changes the target's size scale by percentage

`CritsApplyStatus {}` -- When an attack crits apply the specified statuses

`AddMovement X` -- Adds X tiles to the movement range

`ReplaceBasicMove AbilityID` -- Replaces the basic move with the specified ability

`ReplaceBasicMove_Mutation AbilityID` -- Replaces the basic move with the specified ability (Will be overridden by non-mutation move replacement)

`ReplaceBasicAttack AbilityID` -- Replaces the basic attack with the specified ability

`ReplaceBasicAttack_Mutation AbilityID` -- Replaces the basic attack with the specified ability (Will be overridden by non-mutation attack replacement)

`OverrideBasicAttack AbilityID` -- Replaces the basic attack with the specified ability (It will overwrite any other attack replacement)

`ReplaceBasicAttackWhenCastable AbilityID` -- Replaces the basic attack with the specified ability when the ability is castable

`DisableAbilitiesWithTag string` -- Disables all the target's abilities that have a specified tag

`HouseFoodRequirementMultiplier X` -- Changes how much food is needed for the target's when a day passes [TEST if things other than 0 work]

`TrinketPassiveMultiplierBonus X` -- Multiplies the held trinket passive effects by X

`TrinketActiveEffectsMultiplierBonus X` -- Multiplies the held trinket active effects by X

`AlternateCraftingPools {}` -- Changes specified crafting pools with new ones
* `Pool_Name New_Pool_Name` -- Changes the Pool_Name pool with New_Pool_Name (This doesn't take into consideration tech, so if you want to change all 4 tech levels you have to specify it for each one)
* etc...

`TerminatorChase {}` -- C-800 behaviour, when the enemies use a spell it moves, and if gets in range of the enemy it uses a special ability
* `move AbilityID` -- Movement ability used
* `ability AbilityID` -- Special ability used when in range

`DepressionAura {}` -- Gives all units in a Y range X all stats down
* `stacks X` -- Amount of stats down (Can also be used as `DepressionAura X`)
* `range Y` -- Effect range (Set to `global` for global range)
* `aura_effects_allies bool` -- If this effect targets allies

`AllyBonusAbilityAura {}` -- Gives all units in a cross or square a bonus ability
* `ability AbilityID` -- Bonus ability (Can be used as `AllyBonusAbilityAura AbilityID`)
* `square bool` -- If the range is a square instead of a cross

`AllyMoveAbilityAura AbilityID` -- All adjacent unit's movement ability is replaced with a specified one

`SetBrittleImmune Itemset_Name` -- Removes brittle to items of a specific item set

`SpawnExtraThingsOnBattleStart {}` -- Spawns the specified Characters on battle start
* `object [CharacterID]` -- Character(s) to spawn
* `number X` or `[X Y]` -- Number of Characters to spawn, or range of Characters to spawn

`DamageFromBehindOnly 1` -- Makes the character ignore all attacks that aren't from the back 

`LimitDamage X` -- Limits the damage amount taken to X

`LimitHeal X` -- Limits the healing amount received to X

`OverrideMaxHealth X` -- Sets max health to X

`OverrideMaxMana X` -- Sets max mana to X

`StrictLimitDamage X` -- Damage received is capped at X

`SetSpellCosts X` -- Sets the cost of all spells to X

`ManaCostReductionTagged {}` -- Reduces the cost of all spells with a specific tag
* `tag string` -- Tag
* `reduction X / X%` -- Amount of mana to reduce

`NoHealthOnlyShield 1` -- Makes the character have only shield (This affects interactions like shield piercing attacks)

`MutateViaAbility AbilityID` -- If a mutation gets triggered, it mutates using the specified ability

`BoostHeals X` -- Boosts the target's heals by X

`BoostReceivedHealing X` -- Boosts the received heals by X

`HealAtStart X%` -- Heals X% at the start of the battle

`MoveWhenDamaged {}`
* `move_ability AbilityID` -- Ability used to move (Can also be used as `MoveWhenDamaged AbilityID`) (if not included it uses the character's base move ability)
* `weights Movement_WeightID` -- Weights used to decide where to move 

`KillsHeal X or X%` -- When killing a character, heals the damager by X if it's not a percentage, or by X% of it's max health if it's a percentage

`MulticlassLevelUp ClassID` -- Adds a class' abilities and passives to the upgrade pool

`CantSpreadDiseases 1` -- Makes `SpreadDisease` not work when used by the character

`CantCatchDiseases 1` -- Makes `SpreadDisease` not work when applied to the character

`DiesToElement {}` -- Makes the character instantly die when affected by a specific element
* `element Element_Name` -- The [element](enums.md#elements) (Can also be used as `DiesToElement Element_Name`)
* `instant bool` -- If the death is instant

`FadeInsteadOfDie 1` -- Makes the character fade out when dying

`ExpireOnSpawnerTurnEnd 1` -- Makes the character die when the turn of the spawner character ends

`MimicSpawnerAttacks 1` -- Makes the character's basic attack the one of it's spawner

`ReflectProjectiles X%` -- Gives X chance to reflect incoming projectiles

`ReflectProjectiles {}` -- Reflects incoming projectiles dealing X damage to itself
* `self_damage X` -- Damage dealt

`AutoEquipConsumables 1` -- Automatically equips consumables from the adventure inventory when the consumable slot is empty

`CopyPassiveSlot 0-3` -- Copies the effects of the passive in a specified slot (2-3 are the disorders)

`FurnitureStats {}` -- When the cat returns home it will give these house stats when present
* `Comfort X`
* `Stimulation X`
* `Appeal X`
* `Health X`
* `Evolution X`

`Robot {}` -- Makes the character metal, conductive and energized when hit by electric damage
* `allow_energize_self bool` -- If it can get energized even with it's own electric attacks (If false can be used as `Robot 1`)

`Phasing 1` -- Makes the characters be able to pass through characters and objects

`ReplaceBrain {}` -- Replaces the [ai](character_formatting.md#character-ai) of the character with a new one

`DamageNeighborsOnEndMove {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) applied to characters who end their movements adjacent to the source or vice versa

`BloatEyePassive2 AbilityID` -- Makes the character use a specified ability whenever any character takes an action, targetting them if enemies

`RandomWeatherEachFight [WeatherID]` -- Picks a random weather to apply at battle start

`LoopingSoundWhileAlive SoundID` -- Plays a looping sound while the character is alive

`SetDefaultFacePassive FaceID` -- Changes the default face of the cat with the specified one

`CharacterLightSource {}` -- Makes the character cast a light
* `color [float float float]` -- Color of the light in rgb
* `size float` -- Size of the light [TEST glow]

`FormChangeWhileHasStatus {}` -- (FORMCHANGER) Changes the character form based on if it has a specified status
* `status Status_Name` -- Status
* `form_has` -- Form to change to if it has the status
* `form_hasnot`  -- Form to change to if it doesn't have the status

`FormChangeWhilePrimingAbility` -- (FORMCHANGER) Changes the form while (any) ability is primed (TEST)

`AbilityInheritsWeaponEffects X` -- (ABILITY) The ability inherits the equipped weapon effects multiplied by X 

`DownRankAIIfWeaponUsable float` -- (ABILITY) sets the ability ai chance to the specified flaotif the character's weapon is usable

`AbilityEnabledOncePerFightAtHealthThreshold X% `-- (ABILITY) Enables the ability once after reaching X% health

`CopyCatPassive_Initializer X` -- (ABILITY) Copy cat ability effect

`CopyBasicAttackEffects 1` -- (ABILITY) Copies the basic attack effects

`CatchBoomerang 1` -- (ABILITY) Catches the boomerang projectile

`FinalBossBecomeTheChild {}` -- If this entity is called on to transform into the Child entity, do the following

`FaceLastDamage {}` -- Face the last entity that damaged you
* `use_turn_animations` -- Use a animation with the turnF or turnB if possible (check names)
---

## EFFECT STATUSES

>[!NOTE]
>These statuses can be given as parameter a list of an integer and a float [X Y] where X = status stacks Y = chance of applying

* `Shield X`
* `Burn X`
* `Bleed X`
* `Stun X`  
* `Slow X`
* `Immobile X`
* `Freeze X`
* `Hex X`  
* `Weakness X`
* `Poison X`
* `Leeches X`
* `Madness X`
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

>[!NOTE]
>These statuses can be given as parameters negative numbers for debuffs

* `PermanentSTATNAMELONG X` [(Stats list)](enums.md#stats)
* `STATNAMELONGUp X` [(Stats list)](enums.md#stats)
* `TempSTATNAMELONGUp X` [(Stats list)](enums.md#stats)
* `AllStatsUp X`
* `RandomPermanentStat X`
* `DamageUp X`
* `SpellDamageUp X`
* `RangeUp X`
* `TempRangeUp X`
* `TempDamageUp X`
* `TempSpellDamageUp X`

`ApplyPassives {}` -- Table of passive effects to add to the target

`TimeDelayStatusApplication {delay N}` -- Effects within this table aren't triggered until a certain amount of time.

`Die 1` -- Target dies  

`SafeDie 1` -- Dies without injury

`VaporizeInanimate 1` -- Destroys a character if it's an inanimate object

`FullHeal 1` -- Heals the target to full

`FillMana 1` -- Fully fills the target's mana

`NoStartingMana 1` -- Starts with 0 mana

`NoHealthRegen 1` -- Doesn't regenerate health at the end of the round

`NoManaRegen 1` -- Doesn't regenerate mana at the end of the turn

`TempNoManaRegen 1` -- Doesn't regenerate mana at the end of the turn, removed after the turn ends

`SpawnFlames 1 / [1 float]` -- Spawns fire, chance can be specified with a float

`SpawnCreep 1` -- Spawns creep tile

`PurgeAll 1` -- Removes all buffs and debuffs from the target

`AllyInfested {}` -- Applies a special type of infested, spawning a specific character type and in a specific faction
* `object CharacterID` -- Character to spawn
* `faction Faction_Name` -- [Faction](enums.md#factions) of the spawned character

`Infested X` -- Applies a special type of infested, spawning a character of the same type of the one who applied it

`RandomMagicMissile X` -- Spawns X 1 damage sparks targetting the source's enemies

`RandomMagicMissile {}` -- Spawns X sparks targetting the source's enemies
* `stacks X` -- Number of sparks
* `full_size bool` -- true = 3 damage, false = 1 damage

`EvolveAbilityFromPool {}` -- ABILITY Permanently changes the ability to one from the specified class pool [TEST if works with custom pools]
* `pool Class_Name` -- Class pool (Can also be just `Class` to use the target class) (Can also be used as `EvolveabilityFromPool Class_Name`)
* `upgraded bool` -- If it's the upgraded version

`BounceObject {}` -- Spawns a specified Character bouncing it from the source
* `obj CharacterID` -- Character to spawn (Can also be used as `BounceObject CharacterID`)
* `slide X` -- How many tiles it slides for after spawning
* `chance float` -- Chance of it spawning (0-1)

`ObjectOnHitCharacter {}` -- Spawns X specified Characters from the target
* `object CharacterID` -- Character (Can also be used as `ObjectOnHitCharacter CharacterID`)
* `stacks X` -- Number of Characters

`FindItemFromPool Item_Pool_Name` -- Gives an item from a specified pool

`RefreshMovePoints N` -- Refreshes N movement points  

`TransformBasicAttack AbilityID` -- Transform the target basic attack to a chosen ability  

`TransformAbility AbilityID` -- ABILITY Transform the current ability into a chosen ability  

`BodyGuard {}` -- When an ally is damaged take their place using a specific ability
* `stacks X` -- Status amount
* `ability AbilityID` -- Ability used

`OverrideDamage X` -- overrides the damage dealt with X

`IgnoreDamage 1` -- Ignores the damage dealt

`Counterspell 1` -- Counters the next played enemy spell, stopping it

`BonusCritChance X` -- Gives X crit chance to the damage

`CastAgain X` -- casts the ability another X times

`UseAbility AbilityID` -- Makes the character use a specific ability  

`UseAbility_NonStack AbilityID` -- Makes the character use a specific ability (Applying it multiple times won't stack the effect)  

`ForceUseAbility AbilityID` -- Forces the character to use a specific ability  

`ImmediateUseAbility_Instant AbilityID` -- Makes the character use a specific ability instantly

`MoveAndUseAbilityEachTurnBeginIfPossible AbilityID` -- Makes the character move and use a specified ability at the start of every turn if possible

`UseMoveAbilityWithAI {}` -- Uses a specified move ability with a different ai
* `ability AbilityID` -- Ability to use
* `move_weights Movement_WeightID` -- Movement weight to use

`AbilityWhenTaggedCharacterMovesNear {}` -- Makes the character use a specified ability targetting characters with a specified tag when they move in range
* `ability AbilityID` -- Ability to use
* `tag string` -- Tag
* `range X` -- Tile range

`UseRandomSpell_Madness 1` -- Makes the character use one of it's spells at random using madness targetting

`RerollEnemy 1` -- Rerolls the target to a random chapter enemy  

`RepairOnKill X` -- Repair used item by X when it kills  

`EndTurn 1` -- Ends the turn

`StealTurn 1` -- Removes the target's next turn and gives it to the source

`TakeExtraTurn X` -- Target takes X extra turn(s)

`TakeExtraTurnEndOfRound 1` -- Takes an extra turn at the end of the round

`AlliesTakeExtraTurn 1` -- Makes the take an extra turn if it's an ally

`TakeBonusTurnWithStatus {}` -- Takes an extra turn with a specified table of statuses

`TakeBonusTurnWithAIControl {}` -- Takes an extra turn with ai control
* `end_of_round bool` -- If the extra turn is at the end of the round
* `include_spells bool` -- If the ai can use spells

`SpecificInjury Injury_Name` -- Gives the target a specific injury

`RandomInjury X` -- Gives the target X random injury [TEST]

`AddRandomEliteBuff X` -- Gives the target X random elite buffs (Doesn't work in conditionals)

`HealthGain X` -- Heals by X  

`ManaGain X` -- Gives X mana

`PercentHeal X` -- Heals by X percent of the max health

`HealAndOverhealToShield X` Heals by X and turns overheals into shield

`BramblesOnHit 1` -- Spawns brambles on the targetted tile

`FlowersOnHit 1` -- Spawns flowers on the targetted tile

`SpawnBearTrap 1` -- Spawns a bear trap on the targetted tile

`SpawnCustomTrap MovieClip` -- Spawns a custom trap that takes the damage instance properties and effects with a specified movieclip (Check out tiles.swf for existing trap movieclips)

`Revive 0-100%` -- Revive the target at a health percentage

`ChangeTile Tile_Name` -- Changes the targeted tile to the selected [tile](enums.md#tiles)  

`CollectsPickups 1` -- Collects targeted pickups  

`ShareHealthRegen 1` -- Shares health regen with allies  

`CurrentWeaponDamageUp X` -- Gives X damage up to the current held weapon  

`ForceAttack 1` -- Forces target to attack  

`CharmedForceAttack 1` -- Makes the target automatically attack targetting the source's enemies

`RandomStatUp X` -- Gives X random stats up  

`RandomMutation X` -- Gives X random mutations

`RandomTaggedMutation string` -- Gives a random mutation that has the specified tag

`UndoDamage X` -- Undo last X damages taken by the target 

`Rebuke X` -- Deal damage to the target equal to X * the damage that unit last dealt  

`DamageOrHealConditionally 1` -- Makes the ability heal allies and damage enemies  

`ContextualHeal 1` -- Makes the ability heal allies and damage enemies [TEST might be in a different context]  

`IgnoreSelf 1` -- Effects and damage don't get applied to the source  

`IgnoreDebuffs 1` -- Debuffs given are not applied

`Leech X` -- Damage dealt heals the source times X

`FlatLeech X` -- Source heals X hp, targets gets damaged for X  

`PullSourceToKnockbackImmuneTarget 1` -- When knockback is dealt, if the target is immune to it pull the source to it  

`SpawnThingIfHitKills CharacterID` -- Spawns a specified character when the target is killed  

`GlobalSpawnCharacter` -- Spawns a character in some sort of global sense (used to spawn MegaGuppy)

`ScrambleLastUsedSpell {}` -- Replaces the last used spell with a random one
* `permanent bool` -- If the effect is permanent

`Metronome 1` -- Cast random spell [TEST if changing 1 does something]  

`GainCoinsRange {}` -- Character gains a random amount of coins in a range
* `min X` -- Minimum range
* `max X` -- Maximum range

`CollectsPickupsWithAltEffects {}` -- Gives the source the specified statuses for every pickup collected by the ability, replaces the pickup effects

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

`Temporary {}` -- Gives a temporary status for a select amount of turns
* `status Status_Name/Passive_Name` -- Status or Passive name
* `data Any` -- Data of the status/passive
* `stacks X` -- Stacks amount of the temporary status/passive
* `turns X` -- Turns the status/passive remains
* `expires_on_begin_turn bool` -- If it counts down as soon as the next target turn begine
* `expires_on_end_turn bool` -- If it counts down as soon as the target turn ends

`ApplyToRandomClosestAlly {}` -- Table of statuses applied to a random closest ally

`ApplyToRandomPartyMemberIfPossible {}` -- Table of statuses applied to a random party member, if there is no other party member the statuses are applied to the source

`ApplyToSource {}` -- Use to switch to source in targeted effects

`ApplyToSourceOnKill {}` -- (DAMAGE_INSTANCE) Table of statuses given to the source if it kills 

`ApplyToOthersWithSharedTagAndFaction {}` -- Table of statuses given to all other characters that share the same tag and faction as the source

`ApplyToTile {}` -- Table of statuses applied to the status itself

`ApplyToConsumed {}` -- Table of statuses given to the consumed character

`ApplyMultipleTimes {}` -- Table of statuses given X times
* `stacks X` -- Times to give statuses

`ApplyStatusesNextTurnBegin {}` -- Table of statuses given at the start of the next turn

`Imprison CharacterID` -- Creates specified Characters around the target

`Cleanse 0 or 1` -- Removes all debuffs on the target (1 makes it so it also gives 1 holy shield for every type of debuff)

`NextAttackBonusRange X` -- Gives next attack bonus range

`ManaSteal X` -- Source steals X mana from the target

`ReduceManaCost X` -- Reduces mana cost by X

`ReduceManaCostExcludeBrainstorm X` -- Reduces mana cost by X excluding the brainstorm ability [TEST]

`MaxStartingMana 1` -- Makes the character start with max mana

`NextAttackSpecialCrit {}` -- Gamble ability stuff [TEST]
* `extra_coins_per_stack X` -- Gives X extra coins
* `crit_multiplier_bonus X` -- Gives X extra mult critical chance for the next attack
* `luck_increase X` -- [TEST if it's not only luck]

`FaceAway 1` -- Makes the target face away

`LeaveBehind {}` -- Spawns behind the specified character
* `object CharacterID` -- Character
        
`ReviveNextRound {}` -- Revives the target after X rounds (takes any status as optional parameter for when the character is revived)
* `stacks X` -- Rounds it takes to revive (Can also be used as `ReviveNextRound X`)
* `revive_health Y%` -- Health the target is revived with

`DontHealEnemies 1` -- Prevents the damage instance heal from applying to enemies

`Displace X` -- Displaces the target by X tiles

`RandomDistanceDisplace {}` -- Displaces the target by a random distance
* `stacks X` -- Max distance
* `min_dist X` -- Minimum distance

`NextActionLuckUp X` -- [TEST if it's not only LuckUp]

`RefreshItemAbilities X` -- Refreshes the target's item abilities

`PoolMetronome {}` -- Casts a random specified ability
* `pool [AbilityID]` -- Ability list

`DoDamage {}` -- Creates a [damage instance](ability_fields.md#damage_instance--self_damage) targetting the target

`Tangled {}` -- Tangles the target
* `stacks X` -- Tangled amount (Can also be used as `Tangled X`)
* `alt_art MotionClip_Name` -- Motion clip to replac ethe default tangled art

`KnockbackIfCrit {}` -- Give X knockback to the target if the attack crits
* `knockback X` -- Amount of knockback
* `override_chain_knockback Y` -- Override chain knockback given with Y

`KnockUpAndAway {}` -- Knocks the target away throwing it in the air [TEST]
* `stacks X` -- [TEST]
* `distance X` -- Knockback distance
* `displace true` -- [TEST]
* `self_damage false` -- [TEST]

`RandomStatusFromPool {}` -- Gives a random specified status effect (ignores run seed)

`ScatterCoins {}` -- Scatters X coins around
* `stacks X`-- Amount of coins
* `stackable bool` -- If they can stack together

`EnableWeather Weather_Name` -- Starts a specified weather

`PlayBackground X` -- Plays X backgrounds. (TEST to see if anything outside of 1 is a option)

`InsertIntoBackgroundPlaceholder` -- Inserts a character within battle into the background (TEST)

`FinalBossPupils {}` -- These values seem to be hardcoded (TEST for changing anim)
* `radius X`
* `virtual_head_position []` -- seems to be eye, head, eye
* `look_at_offset []` -- predceeing followings
* `teleport_tracking_halflife X` -- float
* `reset_center_because_of_animation_halflife X` -- float
* `reset_center_because_no_target_halflife X` -- float
* `tracking_acquisition_halflife X` -- float

`DoDistortionRing {}` -- Creates a visual distorted ring effect (Like gravity slam/zaratana) 
* `speed X`
* `intensity X`
* `radius X`

`DoScreenShake {}` -- Creates a screen shake effect
* `time X`
* `intensity X`

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

`Craft {}` -- Creates an item in a specific slot from a specific pool
* `pool Item_Pool` -- The item pool 
* `slot Item_Slot` -- [Item slot](enums#item-slots)
* `works_with_tech bool` -- If the crafting is influenced by tech (searches Item_Pool_X, where X is the amount of tech)
* `temporary bool` -- If the crafted item lasts only for the current battle

`RemoveStatusStacks {}` -- Removes X stacks of a specified status
* `status Status_Name`-- Status
* `stacks X` -- Stacks

`RemoveStatus Status_Name` -- Removes a specified status

`ForceTransferWeapon 1` -- Forces the source's weapon to go to the target

`BackflipWhenTargeted {}` -- Gives X backflips using a specified ability for the backflip
* `stacks X` -- Amount (Can also be used as `BackflipWhenTargeted X`)
* `ability AbilityID` -- Ability used to backflip

`NextBattleStatus {}` -- Table of statuses to give at the start of the next battle

`FlippedFacingForceAttack 1` -- Flips direction and force attacks

`GainDisorderFromPool_PostCast Pool_name` -- Gives a random disorder from a pool

`LateStatusApplication {}` -- Table of statuses to apply later in the status evaluation

`Instakill X` -- Instakills non boss units, and deals X damage to bosses

`MonkStanceSwitch 1` -- Switches the monk stance of the target [TEST]

`ExplosionIfHitSomething X` -- Creates an explosion that deals X damage if something is hit

`DestroyNeckArmor 1` -- Destroys the neck item if it exists

`DestroyFaceArmor 1` -- Destroys the face item if it exists

`DestroyTrinket 1` -- Destroys the trinket item if it exists

`DestroyWeapon 1` -- Destroys the weapon item if it exists

`DestroyWeaponThrow 1` -- Destroys the thrown weapon

`DamageWeapon X` -- Damages the weapon by X

`RemoveItem Item_Name` -- Removes a specific item from the target's inventory

`TeamCastAbility {}` -- Makes all of the targe's team cast an ability
* `ability AbilityID` -- Ability to cast (Can also be used as `TeamCastAbility AbilityID`)
* `tag_restriction string` -- Tag required by the character to cast the ability
* `same_orentation bool` -- If the character uses the same orentation of the original caster

`UpgradeRandomAbility 1` -- Upgrades a random ability temporarily

`PermanentUpgradeRandomActive X` -- Upgrades permanently X random abilities

`PermanentUpgradeRandomActiveOrPassive X` -- Upgrades permanently X random abilities or passives

`RevengeDamage {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) targetting characters who damage the source

`MeleeRevengeDamage {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) targetting characters who deal melee damage to the source

`IncreaseExplosionSize X` -- Increases the source's explosions size by X

`IncreaseExplosionDamage X` -- Increases the source's explosions damage by X

`ExplosionImmunity 1` -- Gives explosion damage immunity

`ChanceToBreak 0-100` -- (ITEM) Breaks the used item with an X chance

`IncreaseItemAuxOnKill X` -- (ITEM) Increases the item aux by X when it kills

`TauntAlways 1` -- Gives constatly the taunt effect (Enemies will prioritize the source)

`ChangeTauntPriority X` -- Positive numbers will make the source more targetted, negative numbers will make the source less likely to be targetted

`ForceMoveTowards 1` -- Makes the target move towards the source

`ForceMoveTowardsEnemies 1 or AbilityID` -- Makes the target move towards it's enemies, can be given an AbilityID as input to use a different movement ability

`ForceMoveTowardsTaggedObject {}` -- Makes the target move towers objects with a specific tag
* `ability AbilityID` -- Movement ability used
* `tag string` -- Specified tag

`ForceMoveNonAlliesInRangeTowardsTile X` -- Makes a non-allied unit move to a targeted tile in range, using their basic move action. X is the aoe effect of this. 

`RefreshOncePerFightAbilities 1` -- Refreshes all abilities/items with once per fight restrictions

`SpreadDisease {}` -- Gives a specified passive (with a popup) as a disease
* `disease PassiveID` -- Passive to give
* `chance X%` -- Chance of it being spread
* `can_apply_to_anything bool` -- If it can spread to any kind of unit and not only player cats

`PopAndSpawn {}` -- Destroys this character and spawns another
* `object CharacterID` -- New character to spawn (Can also be used as `PopAndSpawn CharacterID`)
* `no_splatter bool` -- If the destroyed character doesn't show any splatter
* `clone_referenced_catdata bool` -- If the cat data is passed from the source character to the spawned character
* `clone_items bool` -- If the spawned character clones the items from the source character

`AfterImage CharacterID` -- Whenever the character moves or is moved, spawns a specified character on the tile it moved from

`LimitedTileTrail Tile_Name` -- Whenever the character moves or is moved, creates a specified [tile](enums.md#tiles) on the tile it moved from

`SwapHighestAndLowestStat 1` -- Swaps the highest and lowest stats (takes into consideration stat statuses)

`QuakeAreaChance {}` -- Triggers stalagmites to falls
* `radius X` -- Tile range
* `chance X%` -- Chance of the stalagmites falling

`SwitchMusic {}` -- Changes the currently playing music
* `new_song SongID` -- ID of the song to use (put `same` to keep the current song)
* `new_layer LayerID` -- ID of the layer of the song to pick [map, event, battle, boss]

`SetDefaultFace FaceID` -- Changes the default face of the cat with the specified one

`ParticleBurst ParticleID` -- Plays the specified particles

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
