## PASSIVE ACTIONS (bonus_passives {} in abilities)

`OverrideBasicAttack Ability_Name` -- Replaces the basic attack of the entity with the chosen ability

`AddSelfStatusToBasicAttack {}` -- When the source uses it's basic attack, give itself the chosen statuses

`AddStatusToBasicAttack {}` -- When using the basic attack give the target the chosen statuses

`ChanceToRevive 0-100` -- Chance to revive at the end of the round

`SpawnThingOnDamage {}` -- Spawn objects/entities whenever the source takes damage
* `object Entity_Name` -- Entity name
* `number X` -- Number of entities
* `chance 1.0-0.0` -- chance of spawning

`MovementReaction {}` -- Uses a specific ability when someone moves near the target
* `ability Ability_Name` -- Ability Name
* `enemies_only bool` -- If it reacts to only enemies
* `on_self_move_too bool` -- If it reacts when you move as well
* `create_temp_ability bool` -- i don't know

`StatusEachTurnEnd {}` -- Gives the chosen statuses at the end of each turn

`StatusOnBattleEnd {}` -- Gives the chosen statuses at the end of the battle

* `even_if_dead bool` -- Give statuses even if the cat was downed

`StatusOnBreak {}` -- ITEM gives specified statuses when the item breaks

`PassiveIfWeaponIsUsable {}` -- ITEM executes the passives if the weapon is usable

`SpawnOnBattleStart Entity_Name` -- Spawn an entity on battle start

`IgnoreTiles 1` -- Ignore tiles

`ExtraWeaponAttacks X` -- Gives X extra weapon attacks

`ElementImmune Element_Name` -- Makes target immune to a certain element

`StatusImmunity [Status_Name]` -- Makes target immune to a list of statuses

---

## EFFECT STATUSES (effects {} or temporary_effects{} in abilities)

>[!TIP]
>These statuses also work as passives  
>These statuses can be given as parameter a list of an integer and a float [X Y] where X = status stacks Y = chance of applying

* `Shield X`
* `Burn X`
* `Bleed X`
* `Weakness X`
* `Leeches X`
* `Madness X`
* `SafeDoomed X`
* `Thorns X`
* `BleedThorns X`
* `Brace X`
* `Cleave X`
* `Trample X`
* `HealthRegenUp X`
* `SpeedUp X`
* `LuckUp X`
* `StrengthUp X`
* `IntelligenceUp X`
* `DamageUp X`
* `TempDamageUp X`
* `TempRangeUp X`
* `TempInjuryImmunity X`
* `InjuryImmunity X`
* `AlphaCat X`
* `AllStatsUp X`

`Die 1` -- Target dies  

`RefreshMovePoints N` -- Refreshes N movement points  

`TransformBasicAttack Ability_Name` -- Transform the target basic attack to a chosen ability  

`TransformAbility Ability_Name` -- ABILITY Transform the current ability into a chosen ability  

`ForceUseAbility Ability_Name` -- Make target use a specific ability  

`RerollEnemy 1` -- Rerolls the target to a random chapter enemy  

`RepairOnKill X` -- Repair used item by X when it kills  

`TakeExtraTurn X` -- Target takes X extra turn(s)

`SpecificInjury Injury_Name` -- Gives the target a specific injury

`RandomInjury X` -- Gives the target X random injury [TEST]

`HealthGain X` -- Heals the source by X  

`BramblesOnHit 1` -- Spawns brambles on the targetted tile

`SpawnBearTrap 1` -- Spawns a bear trap on the targetted tile

`CastAgain X` -- ABILITY casts the ability another X times

`Revive 0-100%` -- Revive the target at a health percentage

`ChangeTile Tile_Name` -- Changes the targeted tile to the selected tile  

`CollectsPickups 1` -- Collects targeted pickups  

`ShareHealthRegen 1` -- Shares health regen with allies  

`CurrentWeaponDamageUp X` -- Gives X damage up to the current held weapon  

`ForceAttack 1` -- Forces target to attack  

`RandomStatUp X` -- Gives X random stats up  

`UndoDamage X` -- Undo last X damages taken by the target [TEST better]  

`Rebuke X` -- Deal damage to the target equal to X * the damage that unit last dealt  

`DamageOrHealConditionally 1` -- Makes the ability heal allies and damage enemies  

`ContextualHeal 1` -- Makes the ability heal allies and damage enemies [TEST might be in a different context]  

`IgnoreSelf 1` -- Effects and damage don't get applied to the source  

`FlatLeech X` -- Source heals X hp, targets gets damaged for X  

`PullSourceToKnockbackImmuneTarget 1` -- When knockback is dealt, if the target is immune to it pull the source to it  

`SpawnThingIfHitKills Entity_Name` -- Spawns a specified entity when the target is killed  

`Metronome 1` -- Cast random spell [TEST if changing 1 does something]  

`GainCoinsRange {}` -- Entity gains a random amount of coins in a range
* `min X` -- Minimum range
* `max X` -- Maximum range

`CollectsPickupsWithAltEffects {}` -- Gives the source the specified statuses for every pickup collected by the ability, replaces the pickup effects

`AddWeaponAux X` -- ITEM Used in weapons' abilities, add X to the weapon aux

`SetItemAux {}` -- ITEM Sets the aux value of an item in a specific item slot
* `slot Item_Slot` -- [weapon, head, neck, face, trinket]
* `value X` -- value to set

`CatPartsTransform {}` -- Transforms a cat entity parts into specific parts via their id
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

`ApplyToSource {}` -- Use to switch to source in targeted effects

---

## ITEM FIELDS

`frame N` -- Animation frame of the item graphic [TEST] :/  

`Kind Item_Slot` -- In what slot an item goes [weapon, head, neck, face, trinket]  

`rarity Rarity_Name` -- Rarity of an item (do not include for common) [uncommon, rare, very_rare, consumable_uncommon, consumable_rare, consumable_very_rare]  

`set Set_Name or list` -- What set(s) this item is part of  

`cursed bool` -- If an item is cursed and can’t be removed  

`parasite bool` -- If an item counts as a parasite  

`sticky bool` -- If an item can’t be removed (like class items)  

`fragile bool` -- If an item can break when taking damage  

`indestructible bool` -- if an item can’t break  

`durability X` -- How many uses an item has  

`consumable bool` -- If this item is a consumable  

`on_store X` -- Effect when item is returned home, (known effects: become_aux_coins, become_furniture, become_rare_furniture)

`divine_shield X` -- gives X divine shields

`shield X` -- gives X shield

`aux` -- a number value stored per item (accessed by item_aux) [TEST]

`str_aux` -- a string value stored per item [TEST]

`reset_aux_on_store X` -- Resets aux to X when item is returned home

`aux_is_catid bool` -- aux becomes the holder cat id (aux can be used with catdata) [Not sure if it's something hardcoded with the soul jar or not] [TEST]

---

## X_is 

> [!TIP]
> "XIsWhatever" can also be used with curly braces, and inside of it X will become whatever it specifies [TEST].

`X_cant_be_zero bool` -- X can't be 0 (goes in cost)

`XIsCountStatusStacks Status_Name` -- X becomes the status stacks count

`XIsTimesDamageTaken N` -- X becomes N * times taken damage [TEST]

`XIsTargetHealth {}` -- Inside the expression X is the target's health

`XIsLivingAlliesWithTag Tag_Name` -- X becomes the number of allies with a specific tag

`XIsConsumedCharacterMaxHP N` -- X becomes N * the max health of the entity the source consumed

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

* `element Element_Name` -- Element name

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
