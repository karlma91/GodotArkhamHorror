extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	print("game loaded")

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func start_game():
	print("Game Started")
	get_tree().change_scene("res://Map.tscn")
