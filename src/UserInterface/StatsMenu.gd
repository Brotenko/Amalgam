extends Control


func _ready():
	visible = false


func close():
	visible = false


func open():
	visible = true


#func _on_ResumeButton_pressed():
#	get_tree().paused = false
#	visible = false


#func _on_QuitButton_pressed():
#	if get_parent().get_parent().name == "Splitscreen":
#		# We need to clean up a little bit first to avoid Viewport errors.
#		$"../../Black/SplitContainer/ViewportContainer1".free()
#	get_tree().quit()
