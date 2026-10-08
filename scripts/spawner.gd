extends Node2D

@export var enemies: Array[PackedScene]

func _on_timer_timeout() -> void:
	var enemy_index = randi_range(0, 2)
	var enemy = enemies[enemy_index].instantiate()
	enemy.global_position = global_position
	owner.add_child(enemy)
