extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 400
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
#	var velocity = Vector2()
#	if Input.is_action_pressed("ui_right"):
#		velocity.x += 1
	var mos_pos = get_viewport().get_mouse_position()
	position.y = mos_pos.y
