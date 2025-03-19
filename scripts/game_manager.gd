extends Node

var score = 0
const REQUIRED_COINS = 19
@onready var scorelabel = $scorelabel

func add_point():
	score += 1
	show_score()
	

func has_required_coins() -> bool:
	return score >= REQUIRED_COINS


func show_score():
	$HUD.get_node("ScoreLabel").text = "SCORE:" + str(score) + "/19"

