extends Control

@export var start_button : Button
@export var settings_button : Button
@export var quit_button : Button

@export var general : Node
@export var settings_menu : Node
 

func _ready() -> void:
	connect_signals()


func connect_signals() -> void:
	start_button.pressed.connect(start_button_pressed)
	settings_button.pressed.connect(settings_button_pressed)
	quit_button.pressed.connect(quit_button_pressed)
#	settings_menu.close_settings.connect(return_to_main_menu)


func start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main/bootcamp/boot_camp.tscn")

func settings_button_pressed() -> void:
	general.hide()
	settings_menu.show()

func quit_button_pressed() -> void:
	get_tree().quit()

#func return_to_main_menu() -> void:
#	general.show()
#	settings_menu.hide()
#Change settings implementation on your needs
