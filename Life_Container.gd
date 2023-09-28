extends Node2D
var y_positions= [100,150,200,250,300,350,400,450,500,550]
var x_positions= [100,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	var life=load("res://Effects/lifes.tscn")
	var Life_Container= get_node_or_null("/root/Game/Life_Container")
	if Life_Container!=null:
		if Life_Container.get_child_count()<3:
			var lifejam= life.instantiate()
			lifejam.position.x= x_positions[randi() % x_positions.size()]
			lifejam.position.y= y_positions[randi() % y_positions.size()]

			Life_Container.add_child(lifejam)
