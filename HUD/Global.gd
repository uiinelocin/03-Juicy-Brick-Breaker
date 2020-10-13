extends Node

var lives = 5
var score = 0
var level = 0
var k

signal changed

func _ready():
	emit_signal("changed")
	
func reset():
	lives = 5
	score = 0
	level = 0
	
func update_score(s):
	score += s
	emit_signal("changed")

func update_lives(l):
	lives += l
	emit_signal("changed")
	if lives <= 0:
		k = get_tree().change_scene("res://HUD/GameOver.tscn")

func unpdate_level(l):
	level += l
	emit_signal("changed")
