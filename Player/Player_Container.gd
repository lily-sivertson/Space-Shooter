extends Node2D

var Player =load("res://Player/player.tscn")
var Forcefield=load("res://Player/forecfield.tscn")

func _physics_process(_delta):
	if get_child_count()==0:
		#var ffield=Forcefield.instantiate()
		var player=Player.instantiate()
		#ffield.position=Vector2(576,324)
		#add_child(ffield)
		#ffield.show()
		player.position=Vector2(576,324)
		add_child(player)
		
		
		
