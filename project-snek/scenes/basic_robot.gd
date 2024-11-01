extends CharacterBody2D

var movement_speed = 1
var direction:int = 1
var start_position
var end_position

func _ready() -> void:
	start_position = int($"../start_position".position.x)
	end_position = int($"../end_position".position.x)
	position.x = start_position
	position.y = $"../end_position".position.y



func _process(delta: float) -> void:
	#calculate if main character is near to robot
	var near = (position.x - $"../../CharacterBody2D".position.x < 100 && position.x - $"../../CharacterBody2D".position.x > -100 &&
		position.y - $"../../CharacterBody2D".position.y < 150 && position.y - $"../../CharacterBody2D".position.y > -150)
	# /calculate if main character is near to robot\
	
	if(position.x == start_position): direction = 1
	elif(position.x == end_position): direction = -1
	
	if  !(Input.is_action_pressed("button_e") && near):
		if(direction == 1): position.x +=1	
		else: position.x -=1	
			
	if near: $border.visible = true
	else: $border.visible = false
