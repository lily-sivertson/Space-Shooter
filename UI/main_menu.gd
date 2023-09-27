extends Control

func _ready():
	update_hs()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://UI/level_select.tscn")

func _on_quit_pressed():
	get_tree().quit()

func update_hs():
	$Highscore.text= "High Score: " + str(Global.highscore)
