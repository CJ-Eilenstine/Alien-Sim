extends Node2D

@export var buttonsound: AudioStreamPlayer
@export var buttondelay: Timer
var sceneDestination

func _on_play_pressed():
	sceneDestination = "levelSelect"
	buttonsound.play()
	buttondelay.start()


func _on_settings_pressed():
	sceneDestination = "options"
	buttonsound.play()
	buttondelay.start()

func _on_quit_pressed():
	get_tree().quit()




func _on_button_delay_timeout():
	if sceneDestination == "levelSelect":
		get_tree().change_scene_to_file("res://Scenes/Levels/levelSelect.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/UI/options.tscn")
		
