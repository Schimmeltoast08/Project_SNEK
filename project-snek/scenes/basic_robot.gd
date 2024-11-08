extends CharacterBody2D

signal player_near_robot
signal player_near_robot_exited
signal enemy_attack()
var init_count = 1

var close =false
var first_bug = false

var dir_x =0
var dir_y = 0



func _physics_process(delta: float) -> void:
	var player = get_parent().get_node("CharacterBody2D")
	if player.position.x > position.x:
		dir_x=0.5
	else:
		dir_x=-0.5
	if player.position.y > position.y:
		dir_y=0.5
	else:
		dir_y=-0.5
	
	if close==true:
		print("goo")
		var direction = Vector2(dir_x, dir_y)
		velocity = velocity.normalized()
		velocity = direction * 600
		move_and_slide()


func _on_area_near_body_entered(body):
	player_near_robot.emit()
	$border.visible = true
	if first_bug:
		close=true
		print("true")
	else:
		first_bug=true
	print(close)
	enemy_attack.emit()
	
	
	

func _on_area_near_body_exited(body):
	player_near_robot_exited.emit()
	$border.visible = false
	close=false
		
		
	
	
