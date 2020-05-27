extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	visible = false


func close():
	visible = false


func open():
	visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
