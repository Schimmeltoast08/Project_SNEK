extends ProgressBar


@export var player: CharacterBody2D

func _ready() -> void:
	value = 10
 
func _on_character_body_2d_player_health_changed(Health, maximum_player_health):
	
	# because the health gets sent here before it gets taken away from the player, this takes it away here too.
	# i know this is spaghetti code but i gotta go but don't want to leave this not working rn. // Toasti :3
	Health -= 1
	
	# value is the value of the progress bar
	value = Health
