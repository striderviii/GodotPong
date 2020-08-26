extends Area2D

signal player_hit

func _on_AiPoint_body_entered(body):
	print('Player scored')
	emit_signal('player_hit')
