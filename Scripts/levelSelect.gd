extends Node2D



func _on_earth_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/cowLevel.tscn")


func _on_planet_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/alien_world.tscn")
