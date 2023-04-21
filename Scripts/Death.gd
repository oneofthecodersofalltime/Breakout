extends Area2D

var lives = 3
signal lost

func _on_area_entered(area):
	lives -= 1
	emit_signal("lost")
	if lives == 0:
		get_tree().change_scene_to_file("res://Scenes/failure.tscn")
