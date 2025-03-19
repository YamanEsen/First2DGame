extends Area2D

@onready var game_manager = %GameManager
const file_begin = "res://levels/level"


func _on_body_entered(body):
	if game_manager.has_required_coins():
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		var next_level_path = file_begin + str(next_level_number) + ".tscn"
		get_tree().change_scene_to_file(next_level_path)
	



