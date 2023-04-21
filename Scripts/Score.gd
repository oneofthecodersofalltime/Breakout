extends Label
var score = 0
var blocks = 12

func _on_ball_point():
	score += 1
	text = "Score: " + str(score)
	if blocks == score:
		get_tree().change_scene_to_file("res://Scenes/victory.tscn")
