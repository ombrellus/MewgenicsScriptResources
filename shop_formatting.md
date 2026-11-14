# SHOP FORMATTING

`ShopLevelKey {}` -- The name of the shop, specifically used for the "level" value in a map node.

## META

`movieclip MovieClip_Name` -- The actionscript name of the FLA object to load.

`npc_script GONFile.gon` -- The gon file that the dialouge scripts should be loaded from, with it's pathing beginning at data/npc_scripts.
(i.e. by inputting "tracy_adventure_shop_script.gon" you imply the file is located at data/npc_scripts/tracy_adventure_shop_script.gon)

`delay_enable_tooltips bool` -- TODO. A plausible guess is that this tells the NPC to run any scripted quotes before it gives the automated tooltips for the items.

`keeper 0` -- _**THIS KEY IS DEPRICATED!!**_. A plausible guess to what this could have been is that it wouldve told the NPC to initiate a fight if conditions are met properly (such as how Greed can be fought if a Shopkeeper is bombed in TBOI)

`shopkeeper_fights [ string.gon ]` -- _**THIS KEY IS DEPRICATED!!**_. Table of level values, used when combating the shop owner. Path begins at levels folder.

`treasure_room bool` -- Is the "shop" setup supposed to load the logic of a treasure event?

`house_shop bool` -- Should the shop be treated like a house shop?

## ITEM RARITY TESTS

You can match the rarity of each type of consumable to a integer value.
A common version of this table might look like this:

```
item_rarity_costs {
    consumable_common 5
    consumable_uncommon 7
    consumable_rare 10
    consumable_very_rare 20
    common 7
    uncommon 10
    rare 20
    very_rare 40
}
```

## ITEM GROUPS

Item groups are used within shop formats to help define the content of purchasable material after the SWF scene for a shop is loaded. In item groups, the key values are used later in breakdown and thus are entirely mutable and can be whatever as long as the key is used consistently to represent it's values. 
For instance, you can have a setup like this:

```
item_groups {
    myCoolGroup {
        ...
    }
}

breakdown {
    myCoolGroup 3
}

```

The tables in item_groups can have a variety of values inside of them:

`Item {}` -- Represents a item inside this group.
* `pool string/[string string ...]` -- The [pool](enums.md#vanilla-pools)(s) of the item.
* `pool [ItemID ItemID ...]` -- A local-defined pool for items within a shop. Note that multiple of the same item ID can be inserted to increase it's weight within the pool.
* `cost X` -- Items will normally have their costs set based on their rarity and such, but can be preset with X value instead.
* `mandatory bool` -- This item slot must always show up in the shop.
* `weight X` -- The weight of this item in the group. (INTEGER!)

`LevelUp {}` -- Represents a level up candy inside this group.
* `cost X` -- How much the upgrade should cost.
* `weight X` -- The weight of this item in the group. (INTEGER!)

`Food {}` -- Represents a food item inside this group.
* `amount X` -- Amount of food this represents.
* `cost X` -- How much this costs. (Is not normally set)
* `allow_duplicates bool` -- Should this item be selected again if a exact copy already is live in the chosen setup?
* `weight X` -- The weight of this item in the group. (INTEGER!)

`Furniture {}` -- Represents a furniture item inside this group. All statistics are predetermined.

## BREAKDOWN

This is the section where the store decides how many of each item group to have in the setup.

`breakdown {}` -- Represents the actual selection of data for objects in the shop.
* `itemgroupName X` -- Replace itemgroupName with the **key of a item group established in item_groups**. Replace X with a **integer amount of objects that should have this data written over.**

Lets relate back to our example above.

```
item_groups {
    myCoolGroup {
        ...
    }
    myBadGroup {
        ...
    }
}

breakdown {
    myCoolGroup 3
    myBadGroup 1
}

```

In this example, **three purchasable objects in the SWFFile layout have the data from myCoolGroup loaded over them**, and **one purchasble object in the SWFFile layout has the data from myBadGroup loaded over it.**

Please note that Organ Grinder **does not use item_groups or breakdown.** He is a hardcoded hank.

## STOCK FILL ORDER

Item shops can have any plausible amount of different items for a player to purchase. The items for each individual slot is pre-selected and then a random or chosen shop layout is loaded. Each table value after the integer key sets up a plausible layout of products in a shop level, where they represent the chosen slots in the SWFFile's scene that are replaced by interactable, acquiescable commodities of the Mewgenics world.

The actual "number" of each slot is defined in the shop SWFFile by their instance name in the scene. When a table value is loaded, the shop objects with these actionscript instances have the logic for actually interactable products loaded over them. For instance, Tracy's shop uses 5 objects, with the objects on the top having the instance names of "0", "1", and "2", and the objects below having the instance names of "3" and "4".

Therefore:

```
stock_fill_order {
    //Three objects on the top,
    //two on the bottom,
    //with their "integer" assignments set by the SWFFile!

    //0 1 2
    // 3 4

    1 [1] // A single item should load. Only the middle of the top shelf gets a item.
    2 [0 2] // Two items should load. The left and right parts of the top shelf get items.
    3 [1 3 4] // Three items should load. The top middle, bottom left and right all get items.
    4 [0 2 3 4] // Four items should load. The top and bottom left and right all get items.
    5 [1 0 2 3 4] // All slots should load items.
}
```

However, this is obviously not the only way the setup has to work. **Reminder that the instance names and positions of these objects in the provided SWFFile determine the layout of the consumables.** The setup is mutable; this is just a classic example.

## BUTTON NAVIGATION

`default {}` -- Nessecary key name for a table of values, used to help tell the game how to move around the shop.
* `key_integer [integer integer ...]` -- Integer followed by a matrix. Key integer represents the instance name of the object; the integers inside the matrix represent the instance names of the objects that a button press should be navigated to.

`integer {}` -- Used for when the stock of a shop is overfilled. Backup, and should be used sparingly as the chance of these having to be employed is rare.
* `key_integer [integer integer ...]` -- Integer followed by a matrix. Key integer represents the instance name of the object; the integers inside the matrix represent the instance names of the objects that a button press should be navigated to.

This section is almost entirely unnessecary as the player has little to no reason to ever have to initialize this own table in their shop unless they absolutely must so that the custom setup visually makes sense when it comes to choosing items. 

Each integer key in button navigation is connected to a matrix, where the integers represent the same value (as a string) used for the instance name of a purchasable object in the shop. **If a value is string "x", it implies there is no connection there.**

The FIRST value will always represent the instance name of the object **ABOVE** the currently selected object.
The SECOND value will always represent the instance name of the object **BELOW** the currently selected object.
The THIRD value will always represent the instance name of the object **TO THE LEFT** of the currently selected object.
The FOURTH value will always represent the instance name of the object **TO THE RIGHT** of the currently selected object.

Let us consider a example.

```
stock_fill_order {

    //In my really awesome shop, I have three shelves.
    //0 (The top shelf carries object 0.)
    //1 (The middle shelf carries object 1.)
    //2 (The bottom shelf carries object 2.)

    1 [1] //The middle shelf gets 1 item.
    2 [0 1] //The middle and top shelf both get a item.
    3 [0 1 2] //The store is fully stocked!
}

button_nav {

    //Now we need to tell the game how we
    //should move around the shop with buttons.

    //up, down, left, and right. "x" represents no connection.

    default { //the default layout of the shop.
        0 [x 1 x x] 
        //Object 0, the one on the top, should not get any connections to anything above it or to the right and left. However, we do want the game to put us at object 1 if we go down, since it's visually below it!
        1 [0 2 x x]
        //Object 1, the one in the middle, is given a connection for going up (to object 0) and going down (to object 2). However, it has no connections left and right.
        2 [1 x x x]
        //Object 2, the one on the bottom, should have a connection for going up (object 1.) However, there isnt anything below it, or to the left and right.
    }
}

```