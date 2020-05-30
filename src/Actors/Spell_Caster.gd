class_name Spell_Caster
extends Position2D
# Represents a weapon that spawns and shoots bullets.
# The Cooldown timer controls the cooldown duration between shots.

const BULLET_VELOCITY = 100.0
const Bullet = preload("res://src/Objects/Bullet.tscn")

onready var sound_shoot = $Shoot
onready var timer = $Cooldown

export var attack_range = 7;
export var damage = 1;
export var attack_spray = 250;
export var gravity_drag = 0;

func shoot(direction = 1):
	var rng = RandomNumberGenerator.new();
	#attack_range = Global.numberOfCoins
	
	#for i in range(5):
	if not timer.is_stopped():
		return false
		
	rng.randomize()
	#var spray = rng.randi_range(-attack_spray/Global.numberOfCoins, attack_spray/Global.numberOfCoins)
	var spray = rng.randi_range(-attack_spray, attack_spray)
	
	var bullet = Bullet.instance()
	bullet.global_position = global_position
	bullet.linear_velocity = Vector2(direction * BULLET_VELOCITY * attack_range, spray)
	
	bullet.set_as_toplevel(true)
	add_child(bullet)
	sound_shoot.play()
	return true
