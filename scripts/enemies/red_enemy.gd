extends Enemy

func _update_movement(delta: float) -> void:
	velocity.x = 0
	
	move_and_slide()
