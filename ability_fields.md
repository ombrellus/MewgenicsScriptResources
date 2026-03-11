# ABILITY FORMATTING

>[!WARNING]
>This list is still a work in progress, some things haven't been tested to their fullest, haven't been documentet properly, or aren't present

`AbilityName {}`

* `Class Class_Name` -- Ability class, only used when making a template [check ablity_template.gon for classes]

* `template Template_Name` -- Ability template, will inherit all of the configurations of the template [check ablity_template.gon for templates]
* `variant_of AbilityName` -- Used for upgraded abilities, the upgraded ability needs the same name with a 2 after it (AbilityName2), will inherit configurations
* `tags [Tag_Name]` -- List of ability tags
* `chain_ability Ability_Name` -- Ability casted right after this one
* `ai_ability Ability_Name` -- (AI) Another ability that is used to calculate the ai chance for this one
* `meta {}` -- Contains the information about the ability
* `graphics {}` -- Contains the graphical properties of the ability
* `cost {}` -- Containts the costs and requirements of the ability
* `target {}` -- Contains the targetting properties of the ability
* `damage_instance {}` -- Contains the damage properties of the ability
* `spawn {}` -- Used for spawning abilities, contains the spawn properties of the ability
* `sounds {}` -- (OPTIONAL) contains the sound properties of the ability
* `self_damage {}` -- (OPTIONAL) same as damage_instance but applied on the source
* `bonus_passives {}` -- (OPTIONAL) contains bonus passives applied to the source when it has this ability
* `temporary_effects {}` -- (OPTIONAL) contains effects applied to the source for the duration of the ability

---

## META

`type_icon "Icon_Name"` -- Top icon of the ability [movement, spawn, debuff, buff, misc, unknown, heal, defense, ranged, magic] (More can be added appending ui_fla.ABILITYICONSHELL_161)

`is_move bool` -- If this ability is the character movement

`is_basic_attack bool` -- If this ability ist he character's basic attack

`animate_name bool` -- If ability name should be shown when used (default true)

`class Class_Name` -- Cat collar class of the ability

`name "ABILITY_ABILITYNAME_NAME"` -- Name of the abilty, can be directly written as a string or point to the translation file

`desc "ABILITY_ABILITYNAME_DESC"` -- Description of the abilty, can be directly written as a string or point to the translation file

`icon_shell_frame Frame_Name` -- [attack, big_damage, damage]

---

## GRAPHICS

`animation Animation_Name` -- Animation played [check catanims.swf or enemies.swf]

`prime_animation Animation_Name` -- Animation played when ability is primed

`custom_priming_animation Animation_Name` -- Idle animation used while this ability is primed

`jump_attack_animation Animation_Name` -- Landing animation for jumps

`dash_start_animation Animation_Name` -- Start dash animation

`dash_animation Animation_Name` -- Dash animation loop

`dash_attack_animation Animation_Name` -- End dash animation

`move_start_animation Animation_Name` -- Start move animation

`move_end_animation Animation_Name` -- End move animation

`use_projectile bool` -- If projectile is used

`beam_clip Particle_Name` -- Laser body graphics

`beam_cap Particle_Name` -- Laser end part graphics

`lob bool` -- If the projectile is lobbed

`lob_height X` -- Lobbed projectile height

`lob_speed X` -- Lobbed projectile speed

`fall_from_sky bool` -- If the projectile falls from the sky

`bounce_on_hit bool` -- If the projectile bounces when hitting something

`projectile Projectile_Name` -- Projectile graphics used

`single_projectile bool` -- If the projectile is only one (shot at the center of the aoe area)

`speed X` -- Speed of the projectile

`chain_movieclip MovieClip_Name` -- Chain graphics used to connect source and projectile

`chain_distance X` -- distance between the chain parts? [TEST]

`particle Particle_Name` -- Particle played on hit characters

`affected_particle Particle_Name` -- Particle played on affected tiles

`miss_particle Particle_Name` -- Particle played on missed tiles (empty or character evaded)

`area_particle Particle_Name` -- Particle played in the aoe tiles

`center_particle Particle_Name` -- Particle played in the chenter tile of the aoe

`darken_screen bool` -- If the screen goes dark during the ability

`darken_screen_exclude_characters_on_tile bool` -- If the characters on the targetted tiles are excluded from the darken screen

`delay X` -- Abiltiy graphics cast delay

`miss_delay X` -- Abiltiy graphics cast delay on miss

`random_delay [X,Y]` -- Abiltiy graphics cast delay between two random intervals

`miss_random_delay [X,Y]` -- Abiltiy graphics cast delay between two random intervals on miss

`visual_delay_but_simultaneous_damage X` -- [TEST]

`palette X` -- Palette used for the ability graphics

---

## SOUNDS

`ontrigger Sound_Name` -- Sound played when ability is triggered

---

## COST

`move_points X` -- If this ability uses the character movement points = 1

`act_points X` -- If this ability uses the character attack points = 1

`charge 1` -- mhm

`mana X` -- Mana cost

`infcantrip bool` -- Infinite castable ability

`cantrip bool` -- Ability castable only once per turn

`cantrip_group Group_Name` -- Ability will share it's used state with every other ability in the group

`prime 1` -- (AI) Ability is cast next turn

`coins X` -- Coin cost of the ability

`minimum_STAT X` -- Ability castable if [STAT](enums.md#stats) is more or equal than X

`once_per_fight bool` -- If ability is castable only once per fight

`main_turn_only bool` -- If ability is castable only during a main turn (No bonus turn)

`requires_destructible_weapon bool` -- If this ability requires a destructible weapon to cast

`requires_attack_damage_threshold X` -- If this ability requires the basic attack damage to be over X

`must_have_weapon bool` -- If this ability requires a weapon to cast

`must_not_be_consuming bool` -- If thi ability requires not having the consuming status

`cant_cast bool/Formula` -- If this ability can't be cast

`allow_offmap_casts bool` -- If this ability can be cast when the character is not on the map

`must_be_offmap bool` -- If this ability can be cast only when the character is not on the map

---

## TARGET

`target_mode Mode_Name` -- How the target tile(s) can be selected [tile, direction, direction8, random_tile, none = No selection]

`range_mode Mode_Name` -- [standard, square, water_move, groud_move, cross, 8cross, custom, none]

`allow_diagonals bool` -- AI Stuff [TEST]

`min_range X` -- Minimum target range of the ability

`max_range X` -- Maximum target range of the ability

`custom_range [ [X,Y] ]` -- (RABGE_MODE CUSTOM) define a list of tiles with [x,y] where x=front/back tiles, y=sides tiles, [0,0] is the character tile

`dont_orient bool` -- If the character should not orient the in the casting direction

`aoe_mode Mode_Name` -- How the area is selected [standard, line, square, circle, perpline, cross, diagcross, 8cross, map_edges, all, all_except_edges, occupied_tiles, hit_consumer, custom]

`custom_aoe [ [X,Y] ]` -- (AOE_MODE CUSTOM) define a list of tiles with [x,y] where x=front/back tiles, y=sides tiles, [0,0] is the character tile

`min_aoe 1` -- Minimum aoe range of the ability

`max_aoe 1` -- Maximum aoe range of the ability

`aoe_considers_character_size bool` -- If the aoe size considers the target's size

`aoe_excludes_self bool` -- If the ability aoe should exclude the source

`aoe_symmetry Symmetry_Type` -- How symmetry is handled for the aoe [none, four_way, eight_way]

`range_symmetry Symmetry_Type` -- How symmetry is handled for the range [none, four_way, eight_way]

`max_targets X` -- Target only a Maximum of X tiles

`can_multihit bool` -- If the ability can hit multiple times

`multihit X` -- The ability hits X times

`stagger_multihit_targets bool` -- [TEST]

`prioritize_face_camera bool` -- (AI) if the character should prioritize facing the camera when casting this ability

`dont_orient_aoe bool` -- [TEST]

`straight_shot bool` -- If the targetting is done in a straight line, stopped by objects

`upgrade_straight_shot_to_piercing bool` -- If the straight targetting becomes piercing, passing through objects [TEST]

`reverse_target_direction bool` -- If the character has to flip direction when casting the ability (From the butt)

`range_considers_character_size bool` -- If the range is affected by the character size

`range_display_include_character_size bool` -- [TEST]

`knockback_mode Mode_Name` -- how knockback is handled [zero, character_to_tile, target_to_tile]

`always_bounce bool` -- [TEST]

`delayed_trigger bool` -- If the ability is casted next turn

`shuffle_tile_order bool `-- If the ability shuffles the order the tiles are targetted

`toss_direction_restriction Toss_Restriction_Name` -- Restriction that need to be followed when tossing an entity [forward, backwards]

`aoe_restrictions [AOE_Restriction_Name]` -- [AOE Restrictions](enums.md#aoe-restrictions) that need to be followed for a tile to be accepted in the aoe

`restrictions [Restriction_Name]` -- [Restrictions](enums.md#restrictions) that need to be followed for a tile to be accepted as targettable

`target_requires_tag Tag` -- (MUST_HAVE_TAG) tag check

`target_requires_element Element_Name` -- (MUST_HAVE_ELEMENT) [Element](enums.md#elements) check

`X_is Variable_Name` -- X becomes a chosen [variable](enums.md#x_is), and can be used in expressions in other parts of the ability

`N Y` -- N becomes Y, used for X_is [random_0_to_N](enums.md#x_is)

---

## DAMAGE_INSTANCE / SELF_DAMAGE

`ai_base_score X` -- (AI) Base score that dictates the ai's willingness to cast this ability

`type Type_Name` -- Damage type [ranged, melee, spell, status_spell, spell_cost]

`damage X` -- Damage dealt by the ability

`raw_damage X` -- Raw damage dealt by the ability (Isn't changed by other thing?) [TEST]

`heal X` -- Healing dealt by the ability

`knockback X` -- knockback dealt by the ability

`override_trample_damage X` -- Overrides the trample damage with X

`incidentally_collects_pickups bool` -- If the ability collects pickupcs from the tiles it hits

`cant_miss bool` -- If the ability can't miss

`piercing bool` -- If the ability ignores shield

`makes_contact bool` -- If the ability counts as contact with the tile

`force_no_contact bool` -- If the ability forces to be no contact to the targetted tile

`force_play_hit_animation bool` -- If the ability forces the target to play it's hit animation

`disallow_modifications bool` -- [TEST]

`layer Layer_Name` -- On what entity layer this ability effects are applied [self, characters, pickups]

`elements [Element_Name]` -- The [element](enums.md#elements) of the ability

---

## SPAWN

`ai_base_score X` -- (AI) Base score that dictates the ai's willingness to cast this ability

`object Entity_Name or [Entity_Name]` -- Entity or list of possible entities to spawn

`faction Faction_Name` -- Faction of the spawned entity [self, default, enemy, solitary_enemies, auto]

`layer Layer_Name` -- Entity layer where the entity is spawned [self, characters, pickups]

`post_spawn_statuses {}` -- Statuses given to the spawned entity

`additional_passives {}` -- Passives given to the spawned entity
