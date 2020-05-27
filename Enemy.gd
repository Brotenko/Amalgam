extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var min_speed = 150;
export var max_speed = 250;
var mob_types = ["walk", "swim", "fly"];

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()];
	#pass # Replace with function body.

func _on_Visibility_screen_exited():
	queue_free();

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
