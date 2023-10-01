extends Node2D
var maxast=8
var maxasth=15
var maxen=4
var maxenh=6

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	



func _on_a_timer_timeout():
	if Global.hardmode==false:
		var Sast=load("res://Asteroid/s_asteroid.tscn")
		var Ast=load("res://Asteroid/asteroid.tscn")
		var asts= [Sast, Ast]
		var Ast_cont= get_node_or_null("/root/Game/Asteroid_Container")
		if Ast_cont!=null:
			if Ast_cont.get_child_count()<maxast:
				var Asteroids=asts[randi() % asts.size()]
				var ast= Asteroids.instantiate()
				Ast_cont.add_child(ast)
	else:
		pass

func _on_etimer_timeout():
	if Global.hardmode==false:
		var En1=load("res://Enemy/enemy.tscn")
		var En2=load("res://Enemy/enemy_2.tscn")
		var En3=load("res://Enemy/enemy_3.tscn")
		var enemies=[En1,En2,En3]
		var En_cont= get_node_or_null("/root/Game/Enemy_Container")
		if En_cont!=null:
			if En_cont.get_child_count()<maxen:
				var Enemy =enemies[randi() % enemies.size()]
				var enm= Enemy.instantiate()
				En_cont.add_child(enm)
	else: 
		pass #add stuff to stop the timer so its not wasting


func _on_a_timerhard_timeout():
	if Global.hardmode==true:
		var Sast=load("res://Asteroid/s_asteroid.tscn")
		var Ast=load("res://Asteroid/asteroid.tscn")
		var asts= [Sast, Ast]
		var Ast_cont= get_node_or_null("/root/Game/Asteroid_Container")
		if Ast_cont!=null:
			if Ast_cont.get_child_count()<maxasth:
				var Asteroids=asts[randi() % asts.size()]
				var ast= Asteroids.instantiate()
				Ast_cont.add_child(ast)
	else:
		pass


func _on_etimerhard_timeout():
	if Global.hardmode==true:
		var En1=load("res://Enemy/enemy.tscn")
		var En2=load("res://Enemy/enemy_2.tscn")
		var En3=load("res://Enemy/enemy_3.tscn")
		var enemies=[En1,En2,En3]
		var En_cont= get_node_or_null("/root/Game/Enemy_Container")
		if En_cont!=null:
			if En_cont.get_child_count()<maxenh:
				var Enemy =enemies[randi() % enemies.size()]
				var enm= Enemy.instantiate()
				En_cont.add_child(enm)
	else:
		pass
