extends Control

var k

func _on_Play_pressed():
	k = get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
