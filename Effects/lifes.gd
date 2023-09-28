extends CharacterBody2D

var y_positions= [100,150,200,250,300,350,400,450,500,550]
var x_positions= [100,150,200,250,300,350,400,450,500,550,600,650,700,750,800850,900,950,1000]
var initial_position= Vector2.ZERO

var timeleft=15


func _ready():
	initial_position.x= x_positions[randi() % x_positions.size()]
	initial_position.y= y_positions[randi() % y_positions.size()]



'''func _on_timer_timeout():
	var life=load("res://Effects/lifes.tscn")
	var Life_Container= get_node_or_null("/root/Game/Life_Container")
	if Life_Container!=null:
		if Life_Container.get_child_count()<2:
			var lifejam= life.instantiate()
			Life_Container.add_child(lifejam)'''


func _on_area_2d_body_entered(body):
	if body.name=="Player":
		Global.update_lives(1)
		queue_free()
		
