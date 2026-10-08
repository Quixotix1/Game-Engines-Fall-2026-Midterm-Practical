# Loosely copied from the "bullet.gd" script from Projectiler 2, my final project for Game Engines and GDW
class_name Bubble

extends Area2D

@export var damage: float
@export var travel_speed: float
@export var lifespan: float

var velocity: float

func _ready() -> void:
	velocity = velocity * travel_speed

func _process(delta: float) -> void:
	position.x += velocity

func _on_body_entered(body: Node2D) -> void:
	queue_free()
