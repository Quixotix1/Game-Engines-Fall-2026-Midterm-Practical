extends Enemy

var move_speed = 5

func _update_movement(delta: float) -> void:
	velocity.x = move_speed
	
	move_and_slide()
