extends Node2D
# var b = "text"
var player_points = 0
var ai_points = 0
var ball_pos = Vector2(400, 400)
var ball_1
var ball_y


export (PackedScene) var Ball

func _ready():
	new_ball(ball_1)
	
	
func _process(delta):		
	
	$AiPaddle.ai_controller(delta, ball_y)
	#print(ball_y.position)
	reset_ball()
	


func reset_game():
	if Input.is_action_pressed("ui_cancel"):
		var currentScene = get_tree().get_current_scene().get_filename()
		print(currentScene) # for Debug
		get_tree().change_scene(currentScene)

#func reset():
#	var currentScene = get_tree().get_current_scene().get_filename()
#	print(currentScene) # for Debug
#	get_tree().change_scene(currentScene)
	
func score():
	print("AI has %d points" %ai_points)
	print("Player has %d points" %player_points)


func _on_Point_hit():
	ai_points += 1
	score()
	new_ball(ball_1)


func _on_AiSide_player_hit():
	player_points += 1
	score()
	new_ball(ball_1)

func reset_ball():
	if Input.is_action_pressed("ui_reset"):# R key
		new_ball(ball_1)
		
func new_ball(n_ball):
	# Create new ball instance, pass out y position to global variable 
	n_ball = Ball.instance()	
	add_child(n_ball)
	ball_y = n_ball
	return ball_y

#func paddle_ai(n_ball):
	# Pull in global variable for y position of instanced ball and apply it to paddle
	#$AiPaddle.position.y = n_ball.position.y 
	
