extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass




func _on_Button_pressed():
	var name = get_parent().get_node('LineEdit')
	var text = name.get_text()
	var list = get_parent().get_node('ItemList')
	if text.length() > 0 && list.get_item_count() < 8:
		print(text)
		list.add_item(name.get_text())
		var label = get_parent().get_node('Label')
		label.set_text('Players: %d' % list.get_item_count())
	name.clear()
	


func _on_Button2_pressed():
	pass # replace with function body
