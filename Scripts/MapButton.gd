extends Button

@export var buttonsound: AudioStreamPlayer
@export var buttondelay: Timer

func _on_pressed():
	buttonsound.play()
	buttondelay.start()




func _on_buttondelay_timeout():
	get_tree().change_scene_to_file("res://Scenes/Levels/levelSelect.tscn")
