extends Node
var highscore : int = 0
var data = { }
const path = "res://data.json"
func _ready():
	AddPoint.connect(update_highscore)
	data = load_game()
	
signal PlayerDie
signal GetPlayerYVelocity(Yvelocity : int)
signal AddPoint
signal PlayerJump
	

#Tambien se va a encargar de añadir los puntos a un highscore
func update_highscore():
	highscore += 1
	save_game()
	pass




func load_game():
	if FileAccess.file_exists(path):
		var dataFile = FileAccess.open(path, FileAccess.READ)
		var parsedResult : Dictionary = JSON.parse_string(dataFile.get_as_text())
		return parsedResult
		
func save_game():
	var dataFile = FileAccess.open(path, FileAccess.WRITE)
	dataFile.store_var(highscore)
	print(JSON.parse_string(dataFile.get_as_text()))
