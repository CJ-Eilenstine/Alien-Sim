# AbductionDetection.gd
class_name abductionBox
extends Area2D

signal cow_abducted

func _ready():
	self.body_entered.connect(_on_body_entered)

func _on_body_entered(body) -> void:
	if body.has_method("abduct"):
		emit_signal("cow_abducted", body)
