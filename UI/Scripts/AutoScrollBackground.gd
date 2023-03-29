
extends ParallaxBackground

@export var scrollSpeed : float = 50
func _ready():
	GameManager.PlayerDie.connect(stopScroll)
func _process(delta):
		scroll_base_offset.x -= scrollSpeed * delta
	
func stopScroll():
	scrollSpeed = 0
