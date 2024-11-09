extends CharacterBody2D

signal player_near_robot
signal player_near_robot_exited

var init_count = 1




func _on_area_near_body_entered():
	player_near_robot.emit()
	$border.visible = true

func _on_area_near_body_exited():
	player_near_robot_exited.emit()
	$border.visible = false
