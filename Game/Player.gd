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
	get_node("Panel/VBoxContainer2/HBoxContainer/TextureRect").texture=PlayerImage
	get_node("Panel/VBoxContainer2/HBoxContainer/VBoxContainer/HBoxContainer3/StaminaValue").text=String(StartStamina)
	get_node("Panel/VBoxContainer2/HBoxContainer/VBoxContainer/HBoxContainer2/SanityValue").text=String(StartSanity)
	
	get_node("Panel/VBoxContainer2/HBoxContainer/VBoxContainer/HBoxContainer/VBoxContainer/Name").text=String(Name)
	get_node("Panel/VBoxContainer2/HBoxContainer/VBoxContainer/HBoxContainer/VBoxContainer/Title").text=String(Title)
	
	get_node("Panel/VBoxContainer2/HBoxContainer2/VBoxContainer/HBoxContainer/HomeValue").text=String(Home)
	
	get_node("Panel/VBoxContainer2/HBoxContainer2/VBoxContainer2/SpecialTitle").text=String(SpecialTitle)
	get_node("Panel/VBoxContainer2/HBoxContainer2/VBoxContainer2/SpecialText").text=String(SpecialText)
	
	get_node("Panel/VBoxContainer2/HBoxContainer2/VBoxContainer/Focus").text=String(Focus)
	
	get_node("Panel/VBoxContainer2/GridContainer/SpeedSlider").min_value=Speed
	get_node("Panel/VBoxContainer2/GridContainer/SpeedSlider").max_value=Speed+3
	
	get_node("Panel/VBoxContainer2/GridContainer/SneakSlider").min_value=Sneak
	get_node("Panel/VBoxContainer2/GridContainer/SneakSlider").max_value=Sneak+3
	
	get_node("Panel/VBoxContainer2/GridContainer/FightSlider").min_value=Fight
	get_node("Panel/VBoxContainer2/GridContainer/FightSlider").max_value=Fight+3
	
	get_node("Panel/VBoxContainer2/GridContainer/WillSlider").min_value=Will
	get_node("Panel/VBoxContainer2/GridContainer/WillSlider").max_value=Will+3
	
	get_node("Panel/VBoxContainer2/GridContainer/LuckSlider").min_value=Luck
	get_node("Panel/VBoxContainer2/GridContainer/LuckSlider").max_value=Luck+3
	
	get_node("Panel/VBoxContainer2/GridContainer/LoreSlider").min_value=Lore
	get_node("Panel/VBoxContainer2/GridContainer/LoreSlider").max_value=Lore+3
	
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
