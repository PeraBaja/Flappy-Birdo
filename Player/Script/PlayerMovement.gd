extends CharacterBody2D


var jumpForce : int = 400
var gravity_scale : float = 2
const GRAVITY : float = 9.8
var is_player_dead : bool = false
var is_game_started : bool = false
var isJumping

func _ready():
	GameManager.PlayerDie.connect(on_player_died)

func _process(delta):
	GameManager.GetPlayerYVelocity.emit(velocity.y)
	isJumping = Input.is_action_just_pressed("ui_accept") || Input.is_action_just_pressed("apretado")
func _physics_process(delta):
	if(isJumping == true && !is_player_dead):
			is_game_started  = true
			velocity.y = -jumpForce
			GameManager.PlayerJump.emit()
	else:
		velocity.y = min(400, velocity.y + GRAVITY * gravity_scale)
	if(is_game_started):
		move_and_slide()
	
func on_player_died():
	is_player_dead = true
	$AnimatedSprite2D.flip_v = true
