extends Label

var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.AddPoint.connect(UpdateScore)
func UpdateScore():
	score += 1 
	text = "%d" % score
	UpdateHighscore()


func UpdateHighscore():
	var savedGame = ResourceLoader.load("res://Save.tres") as Save_Game
	if(score > savedGame.highscore):
		savedGame.highscore = score
		ResourceSaver.save(savedGame, "res://Save.tres")
