extends CharacterBody2D

var initial_speed=100
var health=10


func _ready():
	velocity= Vector2(0,initial_speed*randf()).rotated(2*PI*randf())

func _physics_process(_delta):
	
	move_and_slide()
	position.x= wrap(position.x,0,Global.VP.x)
	position.y=wrap(position.y,0,Global.VP.y)

func damage(d):
	health-=d
	if health<=0:
		Global.update_score(100)
		queue_free()

