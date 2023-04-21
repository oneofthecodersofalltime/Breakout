extends CharacterBody2D

var movement_vector = Vector2(1, -1)
var speed = 15000
signal point

func _physics_process(delta):
	velocity = movement_vector * delta * speed
	move_and_slide()
	if is_on_ceiling():
		movement_vector.y *= -1
	if is_on_wall():
		movement_vector.x *= -1

func _on_player_collision():
	movement_vector.y *= -1
	
func _on_area_2d_area_entered(area):
	if area.is_in_group("block"):
		movement_vector.y *= -1
		emit_signal("point")


func _on_death_lost():
	position = Vector2(450, 450)
	movement_vector = Vector2(1, -1)
