extends AudioStreamPlayer


func _ready():
	GameManager.AddPoint.connect(on_add_point)
	GameManager.PlayerDie.connect(on_player_die)
	GameManager.PlayerJump.connect(on_player_jump)
	
func on_add_point():
	stream = preload("res://Sound Efects/point.ogg")
	pitch_scale = [1,1.5,1.25].pick_random()
	play()
func on_player_die():
	stream = preload("res://Sound Efects/die.ogg")
	pitch_scale = [1,1.5,1.25].pick_random()
	play()
	
func on_player_jump():
	stream = preload("res://Sound Efects/wing.ogg")
	pitch_scale = 1
	play()
