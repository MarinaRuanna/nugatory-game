extends CharacterBody2D

var SPEED: float = 250
@onready var player = get_node("../Player")
var motion = Vector2(0, 0)
var is_following = false

func _physics_process(delta):
	if is_following == true && Input.is_action_pressed("ui_select") && position.distance_to(player.position) > 50:
		velocity = position.direction_to(player.position) * SPEED
		move_and_slide()
	pass

func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		is_following = true
	pass

func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		is_following = false
	pass
