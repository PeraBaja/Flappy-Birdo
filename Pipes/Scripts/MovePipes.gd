extends Node2D

var are_pipes_stoped  = false
func _ready():
	GameManager.PlayerDie.connect(stop_pipes)
func _process(delta):
	if(!are_pipes_stoped):
		position += Vector2(-200  * delta, 0)
	if(position.x <= -1500):
		queue_free()               

func stop_pipes():
	are_pipes_stoped = true
	
