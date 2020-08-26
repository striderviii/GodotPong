extends KinematicBody2D


export var paddle_speed = 250
	
func ai_controller(delta, n_ball):
	if n_ball.position.x < 500:
		position.y *= .5
	if n_ball.position.y > position.y:
		position.y += paddle_speed * delta
	else:
		position.y -= paddle_speed * delta
	

	
