class_name abductionArea
extends Area2D

signal abductible_body_entered

func _on_body_entered(body: Node) -> void:
	print("Body entered the abduction area:", body)
	if body.has_method("abduct"):
		emit_signal("abductible_body_entered", body)
		print("Abductible body entered the abduction area:", body)
