extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.PlayerDie.connect(on_player_die)
	
func on_player_die():
	play("popup")
