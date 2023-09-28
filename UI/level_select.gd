extends Control



func _on_hard_pressed():
	Global.update_gamemode(true)
	Global.reset()


func _on_easy_pressed():
	Global.update_gamemode(false)
	Global.reset()


func _on_play_pressed():
	get_tree().change_scene_to_file(Global.gamefile)


func _on_level_1_pressed():
	Global.reset()
	Global.update_gamefile("res://game.tscn")


func _on_level_2_pressed():
	Global.update_gamefile("res://level2.tscn")
	Global.reset()


func _on_level_3_pressed():
	Global.update_gamefile("res://level3.tscn")
	Global.reset()


func _on_endless_pressed():
	Global.update_gamefile("res://endless.tscn")
	Global.reset()
