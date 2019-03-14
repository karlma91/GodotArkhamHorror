extends Node2D

signal selected
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_mouse_entered():
	get_node("Label").visible = false;

func _on_Area2D_mouse_exited():
	get_node("Label").visible = true;


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_action_released("mouse_press"):
			if event.button_index == BUTTON_LEFT:
				emit_signal("selected",self)
