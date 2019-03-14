extends Node

var activeIndex = 1


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	var inactives = find_node("InactivePlayers")
	var actives = find_node("players")
	var nums = inactives.get_child_count()
	
	for i in range(0, GameState.players):
		var randplayer = inactives.get_child(0)
		inactives.remove_child(randplayer)
		actives.add_child(randplayer)
	
	var first = actives.get_child(0)
	print(first)
	first.find_node("ActiveCheckBox").pressed = true
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func move_monster(pos):
	
	var monster = get_node("Monster")
	pos = pos + (monster.get_rect().size*monster.get_scale())/2 + Vector2(5,5)
	monster.move_to(pos)

func _on_Location_selected(node):
	move_monster(node.get_position())
