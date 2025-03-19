extends Area2D

@onready var game_manager = %GameManager


func _on_body_entered(body):
	if game_manager.has_required_coins():
		get_tree().change_scene_to_file("res://scenes/endscene.tscn")
