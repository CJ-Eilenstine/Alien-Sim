extends Node2D

var _spawn_speed: float = 1.0 / 2.0
var _spawns_quantity: float # For tracking the quantity
const _spawn_limit: float = 10
var cowCount: float = 0

@onready var tileMap = $TileMap


var cowList = [
	preload("res://Animation/tan_cow.tscn"),
	preload("res://Animation/brown_cow.tscn"),
]

func _ready():
	pass

func _process(delta: float):

	# Increase spawns quantity over time
	_spawns_quantity += delta * _spawn_speed

	# Check if something to spawn
	if _spawns_quantity >= 1 and cowCount < _spawn_limit:
	
	# Get number of spawns to do
		var spawns_count: float = floor(_spawns_quantity)
	
	# Refresh spawns quantity by subtracting
	# number of spawns that will occur.
		_spawns_quantity -= spawns_count

	# Finally spawn things
		for index in int(spawns_count):
			spawn()

func spawn():
	randomize()
	var random_x = randi_range(150,5000)
	var random_y = randi_range(150, 1800)
	$Marker2D.position.x = random_x
	$Marker2D.position.y = random_y
	
	var cowPath = cowList.pick_random()
	_spawn_speed = 1.0 / randf_range(2, 5)
	
	var cow = cowPath.instantiate()
	add_child(cow)
	cow.position = $Marker2D.position
	cowCount += 1
