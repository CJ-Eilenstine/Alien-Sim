extends CharacterBody2D

@export var move_speed: float = 450

func _ready():
	var abduction_area = $abductionArea
	$abductionArea.connect("abductible_body_entered", self._on_abductible_body_entered)

func _physics_process(_delta):
	# Get input direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)

	# Update velocity
	velocity = input_direction.normalized() * move_speed
	
	# Move and slide
	move_and_slide()

func _on_abductible_body_entered(body: Node) -> void:
	if Input.is_action_pressed("abduct"):
		body.abduct()
		print("Abductible body entered the abduction area and is being abducted:", body)
