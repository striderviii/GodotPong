extends Node2D


var rect = (Rect2(Vector2(50,50),Vector2(25,100)))
var color = [Color(2,0.0,0.0),Color(0.0,0.0,1.0)] 

func _draw(): 
	draw_rect(rect,color[0]) 

func _ready(): 
	update()
