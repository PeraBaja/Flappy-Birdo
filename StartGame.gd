extends TextureRect

func _ready():
	GameManager.PlayerJump.connect(on_player_jump)

func on_player_jump():
	queue_free()
