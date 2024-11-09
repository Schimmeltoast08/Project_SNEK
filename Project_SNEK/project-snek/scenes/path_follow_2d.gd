extends PathFollow2D

var speed = 0.1

func _process(delta):
	progress_ratio += delta * speed
	
func _on_enemy_rootnode_player_near_robot():
	speed = 0
	print("he entered") # this is for debug
	

func _on_enemy_rootnode_player_near_robot_exited():
	speed = 0.1
	print("he exited") # this is also for debug
