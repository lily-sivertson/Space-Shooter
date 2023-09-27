extends CharacterBody2D

var speed=5
var max_speed=400.00
var rotate_speed=.08
var health=10
var nose=Vector2(0,-60)



'''func get_input():
	var to_return = Vector2.ZERO
	if Input.is_action_pressed("forward"):
		to_return += Vector2(0,-1)
	if Input.is_action_pressed("left"):
		rotation -= rotate_speed
	if Input.is_action_pressed("right"):
		rotation += rotate_speed
	return to_return.rotated(rotation) '''


'''func _physics_process(_delta):
	velocity+=get_input()*speed
	velocity = velocity.normalized() * clamp(velocity.length(),0,max_speed )
	
	position.x= wrap(position.x, 0, Global.VP.x)
	position.y= wrap(position.y, 0, Global.VP.y)
	velocity=velocity.normalized()* clamp(velocity.length(),0,max_speed)
	
	move_and_slide()
	

func _on_timer_timeout():
	#get_parent().remove_child(self)
	hide()
'''
