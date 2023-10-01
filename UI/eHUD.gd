extends Control

var Indicator=load("res://UI/indicator.tscn")
var lives_pos= Vector2(20, Global.VP.y-20)
var lives_index=30

func _ready():
	update_score()
	update_time()
	update_lives()

func update_score():
	$Score.text= "Score: "+ str(Global.score)
	
func update_time():
	$Time.text= "Time elapsed: " + str(Global.etime)
	
'''func update_lives():
	lives_pos= Vector2(20, Global.VP.y-20)
	for child in $Indicator_Container.get_children():
		child.queue_free()
	for i in range(Global.lives):
		var indicator=Indicator.instantiate()
		indicator.position=lives_pos + Vector2(lives_index*i,0)
		$Indicator_Container.add_child(indicator)'''
		
func update_lives():
	for child in $Indicator_Container.get_children():
		child.queue_free()
	for i in range(Global.lives):
		var indicator = Indicator.instantiate()
		indicator.position = lives_pos + Vector2(lives_index*i, 0)
		$Indicator_Container.add_child(indicator)

func _on_timer_timeout():
	Global.update_etime(1)
	
