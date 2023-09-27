extends CharacterBody2D

var Bullet=load("res://Enemy/enemy_bullet.tscn")
var health=7
var x_positions= [300,350,400,450,750,800,850,900]
var initial_position= Vector2.ZERO
var direction= Vector2(0,1)
var wobble =30.0


func _ready():
	initial_position.y=800
	initial_position.x= x_positions[randi() % x_positions.size()]
	position=initial_position

func _physics_process(_delta):
	position-=direction
	position.x=initial_position.x+ sin(position.y/20)*wobble
	if position.y<0:
		queue_free()

func _on_timer_timeout():
	var Player=get_node_or_null("/root/Game/Player_Container/Player")
	var Effects=get_node_or_null("/root/Game/Effects")
	if Player!= null and Effects!=null:
		var bullet=Bullet.instantiate()
		var d = global_position.angle_to_point(Player.global_position)+ PI/2
		bullet.rotation=d
		bullet.global_position=global_position+ Vector2(0,-40).rotated(d)
		Effects.add_child(bullet)

func damage(d):
	health-=d
	if health<=0:
		Global.update_score(500)
		queue_free()
	
'''func _on_area_2d_body_entered(body):
	if body.name== "Player":
		body.damage(100)
		damage(100)'''
		
