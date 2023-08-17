extends CharacterBody2D


const SPEED = 300.0

func player():
	pass
func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_left_right = Input.get_axis("ui_left", "ui_right")
	if direction_left_right:
		velocity.x = direction_left_right * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var direction_up_down = Input.get_axis("ui_up", "ui_down")
	if direction_up_down:
		velocity.y = direction_up_down * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
