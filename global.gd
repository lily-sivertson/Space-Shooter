extends Node

var VP= Vector2.ZERO
var score=0
var lives=0
var time=0 
var hardmode= false
var gamefile="res://game.tscn"
var highscore=0



func _ready():
	reset()
	update_hs()
	process_mode = Node.PROCESS_MODE_ALWAYS
	randomize()
	VP= get_viewport().size
	var _signal = get_tree().get_root().size_changed.connect(_resize)
	

func _process(_delta):
	if Input.is_action_just_pressed("menu"):
		var menu=get_node_or_null("/root/Game/UI/Menu")
		if menu==null:
			get_tree().quit()
		else:
			if menu.visible:
				get_tree().paused=false
				menu.hide()
			else:
				get_tree().paused=true
				menu.show()
			
	var Asteroid_Container=get_node_or_null("/root/Game/Asteroid_Container")
	var Enemy_Container=get_node_or_null("/root/Game/Enemy_Container")
	if Asteroid_Container!= null and Enemy_Container!= null:
		if Asteroid_Container.get_child_count()==0 and Enemy_Container.get_child_count()==0:
			if gamefile!="res://practice.tscn":
				update_hs()
			get_tree().change_scene_to_file("res://UI/end_game.tscn")
	

func update_lives(l):
	lives += l
	var hud= get_node_or_null("/root/Game/UI/HUD")
	if hud!=null:
		hud.update_lives()
	
	if lives<=0:
		update_hs()
		get_tree().change_scene_to_file("res://UI/end_game.tscn")
	
func update_score(s):
	score+=s
	var hud= get_node_or_null("/root/Game/UI/HUD")
	if hud!=null:
		hud.update_score()

func update_hs():
	if score>highscore:
		highscore=score
		var mmenu= get_node_or_null("/root/Game/UI/main_menu")
		if mmenu!=null:
			mmenu.update_hs()


func update_time(t):
	time+=t
	
func _resize():
	VP=get_viewport().size
	var hud= get_node_or_null("/root/Game/UI/HUD")
	if hud!=null:
		hud.update_lives()
		
func update_gamemode(m):
	hardmode=m
	
func update_gamefile(f):
	gamefile=f

func reset():
	
	get_tree().paused=false
	
	if hardmode==true:
		score=0
		time=30
		lives=3
	else:
		score=0
		time=45
		lives=5
