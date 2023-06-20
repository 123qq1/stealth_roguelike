extends CharacterBody2D


const SPEED = 6000.0

func _physics_process(delta):


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var vert_direction = Input.get_axis("move_up", "move_down")
	var hori_direction = Input.get_axis("move_left","move_right")
	if vert_direction:
		velocity.y = vert_direction * SPEED * delta
	else:
		velocity.y = 0
		
	if hori_direction:
		velocity.x = hori_direction * SPEED * delta
	else:
		velocity.x = 0

	move_and_slide()
