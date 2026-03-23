# ITEM FORMATTING

>[!WARNING]
>This list is still a work in progress, some things haven't been tested to their fullest, haven't been documentet properly, or aren't present

`ItemName {}` -- Id name of the item
* `name "ITEMNAME"` -- Display name of the item

* `desc "ITEMDESC"` -- Description of the item

* `frame X` -- Animation frame of the item icon 

* `randomize_piece_frames bool` -- If the item icon is a random frame taken from the symbol in the prevoiusly specified frame index

* `Kind Item_Slot` -- In what [slot](enums.md#item-slots) the item goes

* `quest_item bool` -- If this item is a quest item

* `hint_destination Chapter_Name` -- Where this quest item has to be taken

* `rarity Rarity_Name` -- Rarity of an item [common, uncommon, rare, very_rare, consumable_common, consumable_uncommon, consumable_rare, consumable_very_rare, quest, sidequest]  

* `set [Set_Name]` -- What set(s) this item is part of  

* `cursed bool` -- If the item is cursed and can’t be removed  

* `parasite bool` -- If the item counts as a parasite  

* `sticky bool` -- If the item can’t be removed (like class items)  

* `fragile bool` -- If the item can break when taking damage  

* `indestructible bool` -- if the item can’t break  

* `durability X` -- How many uses the item has  

* `consumable bool` -- If this item is a consumable  

* `on_store X` -- Effect when item is returned home, [become_aux_coins, become_furniture, become_rare_furniture]

* `shield X` -- Gives X shield

* `divine_shield X` -- Gives X divine shields

* `STATNAME X` -- Gives X [stat](enums.md#stats)

* `passives {}` -- Table of the [passive](gon_files_resources.md#passive-actions) effects that the item gives (Including some statuses)

* `attack AbilityName` -- Changes the basic attack with a specified ability

* `ability AbilityName` -- (For weapons, trinkets and consumables) What ability is used when this item is used

* `aux X` -- A number value stored per item (accessed by item_aux) [TEST]

* `str_aux String` -- A string value stored per item [TEST]

* `str_aux_initialize Aux_Initializer` -- When the item is first created gives it a specific [str_aux](enums.md#str_aux-initialize) value

* `str_aux_is_copy_passive bool` -- If this item's passive is copied from the str_aux

* `str_aux_is_copy_item_passive bool` -- If this item's passive is copied from the str_aux (when it's pointing to an item)

* `str_aux_is_copy_ability {}` -- If this item's ability is copied from the str_aux (inside the block the ability can be edited) [TEST]

* `str_aux_is_copy_item_active bool` -- If this item's ability is copied from the str_aux (when it's pointing to an item)

* `str_aux_is_copy_item_icon bool` -- If the item's icon is copied from the str_aux

* `reset_aux_on_store X` -- Resets aux to X when the item is returned home

* `reset_str_aux_on_store String` -- Resets str_aux to String when the item is returned home

* `aux_is_catid bool` -- Aux becomes the holder cat id (aux can be used with catdata) [Not sure if it's something hardcoded with the soul jar or not] [TEST]

# SET FORMATTING
`SetName {}` -- Id name of the set
* `name "ITEMSETNAME"` -- Display name of the item set

* `desc "ITEMSETDESC"` -- Description of the item set

* `name_mod "NAMEMOD"` -- Modifier added to the target's name (Example: `"{Catname} The Great"`)

* `pieces_required X` -- The set requires X pieces to be active

* `shield X` -- Gives X shield

* `divine_shield X` -- Gives X divine shields

* `STATNAME X` -- Gives X [stat](enums.md#stats)

* `passives {}` -- Table of the [passive](gon_files_resources.md#passive-actions) effects that the item set gives (Including some statuses)