extends Node

export(Texture) var PlayerImage

export (String) var Name
export (String) var Title
export (String) var Home
export (String) var SpecialTitle
export (String) var SpecialText
export (int) var StartStamina
export (int) var StartSanity
export (int) var Focus

export(String, MULTILINE) var StartItems

# Start of each 4 value array
export (int) var Speed
export (int) var Sneak
export (int) var Fight
export (int) var Will
export (int) var Lore
export (int) var Luck


# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
#	get_node("Panel/VBoxContainer2/HBoxContainer/TextureRect").texture=PlayerImage
	find_node("StaminaValue").text=String(StartStamina)
	find_node("SanityValue").text=String(StartSanity)
	
	find_node("Name").text=String(Name)
	find_node("Title").text=String(Title)
	
#	get_node("Panel/VBoxContainer2/HBoxContainer2/VBoxContainer/HBoxContainer/HomeValue").text=String(Home)
	
#	get_node("Panel/VBoxContainer2/HBoxContainer2/VBoxContainer2/SpecialTitle").text=String(SpecialTitle)
#	get_node("Panel/VBoxContainer2/HBoxContainer2/VBoxContainer2/SpecialText").text=String(SpecialText)
	
	find_node("Focus").text=String(Focus)
	
	find_node("SpeedSpinBox").min_value=Speed
	find_node("SpeedSpinBox").max_value=Speed+3
	
	find_node("SneakSpinBox").min_value=Sneak
	find_node("SneakSpinBox").max_value=Sneak+3
	
	find_node("FightSpinBox").min_value=Fight
	find_node("FightSpinBox").max_value=Fight+3
	
	find_node("WillSpinBox").min_value=Will
	find_node("WillSpinBox").max_value=Will+3
	
	find_node("LuckSpinBox").min_value=Luck
	find_node("LuckSpinBox").max_value=Luck+3
	
	find_node("LoreSpinBox").min_value=Lore
	find_node("LoreSpinBox").max_value=Lore+3
	
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
