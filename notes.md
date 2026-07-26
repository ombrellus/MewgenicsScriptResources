# GON Notes

## Functionless statuses

In the game there are some statuses that have no effects, so can be used by mods to track temporary data as a replacement for custom statuses, current functionless statuses are:
* `Ammo` -- Has an icon and tooltip, used by some shooting enemies
* `T2CopyCatInternal` -- Has no icon or tooltip, used by C-1000
* `CopiedSpells` -- When given to the source it's effects are null, ticks down, given by CopySpells
* `CapturedFamiliarIcon` -- Dummy icon. Still shows up visually, obviously, but doesn't do anything.
* `DybbukManualExitTag` -- Has no icon or tooltip, used by Dybukk. Stacks!

### Data Statuses

The following statuses work well as dummy statuses with the exception that there should be NO DATA inside it, and unfortunately, they cannot be removed naturally (with Cleanse) and must be forcibly removed with RemoveStatus/Stacks. 

* `ApplyStatusesNextTurnBegin`
* `ApplyStatusesNextTurnEnd`
* `CatPartsSizeScaleStatus` -- Could have data I guess?

### Unreliable Functionless

* `FinalBossHitCountdown` -- Lowers by one integer on being hit.
* `FinalBossHitCountdownBoris` -- Lowers by one integer on being hit.
* `FinalBossHitCountdownExplosive` -- Lowers by one integer on being hit.
* `FinalBossHitCountdownHoly` -- Lowers by one integer on being hit.

## Abilities and the "Self"

Abilities have two unique "variants" - the unit ability and the non-unit ability. In better specification, if a ability is cast directly from a unit, the ability will consider itself in terms of it's involvement with the unit. However, despite still being tracable to the source, abilities cast from functions such as ForceUseAbility, chain_ability or delayed_trigger (essentially ForceUseAbility) do NOT consider themselves when reading over statuses that have to do with their placement.

Let's consider a example:

```
target {
    delayed_trigger true
}

damage_instance {
    type spell
    damage 0
    effects {
        TransformAbility MyNewAbility
    }
}
```

This is a "broken" format; because TransformAbility is occuring as a ability "seperated" from it's unit, the ability cannot consider itself in terms of the unit and **will not transform.**

## Setting up Hitler spawning custom cats

While it seems like a given, this is just a resource for those who don't know.
Create a file specifically titled `terminator.gon.patch` in data/characters. 
Put the following inside:

```
T3Hitler.append {
 
    abilities.append {

        spells.append [
            T3Spawn_MyCustomCat
        ]
    }

    passives.append {
        FormChanger.append {
            SpawningPhase.append {
                turns {
                    takes_turns false
                }
                passives.append {
                    FullBlockEverything 1

                    T3HitlerSpawningPhase.append {
                        spell_use_groups.append [
                            [
                                T3Spawn_MyCustomCat
                            ]
                        ]
                    }

                    FormChangeOffMap {
                        form_offmap SpawningPhase
                        form_onmap FightPhase
                    }
                }
            }
       }
    }

    ai {
        brain PatternBrain

        pattern {
            do none
        }

        decision_weights default_t3hitler
        move_weights keep_distance
    }
}

MyCustomCat_Terminator {
    variant_of MyCustomCat
    graphics {
        name "ENEMY_TERMINATOR3_MYCUSTOMCAT_NAME"
        custom_cat_data MyCustomCat
        spawnin_animation beaminJester //replace with your own animation
    }
    sound {
        alt_sounds [[SE_CatWalk SE_TerminatorCatWalkA]]
    }

    equipment {
        
    }

    properties {
        tags [cat robot]
        hidden_tags terminator_mini
        health 25
        shield 25
        corpse_health 0
        dispersed_bonus_turns 1
    }
    passives {
        Robot 1
        SpawnOnDeath Antidote
        SpawnOnDeath RandomArmorPickup
        SpawnOnDeath RandomArmorPickup
        SpawnOnDeath RandomArmorPickup
        SpawnOnDeath RandomArmorPickup
    }
}
```

For the actual ability, create a file in data/abilities called `terminator_abilities.gon.merge` and put the following inside.
```
T3Spawn_MyCustomCat {
    variant_of SpawnTerminatorMini_Base

    spawn {
        object MyCustomCat_Terminator
    }
}
```