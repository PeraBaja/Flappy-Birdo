extends AnimationTree

var playerVelocity : float
var animationNode = get("parameters/playback")
# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.GetPlayerYVelocity.connect(on_get_player_Y_velocity)
	animationNode.travel("player_actions") 
func _process(delta):
	pass
	
func on_get_player_Y_velocity(Yvelocity : float):
	playerVelocity =  lerp(0.0, Yvelocity * 0.01, 0.4) 
	set("parameters/player_actions/blend_position", playerVelocity)
