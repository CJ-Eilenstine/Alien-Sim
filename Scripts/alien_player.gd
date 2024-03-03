extends CharacterBody2D

@export var move_speed : float = 450

func _physics_process(_delta):
	#Get input direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
		)
		

	#update velocity
	velocity = input_direction.normalized() * move_speed
	
	# move and slide
	move_and_slide()
