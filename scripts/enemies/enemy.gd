class_name Enemy

extends CharacterBody2D

@export var speed: float
@onready var bub = get_tree().get_first_node_in_group("Player")

func _update_movement(delta: float) -> void:
	pass

func _process(delta: float) -> void:
	_update_movement(delta)
