extends Node2D

func _on_play_pressed():
	pass # Replace with function body.


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/UI/options.tscn")


func _on_quit_pressed():
	get_tree().quit()


