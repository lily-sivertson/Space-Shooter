extends Node

func _ready():
	randomize()

func _process(_delta):
	if Input.is_action_pressed("menu"):
		get_tree().quit()
