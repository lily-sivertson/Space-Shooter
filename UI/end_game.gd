extends Control


func _ready():
	$Label.text="Thanks for playing!\nYour final score was "+ str(Global.score)+"."

func _on_play_pressed():
	Global.reset()
	get_tree().change_scene_to_file(Global.gamefile)


func _on_quit_pressed():
	get_tree().quit()



func _on_mmenu_pressed():
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")
