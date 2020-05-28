extends Node


enum Targets {NONE, FRIENDLY, ENEMY}
enum Enhancments {STRENGTH_UP, STRENGTH_DOWN}
enum DamageTypes {NORMAL, FIRE}
enum AoeTypes {CONE, CIRCLE}
enum Directions {RIGHT, DOWN, LEFT, UP}
enum Effects {CIRCLING, HOMING, BOUNCING, REFLECTING, PIERCING}


var spell_name = ""
var spell_description = ""
var mana = 0
var mana_cost = 0
var cast_time = 0
var cooldown = 0
var damage_amount = 0
var aoe_damage_amount = 0
var heal_amount = 0
var aoe_heal_amount = 0
var shield_amount = 0
var aoe_shield_amount = 0
var spell_speed = 0
var spell_range = 0
var spell_size = 0
var spell_gravity = 0
var spell_spray = 0
var spell_direction = ""
var projectile_amount = 0
var aoe_size = 0
var aoe_type = ""
var damage_types = []
var enhancments = []
var spell_targets = []
var spell_effects = []


#Add all the function parameters so it actually sets this stuff
func set_all_spell_parameters():
	spell_name = ""
	spell_description = ""
	mana = 0
	mana_cost = 0
	cast_time = 0
	cooldown = 0
	damage_amount = 0
	aoe_damage_amount = 0
	heal_amount = 0
	aoe_heal_amount = 0
	shield_amount = 0
	aoe_shield_amount = 0
	spell_speed = 0
	spell_range = 0
	spell_size = 0
	spell_gravity = 0
	spell_spray = 0
	spell_direction = ""
	projectile_amount = 0
	aoe_size = 0
	aoe_type = ""
	damage_types = []
	enhancments = []
	spell_targets = []
	spell_effects = []
