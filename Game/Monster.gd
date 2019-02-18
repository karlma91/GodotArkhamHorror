extends Container

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	var front = get_node("Front")
	var back = get_node("Back")
	back.hide()
	front.show()
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func move_to(pos):
	var tween= get_node("Tween")
	var offset = rect_size*rect_scale
	offset = offset/2
	tween.interpolate_property(self, "rect_position",
                get_rect().position, pos-offset, 1,
                Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	tween.start()

func _on_Button_pressed():
	var front = get_node("Front")
	var back = get_node("Back")
	if front. is_visible_in_tree():
		back.show()
		front.hide()
	else:
		back.hide()
		front.show()
	
	