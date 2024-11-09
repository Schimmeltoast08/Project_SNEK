extends PathFollow2D

var speed = 0.05

func _ready():
	print("Path follow 2d node in main scene somewhy recieves the signal")
	print("of the area2d in the enemy scene that the player entered the area")
	print("even if he did not. Idfk why, but it sucks")
	print("//Toasti")
	print("")


func _process(delta):
	progress_ratio += delta * speed
	
func _on_enemy_rootnode_player_near_robot():
	speed = 0
	#print("he entered") # this is for debug
	

func _on_enemy_rootnode_player_near_robot_exited():
	speed = 0.05
	#print("he exited") # this is also for debug
