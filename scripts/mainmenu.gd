extends Node

@onready var transition = $Transition

func _on_button_pressed():
	transition.play("fade_out")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/options.tscn")


func _on_button_3_pressed():
	get_tree().quit()


func _on_transition_animation_finished(anim_name):
	get_tree().change_scene_to_file("res://scenes/levelscreen.tscn")
