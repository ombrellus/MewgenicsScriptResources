## PASSIVE ACTIONS

`OverrideBasicAttack Ability_Name` -- Replaces the basic attack of the character with the chosen ability

`AddStatusToBasicAttack {}` -- Table of statuses given to the basic attack

`AddStatusToFirstBasicAttack {}`

`AddSelfStatusToBasicAttack {}` -- Table of statuses given to the basic attack that get applied to the source

`AddStatusToAllDamage {}` -- Table of statuses given to all damages coming from the target

`AddStatusToFirstSpellEachTurn {}` -- Table of statuses given to the first spell used each turn

`AddStatusToTrampleDamage {}` -- Table of statuses given to the trample damage

`AddStatusToBasicMeleeAttack {}` -- Table of statuses given to the basic attack when melee

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

`AddStatusToWeapons {}` -- Table of statuses given to weapons

`AddStatusesIfPersistentWeatherElement {}` -- Table of statuses given if there is a persistent element weather
* `element [Element_Name]` -- Chosen [element](enums.md#elements) list

`ChanceToRevive 0-100` -- Chance to revive at the end of the round

`StatusWhenAllySpendsMana {}`

`ExtraStatusWhenDealingDamage {}`

`StatusWhenStatusCompletelyRemoved {}`
* `status Status_Name`

`StatusEachTurnEnd {}` -- Table of statuses given at the end of each turn

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

`PassiveIfWeaponIsUsable {}` -- (ITEM) executes the passives if the weapon is usable

`PassiveLevelUpAtCombatEnd X` -- Levels up spell by X when a battle ends

`PassiveLevelScaledStatus {}` -- Applies the specified passives, inside the block "X" is the level of the passive

`PassiveWhenTheAlpha {}` -- Applies the specific passives when the target is the alpha

`PassiveIfAllArmorEmpty {}` -- Table of passives executed while the target has all it's armor slots empty

`PassiveIfEmptyFace {}` -- Table of passives executed while the target has no face armor

`PassiveIfEmptyNeck {}` -- Table of passives executed while the target has no neck armor

`PassiveIfEmptyHead {}` -- Table of passives executed while the target has no head armor

`PassiveWhileNotHasStatus {}` -- Applies the specifies passives when the target doesn't have the specified status
* `status Status_Name` -- The status
* `passives {}` -- Table of passives

`PassiveAtHealthThreshold {}` -- Appliest the specified passives when the target health matches the condition
* `threshold X` -- The threshold amount
* `mode Threshold_Mode` -- How the condition is calculated [equal, less, greater, less_or_equal, greater_or_equal]
* `passives {}` -- Table of passives

`SpawnOnBattleStart {}` -- Spawns X Characters on battle start
* `object Character_Name` -- Character (Can also be used as `SpawnOnBattleStart Character_Name`)
* `number X` -- Number of Characters

`SpawnThingOnDamage {}` -- Spawn objects/Characters whenever the source takes damage
* `object Character_Name` -- Character name
* `number X` -- Number of Characters
* `chance 1.0-0.0` -- chance of spawning

`RandomPassivePool {}` -- Randomly selects a passive from the table

`PassiveGroup {}` -- Treats a table of passives as one

`IgnoreTiles 1` -- Ignore tiles

`ExtraWeaponAttacks X` -- Gives X extra weapon attacks

`ElementImmune Element_Name` -- Makes target immune to a certain [Element](enums.md#elements)

`StatusImmunity [Status_Name]` -- Makes target immune to a list of statuses

`EquipTemporaryItem Item_Name` -- Gives the target a temporary item that breaks after battle

`EquipPermanentItem Item_Name` -- Gives the target an item that stays after the battle

`StatusAllCharactersOnSpawn {}` -- Table of statuses given to all characters when the source spawns

`StatusAlliesOnBattleStart {}` -- Gives the specified statuses to all allies on battle start

`ConsumablesMeleeRange X` -- Increases by X the melee range of the target consumables

`BonusFoodEachBattle X` -- Gives X bonus food when winning a battle

`ConsumablesInfiniteRange 1` -- Gives the target infinite range on it's consumables

`BouncyProjectiles {}` -- Makes the target projectiles bounce X times to a Y range
* `max_bounces X` -- Max number of bouces the projectile can do
* `max_range Y` -- Max range the bouncing can happen

`AddStatusToFirstBasicAttack {}` -- The first basic attack of the target gives the specified statuses

`StatusDamagers {}` -- Gives the specified statuses to any character that attacks the source

`MovementReaction {}` -- Uses a specific ability when someone moves near the target
* `ability Ability_Name` -- Ability Name
* `enemies_only bool` -- If it reacts to only enemies
* `on_self_move_too bool` -- If it reacts when you move as well
* `create_temp_ability bool` -- i don't know

`AbilityReaction {}` -- Uses a specified ability when the source is hit (ImmediateAbilityReaction can be used for enemies)
* `ability [Ability_Name]` -- Specified ability, if given a list it will choose one (Can also be used as `AbilityReaction [Ability_Name]`)
* `backstabs_only bool` -- If it reacts only when backstabbed
* `ability_damage_only bool` -- If it reacts only when hit with a damaging attack
* `match_knockback_direction bool` -- If the reaction ability follows the direction of the knockback given by the damaging attack
* `cancel_knockback bool` -- If it cancels the knockback given by the damaging attack
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
* `ability Ability_Name` -- Ability (Can also be used as `DeathRattle Ability_Name`)
* `pop_corpse bool` -- If the corpse should be destroyed
* `is_dying_animation bool` -- If the animation is the dying animation
* `immediate bool` -- If it should be done instantly upon death
* `cancel_knockback bool` -- If it cancels received knockback
* `target_killer bool` -- If the target should target the killer if possible
* `must_target_killer bool` -- If the target must target the killer

`DeathRattleRevive {}` -- When the target dies it revives and uses the specified ability
* `ability Ability_Name` -- Ability (Can also be used as `DeathRattleRevive Ability_Name`)
* `even_if_stunned bool` -- If it can be used when stunned

`CaveFamilyEnrage {}` -- Cast ability when X or less other Characters with tag are alive [TEST]
* `ability Ability_Name` -- Ability to cast
* `tag Tag_Name` -- Tag
* `count X` -- Character count

`LateBloomer {}` -- Takes any status as optional parameter to give after X rounds 
* `stacks X` -- Number of rounds

`SizeScale 0.0-1.0` -- Changes the target's size scale

`SizeScalePercent X%` -- Changes the target's size scale by percentage

`CritsApplyStatus {}` -- When an attack crits apply the specified statuses

`AddMovement X` -- Adds X tiles to the movement range

`ReplaceBasicAttackWhenCastable Ability_Name` -- Replaces the basic attack with the specified ability when the ability is castable

`DisableAbilitiesWithTag Tag_Name` -- Disables all the target's abilities that have a specified tag

`AbilityEnabledOncePerFightAtHealthThreshold X% `-- (ABILITY) Enables the ability once after reaching X% health

`HouseFoodRequirementMultiplier X` -- Changes how much food is needed for the target's when a day passes [TEST if things other than 0 work]

`AlternateCraftingPools {}` -- Changes specified crafting pools with new ones
* `Pool_Name New_Pool_Name` -- Changes the Pool_Name pool with New_Pool_Name (This doesn't take into consideration tech, so if you want to change all 4 tech levels you have to specify it for each one)
* etc...

`TerminatorChase {}` -- C-800 behaviour, when the enemies use a spell it moves, and if gets in range of the enemy it uses a special ability
* `move Ability_Name` -- Movement ability used
* `ability Ability_Name` -- Special ability used when in range

`DepressionAura {}` -- Gives all units in a Y range X all stats down
* `stacks X` -- Amount of stats down (Can also be used as `DepressionAura X`)
* `range Y` -- Effect range (Set to `global` for global range)
* `aura_effects_allies bool` -- If this effect targets allies

`SetBrittleImmune Itemset_Name` -- Removes brittle to items of a specific item set

`SpawnExtraThingsOnBattleStart {}` -- Spawns the specified Characters on battle start
* `object [Character_Name]` -- Character(s) to spawn
* `number X` or `[X Y]` -- Number of Characters to spawn, or range of Characters to spawn

`DamageFromBehindOnly 1` -- Makes the character ignore all attacks that aren't from the back 

`LimitDamage X` -- Limits the damage amount taken to X

`LimitHeal X` -- Limiys the healing amount received to X

`NoHealthOnlyShield 1` -- Makes the character have only shield (This affects interactions like shield piercing attacks)

`MutateViaAbility Ability_Name` -- If a mutation gets triggered, it mutates using the specified ability

`BoostHeals X` -- Boosts the target's heals by X

`HealAtStart X%` -- Heals X% at the start of the battle

`MoveWhenDamaged {}`
* `move_ability Ability_Name` -- Ability used to move (Can also be used as `MoveWhenDamaged Ability_Name`) (if not included it uses the character's base move ability)
* `weights Movement_Weight_Name` -- Weights used to decide where to move 

`AbilityInheritsWeaponEffects X` -- (ABILITY) The ability inherits the equipped weapon effects multiplied by X 

`KillsHeal X or X%` -- When killing a character, heals the damager by X if it's not a percentage, or by X% of it's max health if it's a percentage

---

## EFFECT STATUSES

>[!NOTE]
>These statuses also work as passives  
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
* `Leeches X`
* `Madness X`
* `SafeDoomed X`
* `Bruise X`
* `Thorns X`
* `BleedThorns X`
* `Brace X`
* `Cleave X`
* `Tech X`
* `Trample X`
* `HealthRegenUp X`
* `TempInjuryImmunity X`
* `TempManaCostReduction X`
* `TempBasicAttackBonusAOE X`
* `InjuryImmunity X`
* `AlphaCat X`
* `Charmed X`
* `DoubleCastSpell X`
* `CritChanceUp X` -- X is each percentage point
* `DodgeChance_Status X` -- X is each percentage point
* `ExtraBasicAttacks_Status X`

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

`Die 1` -- Target dies  

`FullHeal 1` -- Heals the target to full

`FillMana 1` -- Fully fills the target's mana

`SpawnFlames 1` -- Spawns fire

`SpawnCreep 1` -- Spawns creep tile

`PurgeAll 1` -- Removes all buffs and debuffs from the target

`RandomMagicMissile X` -- Spawns X 1 damage sparks targetting the source's enemies

`RandomMagicMissile {}` -- Spawns X sparks targetting the source's enemies
* `stacks X` -- Number of sparks
* `full_size bool` -- true = 3 damage, false = 1 damage

`EvolveAbilityFromPool {}` -- ABILITY Permanently changes the ability to one from the specified class pool [TEST if works with custom pools]
* `pool Class_Name` -- Class pool (Can also be just `Class` to use the target class) (Can also be used as `EvolveabilityFromPool Class_Name`)
* `upgraded bool` -- If it's the upgraded version

`ObjectOnHitCharacter {}` -- Spawns X specified Characters from the target
* `object Character_Name` -- Character (Can also be used as `ObjectOnHitCharacter Character_Name`)
* `stacks X` -- Number of Characters

`FindItemFromPool Item_Pool_Name` -- Gives an item from a specified pool

`RefreshMovePoints N` -- Refreshes N movement points  

`TransformBasicAttack Ability_Name` -- Transform the target basic attack to a chosen ability  

`TransformAbility Ability_Name` -- ABILITY Transform the current ability into a chosen ability  

`OverrideDamage X` -- ABILITY overrides the ability's damage with X

`CastAgain X` -- ABILITY casts the ability another X times

`UseAbility Ability_Name` -- Makes the target use a specific ability  

`UseAbility_NonStack Ability_Name` -- Makes the target use a specific ability (Applying it multiple times won't stack the effect)  

`ForceUseAbility Ability_Name` -- Forces the target to use a specific ability  

`ImmediateUseAbility_Instant Ability_name` -- Makes the target use a specific ability instantly

`RerollEnemy 1` -- Rerolls the target to a random chapter enemy  

`RepairOnKill X` -- Repair used item by X when it kills  

`TakeExtraTurn X` -- Target takes X extra turn(s)

`SpecificInjury Injury_Name` -- Gives the target a specific injury

`RandomInjury X` -- Gives the target X random injury [TEST]

`HealthGain X` -- Heals the source by X  

`ManaGain X` -- Gives the source X mana

`PercentHeal X` -- Heals by X percent of the max health

`BramblesOnHit 1` -- Spawns brambles on the targetted tile

`FlowersOnHit 1` -- Spawns flowers on the targetted tile

`SpawnBearTrap 1` -- Spawns a bear trap on the targetted tile

`Revive 0-100%` -- Revive the target at a health percentage

`ChangeTile Tile_Name` -- Changes the targeted tile to the selected tile  

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

`Leech X` -- Damage dealt heals the source times X

`FlatLeech X` -- Source heals X hp, targets gets damaged for X  

`PullSourceToKnockbackImmuneTarget 1` -- When knockback is dealt, if the target is immune to it pull the source to it  

`SpawnThingIfHitKills Character_Name` -- Spawns a specified character when the target is killed  

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

`Temporary {}` -- Gives a temporary status for a select amount of turns
* `status Status_Name` -- Status name
* `stacks X` -- Stacks amount of the temporary status
* `turns X` -- Turns the status remains
* `expires_on_begin_turn bool` -- If it expires as soon as the next target turn begine
* `expires_on_end_turn bool` -- If it expires as soon as the target turn ends

`ApplyToSource {}` -- Use to switch to source in targeted effects

`Imprison Character_Name` -- Creates specified Characters around the target

`Cleanse 0 or 1` -- Removes all debuffs on the target (1 makes it so it also gives 1 holy shield for every type of debuff)

`NextAttackBonusRange X` -- Gives next attack bonus range

`ManaSteal X` -- Source steals X mana from the target

`ReduceManaCost X` -- Reduces mana cost by X

`ReduceManaCostExcludeBrainstorm X` -- Reduces mana cost by X excluding the brainstorm ability [TEST]

`NextAttackSpecialCrit {}` -- Gamble ability stuff [TEST]
* `extra_coins_per_stack X` -- Gives X extra coins
* `crit_multiplier_bonus X` -- Gives X extra mult critical chance for the next attack
* `luck_increase X` -- [TEST if it's not only luck]

`FaceAway 1` -- Makes the target face away

`LeaveBehind {}` -- Spawns behind the specified character
* `object Character_Name` -- Character
        
`SafeDie 1` -- Dies without injury

`ReviveNextRound {}` -- Revives the target after X rounds (takes any status as optional parameter for when the character is revived)
* `stacks X` -- Rounds it takes to revive (Can also be used as `ReviveNextRound X`)
* `revive_health Y%` -- Health the target is revived with

`DontHealEnemies 1` -- Prevents the damage instance heal from applying to enemies

`Displace X` -- Displaces the target by X tiles

`NextActionLuckUp X` -- [TEST if it's not only LuckUp]

`RefreshItemAbilities X` -- Refreshes the target's item abilities

`PoolMetronome {}` -- Casts a random specified ability
* `pool [Ability_Name]` -- Ability list
            
`EndTurn 1` -- Ends the turn

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

`AlliesTakeExtraTurn 1` -- Makes the take an extra turn if it's an ally

`RandomStatusFromPool {}` -- Gives a random specified status effect

`ScatterCoins {}` -- Scatters X coins around
* `stacks X`-- Amount of coins
* `stackable bool` -- If they can stack together

`EnableWeather Weather_Name` -- Starts a specified weather

`DoDistortionRing {}` -- Creates a visual distorted ring effect (Like gravity slam/zaratana) 
* `speed X`
* `intensity X`
* `radius X`

`DoScreenShake {}` -- Creates a screen shake effect
* `time X`
* `intensity X`

`VisualFX FX_Name` -- Shows a visual effect on the target

`VisualFXTile FX_Name` -- Shows a visual effect on the target's tile

`SetHealth X%` -- Sets the target's health to X%

`FormChange Form_Name` -- Changes the target's form to Form_Name

`RemoveMovePoints 1` -- Removes a movement point from the target

`RemoveActPoints 1` -- Removes an act point from the target 

`RefreshMovePoints 1` -- Refreshes a movement point for the target

`RefreshActPoints 1` -- Refreshes an act point for the target

`RefreshMovePointsIfHit 1` -- Refreshes a movement point for the target if the damage instance hits

`Craft {}` -- Creates an item in a specific slot from a specific pool
* `pool Item_Pool` -- The item pool 
* `slot Item_Slot` -- [Item slot](enums#item-slots)
* `works_with_tech bool` -- If the crafting is influenced by tech (searches Item_Pool_X, where X is the amount of tech)

`RemoveStatusStacks {}` -- Removes X stacks of a specified status
* `status Status_Name`-- Status
* `stacks X` -- Stacks

`RemoveStatus Status_Name` -- Removes a specified status

`ForceTransferWeapon 1` -- Forces the source's weapon to go to the target

`BackflipWhenTargeted {}` -- Gives X backflips using a specified ability for the backflip
* `stacks X` -- Amount (Can also be used as `BackflipWhenTargeted X`)
* `ability Ability_Name` -- Ability used to backflip

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

`RemoveItem Item_Name` -- Removes a specific item from the target's inventory

`TeamCastAbility {}` -- Makes all of the targe's team cast an ability
* `ability Ability_Name` -- Ability to cast (Can also be used as `TeamCastAbility Ability_Name`)
* `tag_restriction string` -- Tag required by the character to cast the ability
* `same_orentation bool` -- If the character uses the same orentation of the original caster

`UpgradeRandomAbility X` -- Upgrades X random abilities temporarily

`PermanentUpgradeRandomActive X` -- Upgrades permanently X random abilities

`MeleeRevengeDamage {}` -- [Damage instance](ability_fields.md#damage_instance--self_damage) targetting characters to inflict melee damage to the source

`IncreaseExplosionSize X` -- Increases the source's explosions size by X

`IncreaseExplosionDamage X` -- Increases the source's explosions damage by X

`ExplosionImmunity 1` -- Gives explosion damage immunity

`ChanceToBreak 0-100` -- (ITEM) Breaks the used item with an X chance

`IncreaseItemAuxOnKill X` -- (ITEM) Increases the item aux by X when it kills

`TauntAlways 1` -- Gives constatly the taunt effect (Enemies will prioritize the source)
---

## X_is 

> [!TIP]
> "XIsWhatever" can also be used with curly braces, and inside of it X will become whatever it specifies [TEST].

`X_cant_be_zero bool` -- X can't be 0 (goes in cost)

`XIsCountStatusStacks Status_Name` -- X becomes the status stacks count

`XIsTimesDamageTaken N` -- X becomes N * times taken damage [TEST]

`XIsTargetHealth {}` -- Inside the expression X is the target's health

`XIsLivingAlliesWithTag Tag_Name` -- X becomes the number of allies with a specific tag

`XIsConsumedCharacterMaxHP N` -- X becomes N * the max health of the character the source consumed

`XIsIncreaseEachTurn N` -- X increases by N each turn

`XIsRampAndReset N` -- X becomes N when this ability is used [Can't get to work for some reason]

`XIsRecycleCostReduction N` -- X becomes 1 while weapon is unused and N when used

`XIsSpellStormRampAndReset N` -- Whenever a spell is used X increases by 1, starts and becomes N when the ability is used

`XIsSpellStormRampAndReset {}` -- Whenever a spell is used X increases by 1, is stacks at the start of the battle

* `stacks N` -- Starting X value
* `reset_percent 0-100%` -- How much X is reset when the ability is used

`XIsOtherHealsThisTurn 1` -- X the number of hp something was healed by you during the turn

`XIsTargetHealth N` -- X is the target’s health [TEST]

---

## CONDITIONAL TRIGGERS

> [!TIP]
> After a condition `Else {}` can be used to execute when the condition is not met.

`Conditional_GoodRoll {}` -- Execute if roll is successful (positive roll)
* `odds 0-100%` -- Roll odds

`Conditional_BadRoll {}` -- Execute if roll is successful (negative roll)
* `odds 0.0-1.0` -- Roll odds (FOR SOME REASON IT'S DECIMAL?????? BUT ONLY THIS ONE???????)

`Conditional_RandomChance {}` -- Execute if roll is successful (neutral roll)
* `odds 0-100%` -- Roll odds

`Conditional_DebuffRoll {}` -- Execute if roll is successful (special negative roll??) [TEST]
* `odds 0-100%`

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

* `key Name_Of_Key` -- Identifier of the condition (Known keys: gamewin)

`Conditional_FirstApplicationThisTurn {}` -- Execute this condition once per turn

* `key Name_Of_Key` -- Identifier of the condition

`Conditional_HasTag {}` -- Execute if target has tag

* `tag Tag_Name` -- Name of tag

`Conditional_Adjacent {}` -- Execute if target is adjacent to source

`Conditional_Ally {}` -- Execute if target is an ally of the source

`Conditional_Enemy {}` -- Execute if target is an enemy of the source

`Conditional_Boss {}` -- Execute if target is a boss

`Conditional_NotBoss {}` -- Execute if target is NOT a boss

`Conditional_BossOrBig {}` -- Executes if the target is either a boss or big

`Conditional_Corpse {}` -- Execute if target is a corpse

`Conditional_HasStatus {}` -- Execute if target has status (Conditional_SourceHasStatus for the source)

* `status Status_Name` -- Status name

`Conditional_PartyMember {}` -- Execute if target is a party member [TEST]

`Conditional_IsSelf {}` -- Execute if target is source

`Conditional_AbilityTargetIsSelf {}` -- Used in self_damage, Execute when the target of the ability is the source? (Not the self damage target) [TEST]

`Conditional_Displaceable {}` -- Execute if the target is displaceable

`Conditional_Buddy {}` -- Execute if target is the source's buddy (Esempio sta in Guillotina.gon)

`Conditional_InForm {}` -- Execute if target is in a specific form
* `form Form_Name` -- Form name

`Conditional_Object {}` -- Execute if target is an object

`Conditional_PlayerCat {}` -- Execute if target is a player cat

`Conditional_LivingPlayerCat {}` -- Execute if target is a player cat who happens to be alive

`Conditional_AffectedByElement {}` -- Execute if target is affected by an element

* `element Element_Name` -- [Element](enums.md#elements) name

`Conditional_FormulaIsPositive {}` -- Execute if the formula given is positive

* `formula X` -- formula (can be a more complex formula if given as a string)

`Conditional_SourceAbilityHasTag {}` -- Execute if the source is an ability and has a specific tag
* `tag Tag_Name`

`Conditional_Backstab {}` -- ABILITY Execute if the ability backstabs

`Conditional_LastHit {}` -- ABILITY Execute at the last hit of a multihit ability

`Conditional_ActiveWeather_Any {}` -- Execute if there is any active weather in the list

* `weather [Weather_Name]` -- weathers list

`Conditional_DoesDamage {}` -- Execute when damage deals actual damage, Used when source is a damage instance? [TEST]

`Conditional_HasCleansableDebuffs {}` -- Execute if the target has removable debuffs [TEST]

`Conditional_NotBig {}` -- Execute if target is not 2x2? [TEST]

`Conditional_Speculative {}` -- don't know [TEST] (Else can be used to not make an AI calculate outcomes (Check special_enemy_abilities.gon))

`Conditional_FinishedSpawning {}` -- Execute if the target finished spawning??? [TEST]
