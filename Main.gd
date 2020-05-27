extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var Enemy;
var score;

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize();
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
