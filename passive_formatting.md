# PASSIVE FORMATTING

`PassiveName {}` -- Id name of the passive
* `name "PASSIVENAME"` -- Display name of the passive

* `desc "PASSIVEDESC"` -- Description of the passive

* `desc_multiclass "PASSIVEDESC"` -- Description of the passive when it's on a cat of a different class

* `class Class_Name / Disorder ` -- Class of the passice (use `Disorder` for disorders)
* `name_mod "NAMEMOD"` -- Prefix added to the target's name

* `tags [Tag_Name]` -- List of passive tags (Base game ones: noncopyable)

* `stats {}` -- Changes the target's stats
* * `str X`  
* * `spd X`   
* * `int X`  
* * `cha X`  
* * `con X`  
* * `dex X`  
* * `lck X`  

* `schadenfreude_scaled_stats {}` -- Same as stats but it gives the specified stats for every disorder the party has

* `passives {}` -- Inside there are all the passive effects that the passive gives (Including some statuses)

* `override_basic_attack Ability_Name` -- Replaces the target's basic attack with a specified ability

* `lock_item_slot{}` -- Locks the specified item slots of the target
* * `slot [Item_Slot]`-- The chosen [item slot(s)](enums.md#item-slots)

* `bonus_items [Item_Name]` -- Gives every item in the list when the passive is first taken

* `X {}` -- In passives that work with levelling (Disorders can level but it doesn't change the border) X is the level number, everything inside the block will override the passive fields when it's at level X 

>TODO add examples