extends CharacterBody2D

func _ready():
	$abductionBox.connect("cow_abducted", self._on_cow_abducted)

func _on_cow_abducted(player):
	if has_method("abduct"):
		abduct()
		print("Cow is being abducted!")
		
func abduct() -> void:
	# Implement abduction logic here
	queue_free()  # Remove the cow from the scene
