# WEATHER FORMATTING

>[!WARNING]
>This list is still a work in progress, some things haven't been tested to their fullest, haven't been documentet properly, or aren't present

`WeatherName {}` -- Id name of the weather
* `name "WEATHERNAME"` -- Display name of the Weather

* `desc "WEATHERDESC"` -- Description of the Weather

* `ambient_sound` File_Name.ogg -- Ambient sound present while the weather is active (.ogg file has to be put in audio/ambience)

* `hint_persistent_elements [Element]` -- Makes the weather display what [elements](enums.md#elements) will remain persistent (does not make the element persistent)

* `effects {}` -- Table of the passive effects given by the weather

> TODO Add example and test specific passive effects only found in weathers

## WEATHER SPECIFIC PASSIVE EFFECTS


`Rain X` -- Rain effects, persistent water element [TEST X]

`Fog X` -- Fog effects, [TEST X]

`Windy X` -- Wind effects, persistent water element [TEST X]

`Sandstorm X` -- Wind effects [TEST X]

`Heatwave 1` -- Heatwave effects

`Snow X` -- Snow effects, persistent ice element [TEST X]

`AcidRain X` -- Acid rain effects, X is the damage of the acid rain

`MeteorShower X%` -- Meteor shower effects, X is the chance of a meteor to fall every turn

`FireflySwarm X` -- Firefly swarm effects, X is the amount of luck given

`ButterflySwarm X` -- Butterfly swarm effects, X is the amount of luck given

`FlySwarm X%` -- Fly swarm effects [TEST X]

`VisualFlySwarm 1` -- Visual effects of the fly swarm weather

`FireStorm X%` -- Fire storm effects, persistent fire element [TEST X]

`Meteornado X` -- Meteronado effects [TEST X]

`FactionUprising {}` -- Makes all entities with the tag attack everything that isn't part of their uprising
* `tag Tag_Name` -- Entity tag (can also be used like `FactionUprising Tag_Name`)
* `extra_statuses {}` -- Table of statuses given to the entities in the faction

`CockroachSwarm 1` -- Cockroach Infestation visual effects

`JudgementDay X` -- Judgement day effects, X is the damage dealt by the weather