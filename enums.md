## ELEMENTS
Bloom  
Earth  
Electric  
Explosion  
Fire  
Grass  
Gravity  
Holy  
Ice  
Lesser_Water  
Mutate  
Napalm  
Poison  
Rock  
Water  
Wind  
Quake  
Dust  
Heat  
Creep  
Conducted  
Dark  
Metal  

## SPECIAL ABILITY CLASSES 
AOESpellAbility     
BounceDashAbility   
DamageConsumedCharactersAbility     
FullyAnimatedDashAttackAbility  
KaijuSpinThrowAbility   
MultiHitMeleeAttackAbility  
MultiTargetRangedAttackAbility  
MeleeEatAbility     
PierceDashAbility      
PlaceholderMeleeAttackAbility       
SuplexAbility        
TeleportEatAbility

## ABILITY TEMPLATES

template_dash_attack    
template_jump_attack    
template_jump_move      
template_laser      
template_leave      
template_lobbed_attack      
template_melee_attack       
template_melee_spell        
template_move       
template_multihit_self_buff     
template_placeholder    
template_ranged_attack      
template_return     
template_self_buff      
template_spawn      
template_spell      
template_straightshot_attack        
template_swap       
template_targeted_status        
template_teleport       
template_throw_attack       
template_tile_targeted_melee_attack     
template_trample_dash   

## RESTRICTIONS
none  
must_be_empty  
must_move  
must_be_moveable  
must_have_tag  
must_have_cat  
must_have_living_character  
aoe_must_exist  
dash_must_move  
must_have_liquid  
must_have_ally  
must_have_player_cat  
must_have_animate_character  
must_have_enemy  
aoe_must_be_displaceable  
aoe_must_be_force_displaceable  
must_have_character  
must_have_familiar  
must_fit_2x2_character  
must_be_swappable  
must_have_element  
must_have_line_of_sight_unpurgable  
must_have_line_of_sight  
must_be_moveable_ignore_wall  
must_have_destructible_corpse  
must_match_current_orientation  
must_target_cat_with_empty_or_destructible_weapon_slot  
must_target_alpha_if_exists  
must_have_buddy  
must_be_directly_in_front_of_enemy  
must_not_have_boss  
must_be_adjacent_to_enemy_fistoffate  
require_empty_tile_in_front  
must_be_movable_ignore_trample  
must_not_have_tag  
must_match_locked_orientation  
must_not_have_large_character  
cant_target_behind  
must_be_directly_behind_enemy  
must_be_adjacent_to_ally  
must_not_be_knockback_immune_animate_character  
must_be_adjacent_to_most_hurt_ally   
must_be_conductive  
diagonal_only  

## AOE RESTRICTIONS
none  
must_be_empty  
must_have_tag  
must_have_line_of_sight_unpurgable  
must_have_line_of_sight  
must_have_animate_character  
must_not_have_corpse  
must_have_low_health_character
exclude_blocking  
exclude_direct_target
familiars_only  
enemies_only  
character_must_be_affected_by_tile_with_element  
checker_parity_even  
allies_only  
exclude_allies  
must_have_corpse_or_sleeping  
must_have_cat_with_empty_weapon_slot  
must_have_special_tag  
must_backstab  
character_has_turns_left  
must_have_piercing_line_of_sight  
must_be_partially_empty  
must_have_aggro_target  
tile_must_have_element  
must_have_enemy_or_robot  

## ABILITY VARIABLE
bonus_range  
bonus_ranged_damage  
bonus_melee_range  
bonus_melee_damage  
bonus_basic_spell_damage  
level  
str  
spd  
int  
cha  
con  
dex  
lck  
mov


## STATS
str (long: Strength)  
spd (long: Speed)   
int (long: Intelligence)  
cha (long: Charisma)  
con (long: Constitution)  
dex (long: Dexterity)  
lck (long: Luck)  

## ITEM SLOTS
weapon  
head  
neck  
face  
trinket  
random_empty_armor -- Only some things use it

## X_is
custom  
basic_attack_damage  
max_health  
is_at_max_mana  
current_health  
current_mana  
cast_count  
turn_count  
random_0_to_N  
alpha_exists  
current_shield  
storm_count  
this_ability_storm_count  
is_dead  
enable_if_has_ammo  
you_are_the_alpha   

## STR_AUX INITIALIZE
random_seed  
random_stat  
random_class_passive  
random_class_ability  
random_disorder
random_copyable_colorless_passive  
random_copyable_colorless_passive  
random_copyable_class_ability  
random_passive_trinket  

## FACTIONS
none  
enemies  
cavemen  
sabertooths  
mammoths  
allies  
third_party  
kaiju1  
kaiju2  
solitary_enemies  
self  
auto  

## LAYERS
all  
self  
characters  
pickups  
tiles  
gas  
trap  

## TILES
BlankTile  
BrambleTile  
CreepTile  
DirtTile  
FireTile  
FlowerTile  
GlassTile  
GlitchTile  
GrassTile  
IceTile  
LavaTile  
MetalTile  
OilTile  
RoadTile  
RockTile  
ShadowTile  
SnowTile  
StalagmiteTile  
SupercooledWater  
TallFlowerTile  
TallGrassTile  
ToxicTile  
WaterTile  
WaterTile_Current 

## VANILLA POOLS 

alleyitems_!autorarity  
allsticks_0     
allsticks_1     
allsticks_2     
allsticks_3     
barbed_armor       
barbed_items    
basic_consumables   
Bird_items  
blackbird_pool  
blood_altar_items   
bloody_items    
bone_armor  
bone_equipment  
bone_weapons    
boneyarditems_!autorarity   
bombs_0     
bombs_1     
bombs_2     
bombs_3     
bunkeritems_!autorarity     
can_items_common    
can_items_rare  
cat_armor   
cavesitems_!autorarity  
cherub_pool     
chicken_pool    
class_seals     
Coin_items  
common_bones    
consumables     
consumables_!autorarity     
coreitems_!autorarity       
crateritems_!autorarity     
cursed_barbed_wire_items       
cursed_items    
deadcat_equipment   
demon_themed_items  
desertitems_!autorarity     
dimensionxitems_!autorarity     
dove_pool   
eagle_pool  
Eye_items   
eyes_nonrare    
flesh_items     
fleshhead_items     
food    
futureitems_!autorarity     
general_!autorarity     
glitched_items      
godly_items     
good_parasites      
grass_items     
grub_armor      
guts_items      
harpy_pool      
hide_items      
hummingbird_pool    
iceageitems_!autorarity     
isaac_items     
junkyard_items      
junkyarditems_!autorarity       
jurassicitems_!autorarity       
labitems_!autorarity    
meat_items  
meatworlditems_!autorarity  
mom_items   
moonitems_!autorarity   
mutant_pool 
parasites   
pelts   
pigeon_pool     
pills   
poop_items  
raptor_nest_eggs    
rat_trinkets    
raven_pool  
recycled_items  
rock_items  
rotten_armor    
seagull_pool    
seweritems_!autorarity      
sludge_armor    
stick_0     
stick_1     
stick_2     
stick_3     
tech_items      
theenditems_!autorarity     
theinfiniteitems_!autorarity      
tinkerer_0      
tinkerer_0_bombs        
tinkerer_1      
tinkerer_1_bombs    
tinkerer_2      
tinkerer_3      
turkey_pool     
unique (what does this do?)     
weapons 

## VANILLA CHAPTERS
alley   
junkyard   
sewers   
caves   
boneyard   
meatworld   
desert   
bunker   
crater   
core   
moon   
dimensionx   
lab   
iceage   
future   
jurassic   
theend   
endoftime   

## VANILLA HOUSE BOSSES
guillotina_1  
guillotina_2  
guillotina_3  
pyrophina  
zaratana  
pyrophina_vs_zaratana  
terminator_1  
terminator_2  
terminator_3  

## VANILLA WEATHER
None    
AcidRain    
AlienInvasion   
AlienOvergrowth     
Birdemic    
BirdMigration   
BlessedDay  
Blizzard    
BountyHunting   
ButterflySwarm  
CockroachSwarm  
CrazyWeather    
Drugs   
Earthquake  
Eruption    
FireflySwarm    
Firestorm   
FlashFlood  
FlySwarm    
Fog     
GeomagneticStorm    
HauntedNight    
HeavyRain   
HeatWave    
HuntingSeason   
Hurricane   
Infestation     
JudgementDay    
KaijuFirestorm         
KaijuMeteornado         
KaijuMeteornadoSolo     
LowGravity  
MeteorShower    
Meteornado      
Minesweeper     
OilSpill    
Overgrowth  
Pandemonium     
PayDay  
PipeBlockage    
Rain    
RainingFrogs    
RestlessDead    
RobotUprising   
Sandstorm   
Snow    
SolarFlare  
StealthMission  
StrangeEggs        
StrangeSpikes   
TheHollowing    
TheShimmer  
Thunderstorm    
Tornado     
TrainingDay     
TrashDay    
VisualFlySwarm  
Wildfire    
Windy   