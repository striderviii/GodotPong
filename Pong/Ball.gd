extends RigidBody2D

var screen_size
export var max_speed = 500

var random_force_x = random_neg(rand_range(200, max_speed))
var random_force_y = random_neg(rand_range(200, max_speed))
var starting_force = Vector2(random_force_x, random_force_y)

# Called when the node enters the scene tree for the first time.
func _ready():
	reset()
	
func random_neg(x):
	if randi() % 100 + 1 > 50:
		return x * -1
	else:
		return x

func reset():
	screen_size = get_viewport_rect().size
	position.x = 1000/2
	position.y = 600/2
	
	apply_central_impulse(starting_force)

func current_y_pos():
	return position.y 
