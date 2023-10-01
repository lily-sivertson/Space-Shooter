extends Control



func _on_hard_pressed():
	Global.update_gamemode(true)
	$selected2.text="Difficulty: Hard"
	Global.reset()


func _on_easy_pressed():
	Global.update_gamemode(false)
	$selected2.text="Difficulty: Easy"
	Global.reset()


func _on_play_pressed():
	get_tree().change_scene_to_file(Global.gamefile)


func _on_level_1_pressed():
	Global.update_gamefile("res://game.tscn",0)
	Global.reset()
	$selected.text="Selection: Level 1"
	$Highscore.text="Highscore:\n"+ Global.hschart[0]



func _on_level_2_pressed():
	Global.update_gamefile("res://level2.tscn",1)
	$selected.text="Selection: Level 2"
	$Highscore.text="Highscore:\n"+ Global.hschart[1]
	Global.reset()


func _on_level_3_pressed():
	Global.update_gamefile("res://level3.tscn",2)
	$selected.text="Selection: Level 3"
	$Highscore.text="Highscore:\n"+ Global.hschart[2]
	Global.reset()


func _on_endless_pressed():
	Global.update_gamefile("res://endless.tscn",6)
	$selected.text="Selection: Endless mode"
	$Highscore.text="Highscore:\n"+ Global.hschart[6]
	Global.reset()


func _on_level_4_pressed():
	Global.update_gamefile("res://level4.tscn",3)
	$selected.text="Selection: Level 4"
	$Highscore.text="Highscore:\n"+ Global.hschart[3]
	Global.reset()

func _on_practice_pressed():
	Global.update_gamefile("res://practice.tscn",7)
	$selected.text="Selection: Practice mode"
	$Highscore.text="Highscore:\nN/A"
	Global.reset()


func _on_level_5_pressed():
	Global.update_gamefile("res://level5.tscn",4)
	$selected.text="Selection: Level 5"
	$Highscore.text="Highscore:\n"+ Global.hschart[4]
	Global.reset()

func _on_level_6_pressed():
	Global.update_gamefile("res://level6.tscn",5)
	$selected.text="Selection: Level 6"
	$Highscore.text="Highscore:\n"+ Global.hschart[5]
	Global.reset()
