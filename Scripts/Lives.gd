extends Label
var lives = 3

func _on_death_lost():
	lives -= 1
	text = "Lives: " + str(lives)
