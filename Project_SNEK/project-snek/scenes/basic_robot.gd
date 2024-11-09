extends CharacterBody2D

signal player_near_robot
signal player_near_robot_exited
signal enemy_attack()
var init_count = 1

var close =false
var first_bug = false

var direction_player_x =0
var direction_player_y = 0
var speed = 0.5
var attacking = false

func _physics_process(delta: float) -> void:
	
	#player root
	var player = get_parent().get_node("CharacterBody2D")
	#get direction to player
	if player.position.x > position.x:
		direction_player_x=speed
	else:
		direction_player_x=-speed
	if player.position.y > position.y:
		direction_player_y=speed
	else:
		direction_player_y=-speed
	#makes the enemy follow the player if its not attacking
	if attacking ==false:
		if close==true:
			var direction = Vector2(direction_player_x, direction_player_y)
			velocity = velocity.normalized()
			velocity = direction * 600
			move_and_slide()
		


func _on_area_near_body_entered(body):
	player_near_robot.emit()
	$border.visible = true
	if first_bug:
		attacking= false
		close=true
	else:
		first_bug=true
	
	
	
	
	

func _on_area_near_body_exited(body):
	player_near_robot_exited.emit()
	$border.visible = false
	close=false
		
		
	
	


func _on_attack_area_body_entered(body: Node2D) -> void:
	enemy_attack.emit()
	attacking = true


func _on_attack_area_body_exited(body: Node2D) -> void:
	attacking = false
