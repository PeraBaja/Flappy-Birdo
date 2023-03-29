extends Area2D

func _ready():
	area_entered.connect(on_player_enter)

func on_player_enter(_body):
	GameManager.AddPoint.emit()
