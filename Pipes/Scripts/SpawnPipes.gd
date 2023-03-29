extends Node2D
var timer
var pipes
var isSpawnerStoped = true
var posicionesY = [140, 220, 300, 380, 420] 
func _ready():
	timer = $Timer
	pipes = preload("res://Pipes/Escena/pipes.tscn")
	GameManager.PlayerDie.connect(stopSpawner)
	GameManager.PlayerJump.connect(on_player_start)
func _process(_delta):
	if(timer.time_left == 0 && !isSpawnerStoped):
		var pipesInstance = pipes.instantiate()
		add_child(pipesInstance)
		pipesInstance.position.y = posicionesY.pick_random()
		timer.start(1.5)

func stopSpawner():
	isSpawnerStoped = true
func on_player_start():
	isSpawnerStoped = false
