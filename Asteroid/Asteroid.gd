extends CharacterBody2D

var initial_speed=100


func _ready():
	velocity= Vector2(0,initial_speed*randf()).rotated(2*PI*randf())

func _physics_process(delta):
	
	move_and_slide()
	position.x= wrap(position.x,0,1152)
	position.y=wrap(position.y,0,648)
