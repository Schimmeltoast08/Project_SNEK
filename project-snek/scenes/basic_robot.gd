extends CharacterBody2D

signal player_near_robot
signal player_near_robot_exited
signal enemy_attack()
var init_count = 1





func _on_area_near_body_entered(body):
	player_near_robot.emit()
	$border.visible = true
	enemy_attack.emit()

func _on_area_near_body_exited(body):
	player_near_robot_exited.emit()
	$border.visible = false
