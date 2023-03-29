extends Button

func _ready():
	pressed.connect(on_pressed)
	
func on_pressed():
	get_tree().reload_current_scene()
