extends CharacterBody2D

var speed=5
var max_speed=400.00
var rotate_speed=.08






func _physics_process(delta):
	if Input.is_action_pressed("left"):
		rotation=rotation-rotate_speed
	if Input.is_action_pressed("right"):
		rotation=rotation-rotate_speed
	if Input.is_action_pressed("forward"):
		velocity=velocity+Vector2(0,-speed).rotated(rotation)
	move_and_slide()
	
	position.x= wrap(position.x, 0, 1152)
	position.y= wrap(position.y, 0, 648)
	velocity=velocity.normalized()* clamp(velocity.length(),0,max_speed)
	
	
	pass
