extends Panel

@onready var button = get_node("RestartButton")
# Called when the node enters the scene tree for the first time.
func _ready():
	modulate = Color(Color.WHITE, 0)
	button.disabled = true
	GameManager.PlayerDie.connect(popup_game_over)

func popup_game_over():
	button.disabled = false
