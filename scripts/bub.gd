extends CharacterBody2D

@export var speed = 300.0
@export var jump_velocity = -400.0
@export var bubble: Bubble

var facing_right = true

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("a") and is_on_floor():
		velocity.y = jump_velocity

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
		facing_right = velocity.x > 0
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
	
	if Input.is_action_just_pressed("b"): # pulled from "Projectiler 2", my final project for Game Engines and Individual GDW 
		var bubble_instance = bubble.instantiate()
		bubble_instance.global_position = global_position
		bubble_instance.rotation = 180 if facing_right else 0
		owner.add_child(bubble_instance)
