extends Node
 
@onready var transition = $Transition
var mainmusic_bus = AudioServer.get_bus_index("mainmusic")
var music_on_icon = preload("res://Speaker-0.png")
var music_off_icon = preload("res://Speaker-Crossed.png")

func _on_texture_button_pressed():
	AudioServer.set_bus_mute(mainmusic_bus, not AudioServer.is_bus_mute(mainmusic_bus))
	if AudioServer.is_bus_mute(mainmusic_bus):
		$mainscreen/Sound.texture_normal = music_off_icon
	else:
		$mainscreen/Sound.texture_normal = music_on_icon


func _on_button_pressed():
	get_tree().change_scene_to_file("res://levels/level2.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://levels/level2.tscn")


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://levels/level3.tscn")


func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://levels/level4.tscn")


func _on_button_5_pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")


func _on_button_6_pressed():
	get_tree().change_scene_to_file("res://levels/level5.tscn")


func _on_button_7_pressed():
	get_tree().change_scene_to_file("res://levels/level6.tscn")

func _ready():
	transition.play("fade_in")



