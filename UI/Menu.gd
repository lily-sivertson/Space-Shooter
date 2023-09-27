extends Control


func _on_restart_pressed():
	Global.reset()
	get_tree().change_scene_to_file(Global.gamefile)


func _on_quit_pressed():
	get_tree().quit()


func _on_mmenu_pressed():
	get_tree().paused=false
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")
