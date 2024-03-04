extends Node2D



func _on_earth_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/cowLevel.tscn")

func _on_planet_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/alien_world.tscn")

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/main_menu.tscn")

func _on_homeworld_farm_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/homeworldFarm.tscn")
