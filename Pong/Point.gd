extends Area2D


signal hit


func _on_Point_body_entered(body):
	print('AI Scored!')
	emit_signal('hit')


