extends CharacterBody2D

var Bullet=load("res://Enemy/enemy_bullet.tscn")
var health=10
var y_positions= [100,150,200,500,550]
var x_positions= [400,500,600,700,800]
var initial_position= Vector2.ZERO
var direction= Vector2(0,0)
var wobble =100.0
var timeleft=15


func _ready():
	initial_position.x= x_positions[randi() % x_positions.size()]
	initial_position.y= y_positions[randi() % y_positions.size()]
	#initial_position.y=150
	position=initial_position

func _physics_process(_delta):
	position+=direction
	position.y=initial_position.y+ sin(position.x/20)*wobble


func _on_timer_timeout():
	var Player=get_node_or_null("/root/Game/Player_Container/Player")
	var Effects=get_node_or_null("/root/Game/Effects")
	if Player!= null and Effects!=null:
		var bullet=Bullet.instantiate()
		var d = global_position.angle_to_point(Player.global_position)+ PI/2
		bullet.rotation=d
		bullet.global_position=global_position+ Vector2(0,-60).rotated(d)
		Effects.add_child(bullet)

func damage(d):
	health-=d
	if health<=0:
		Global.update_score(1000)
		queue_free()
	
'''func _on_area_2d_body_entered(body):
	if body.name== "Player":
		body.damage(100)
		damage(100)'''
		


func _on_countdown_timeout():
	timeleft-=1
	if timeleft<=0:
		queue_free()
	
