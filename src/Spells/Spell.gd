extends Node


var spell_name = ""
var current_mana = 0
var max_mana = 0
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
var enhancements = []
var spell_targets = []
var spell_effects = []

var spell_description = ""

var spell_parameters = []


var white = "[color=white]"
var blue = "[color=#5188e0]"
var yellow = "[color=#f5f538]"
var orange = "[color=#dbb251]"
var red = "[color=#bf4a3d]"
var color = "[/color]"


#Add all the function parameters so it actually sets this stuff
func set_all_spell_parameters(parameters):
	spell_parameters = parameters
	
	spell_name = parameters[0]
	current_mana = parameters[1]
	max_mana = parameters[2]
	mana_cost = parameters[3]
	cast_time = parameters[4]
	cooldown = parameters[5]
	damage_amount = parameters[6]
	aoe_damage_amount = parameters[7]
	heal_amount = parameters[8]
	aoe_heal_amount = parameters[9]
	shield_amount = parameters[10]
	aoe_shield_amount = parameters[11]
	spell_speed = parameters[12]
	spell_range = parameters[13]
	spell_size = parameters[14]
	spell_gravity = parameters[15]
	spell_spray = parameters[16]
	spell_direction = parameters[17]
	projectile_amount = parameters[18]
	aoe_size = parameters[19]
	aoe_type = parameters[20]
	damage_types = parameters[21]
	enhancements = parameters[22]
	spell_targets = parameters[23]
	spell_effects = parameters[24]
	
	spell_description = _set_description()


func _set_description():
	var ret = ""
	
	if max_mana != null:
		ret += _indent(_color_decider("current_mana"))
	if mana_cost != null:
		ret += _indent(_color_decider("mana_cost"))
	if cast_time != null:
		ret += _indent(_color_decider("cast_time"))
	if cooldown != null:
		ret += _indent(_color_decider("cooldown"))
	if damage_amount != null:
		ret += _indent(_color_decider("damage_amount"))
	if aoe_damage_amount != null:
		ret += _indent(_color_decider("aoe_damage_amount"))
	if heal_amount != null:
		ret += _indent(_color_decider("heal_amount"))
	if aoe_heal_amount != null:
		ret += _indent(_color_decider("aoe_heal_amount"))
	if shield_amount != null:
		ret += _indent(_color_decider("shield_amount"))
	if aoe_shield_amount != null:
		ret += _indent(_color_decider("aoe_shield_amount"))
	if spell_speed != null:
		ret += _indent(_color_decider("spell_speed"))
	if spell_range != null:
		ret += _indent(_color_decider("spell_range"))
	if spell_size != null:
		ret += _indent(_color_decider("spell_size"))
	if spell_gravity != null:
		ret += _indent(_color_decider("spell_gravity"))
	if spell_spray != null:
		ret += _indent(_color_decider("spell_spray"))
	if spell_direction != null:
		ret += _indent(_color_decider("spell_direction"))
	if projectile_amount != null:
		ret += _indent(_color_decider("projectile_amount"))
	if aoe_size != null:
		ret += _indent(_color_decider("aoe_size"))
	if aoe_type != null:
		ret += _indent(_color_decider("aoe_type"))
	if damage_types != null:
		ret += _indent(_color_decider("damage_types"))
	if enhancements != null:
		ret += _indent(_color_decider("enhancements"))
	if spell_targets != null:
		ret += _indent(_color_decider("spell_targets"))
	if spell_effects != null:
		ret += _indent(_color_decider("spell_effects"))
	return ret


func _indent(n):
	return n + "\r\n"
	#return "[indent]" + n + "[/indent]\r\n"


func _color_decider(p):
	var ret
	var dir
	var blue_decider
	var yellow_decider
	var orange_decider
	var red_decider
	
	if p == "current_mana":
		ret = "Mana: "
		dir = 1
		blue_decider = max_mana * 0.8
		yellow_decider = max_mana * 0.5
		orange_decider = max_mana * 0.2
		red_decider = 0
	elif p == "mana_cost":
		ret = "Mana cost: "
		dir = -1
		blue_decider = 0
		yellow_decider = max_mana * 0.07
		orange_decider = max_mana * 0.1
		red_decider = max_mana * 0.15
	elif p == "cast_time":
		ret = "Cast time: "
		dir = -1
		blue_decider = 0
		yellow_decider = 0.5
		orange_decider = 1.0
		red_decider = 1.5
	elif p == "cooldown":
		ret = "Cooldown: "
		dir = -1
		blue_decider = 0
		yellow_decider = 5
		orange_decider = 10
		red_decider = 15
	elif p == "damage_amount":
		ret = "Damage: "
		dir = 1
		blue_decider = 500
		yellow_decider = 300
		orange_decider = 100
		red_decider = 0
	elif p == "aoe_damage_amount":
		ret = "AOE damage: "
		dir = 1
		blue_decider = 250
		yellow_decider = 150
		orange_decider = 50
		red_decider = 0
	elif p == "heal_amount":
		ret = "Heal: "
		dir = 1
		blue_decider = 250
		yellow_decider = 150
		orange_decider = 50
		red_decider = 0
	elif p == "aoe_heal_amount":
		ret = "AOE heal: "
		dir = 1
		blue_decider = 125
		yellow_decider = 75
		orange_decider = 25
		red_decider = 0
	elif p == "shield_amount":
		ret = "Shield: "
		dir = 1
		blue_decider = 250
		yellow_decider = 150
		orange_decider = 50
		red_decider = 0
	elif p == "aoe_shield_amount":
		ret = "AOE shield: "
		dir = 1
		blue_decider = 125
		yellow_decider = 75
		orange_decider = 25
		red_decider = 0
	elif p == "spell_speed":
		ret = "Speed: "
		dir = 1
		blue_decider = 125
		yellow_decider = 75
		orange_decider = 25
		red_decider = 0
	elif p == "spell_range":
		ret = "Range: "
		dir = 1
		blue_decider = 450
		yellow_decider = 300
		orange_decider = 150
		red_decider = 0
	elif p == "spell_size":
		ret = "Size-Multiplier: "
		dir = 1
		blue_decider = 10
		yellow_decider = 6
		orange_decider = 2
		red_decider = 0
	elif p == "spell_gravity":
		ret = "Gravity-Multiplier: "
		dir = 1
		blue_decider = 10
		yellow_decider = 6
		orange_decider = 2
		red_decider = 0
	elif p == "spell_spray":
		ret = "Spray-Multiplier: "
		dir = -1
		blue_decider = 0
		yellow_decider = 10
		orange_decider = 15
		red_decider = 25
	elif p == "spell_direction":
		ret = "Cast direction: "
		dir = 0
		match get(p):
			0:
				p = "Front"
			1:
				p = "Front-Down"
			2:
				p = "Down"
			3:
				p = "Down-Back"
			4:
				p = "Back"
			5:
				p = "Up-Back"
			6:
				p = "Up"
			7:
				p = "Up-Front"
			8:
				p = "Random"
	elif p == "projectile_amount":
		ret = "Number of Projectiles: "
		dir = 1
		blue_decider = 0
	elif p == "aoe_size":
		ret = "AOE size: "
		dir = 1
		blue_decider = 250
		yellow_decider = 125
		orange_decider = 50
		red_decider = 0
	elif p == "aoe_type":
		ret = "AOE type: "
		dir = 0
		match get(p):
			0:
				p = "Square"
			1:
				p = "Circle"
			2:
				p = "Triangle"
			3:
				p = "Pentagon"
			4:
				p = "Cone"
			5:
				p = "Crescent"
			6:
				p = "Singles"
			7:
				p = "Random"
	elif p == "damage_types":
		ret = "Damage types: "
		dir = 0
		var new_p = []
		
		for n in get(p):
			match n:
				0:
					new_p.append("Normal")
				1:
					new_p.append("Fire")
				2:
					new_p.append("Water")
				3:
					new_p.append("Ice")
				4:
					new_p.append("Electricity")
				5:
					new_p.append("Earth")
				6:
					new_p.append("Wind")
				7:
					new_p.append("Dark")
				9:
					new_p.append("Light")
				10:
					new_p.append("Anti")
				11:
					new_p.append("Ultima")
				12:
					new_p.append("Heal")
				13:
					new_p.append("Shield")
				14:
					new_p.append("Random")
		
		if new_p.size() > 1:
			var r = "["
			for n in range(new_p.size()):
				if n == new_p.size()-1:
					r += new_p[n]
				else:
					r += new_p[n] + ", "
			p = r + "]"
		else:
			p = new_p[0]
	elif p == "enhancements":
		ret = "Enhancements: "
		dir = 0
		var new_p = []
		
		for n in get(p):
			match n:
				0:
					new_p.append("Strength Up")
				1:
					new_p.append("Strength Down")
				2:
					new_p.append("Defense Up")
				3:
					new_p.append("Defense Down")
				4:
					new_p.append("Speed Up")
				5:
					new_p.append("Speed Down")
				6:
					new_p.append("Size Up")
				7:
					new_p.append("Size Down")
				9:
					new_p.append("Jump Up")
				10:
					new_p.append("Jump Down")
				11:
					new_p.append("Poison")
				12:
					new_p.append("Acid")
				13:
					new_p.append("Slow")
				14:
					new_p.append("Blind")
				15:
					new_p.append("Silence")
				16:
					new_p.append("Charm")
				17:
					new_p.append("Confusion")
				18:
					new_p.append("Lifesteal")
				19:
					new_p.append("Damage over time")
				20:
					new_p.append("Random")
		
		if new_p.size() > 1:
			var r = "["
			for n in range(new_p.size()):
				if n == new_p.size()-1:
					r += new_p[n]
				else:
					r += new_p[n] + ", "
			p = r + "]"
		else:
			p = new_p[0]
	elif p == "spell_targets":
		ret = "Targets: "
		dir = 0
		var new_p = []
		
		for n in get(p):
			match n:
				0:
					new_p.append("Friendly")
				1:
					new_p.append("Hostile")
				2:
					new_p.append("Random")
		
		if new_p.size() > 1:
			var r = "["
			for n in range(new_p.size()):
				if n == new_p.size()-1:
					r += new_p[n]
				else:
					r += new_p[n] + ", "
			p = r + "]"
		else:
			p = new_p[0]
	elif p == "spell_effects":
		ret = "Effects: "
		dir = 0
		var new_p = []
		
		for n in get(p):
			match n:
				0:
					new_p.append("Circling")
				1:
					new_p.append("Homing")
				2:
					new_p.append("Bouncing")
				3:
					new_p.append("Reflecting")
				4:
					new_p.append("Piercing")
				5:
					new_p.append("Sticky")
				6:
					new_p.append("Returning")
				7:
					new_p.append("Explosive")
				9:
					new_p.append("Trap")
				10:
					new_p.append("Expanding")
				11:
					new_p.append("Shrinking")
				12:
					new_p.append("Spraying")
				13:
					new_p.append("Random")
		
		if new_p.size() > 1:
			var r = "["
			for n in range(new_p.size()):
				if n == new_p.size()-1:
					r += new_p[n]
				else:
					r += new_p[n] + ", "
			p = r + "]"
		else:
			p = new_p[0]

	if dir == 1:
		if get(p) >= blue_decider:
			ret += blue + str(get(p)) + color
		elif get(p) >= yellow_decider:
			ret += yellow + str(get(p)) + color
		elif get(p) >= orange_decider:
			ret += orange + str(get(p)) + color
		elif get(p) >= red_decider:
			ret += red + str(get(p)) + color
	elif dir == -1:
		if get(p) <= blue_decider:
			ret += blue + str(get(p)) + color
		elif get(p) <= yellow_decider:
			ret += yellow + str(get(p)) + color
		elif get(p) <= orange_decider:
			ret += orange + str(get(p)) + color
		elif get(p) <= red_decider:
			ret += red + str(get(p)) + color
	else:
		ret += blue + str(p) + color
	
	if p == "current_mana":
		ret += "/" + str(max_mana)
	
	return ret


func get_name():
	return str(spell_name)


func get_description():
	return str(spell_description)
