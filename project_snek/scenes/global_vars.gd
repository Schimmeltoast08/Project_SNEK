extends Node
### for global variables

var enemy_near = false
var tmp_fix_early_trigger_bug = 0 # for some reason the node sends the "take damage" signal
#									at the start of the game, this just prevents this


# this must be un-commented

func _on_enemy_rootnode_player_near_robot() -> void:
	if tmp_fix_early_trigger_bug > 0:
		enemy_near = true
	tmp_fix_early_trigger_bug += 1


func _on_enemy_rootnode_player_near_robot_exited() -> void:
	enemy_near = false
