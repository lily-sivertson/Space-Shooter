extends CharacterBody2D

var initial_speed=100
var health=10


func _ready():
	velocity= Vector2(0,initial_speed*randf()).rotated(2*PI*randf())

func _physics_process(delta):
	
	move_and_slide()
	position.x= wrap(position.x,0,1152)
	position.y=wrap(position.y,0,648)

func damage(d):
	health-=d
	if health<=0:
		queue_free()
