extends Enemy

@export var enemy: PackedScene

func _update_movement(delta: float) -> void:
	velocity.x = speed
	
	move_and_slide()

func _on_timer_timeout() -> void:
	speed *= -1
