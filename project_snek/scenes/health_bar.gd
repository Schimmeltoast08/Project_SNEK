extends ProgressBar


@export var player: CharacterBody2D

func _ready() -> void:
	value = 10
	var sb = StyleBoxFlat.new()
	add_theme_stylebox_override("fill", sb)
	sb.bg_color = Color("ff0000") 

func _process(delta: float) -> void:
	#value = move_toward(value,Player.Health,0.2)
	pass

func _on_character_body_2d_player_health_changed(Health, maximum_player_health):
	
	
	Health -= 1
	value = Health
	#var New_Health = Health - 1
	
	# //TODO: Make the health bar smooth. I've been trying for 1h and can't do it. //TODO
	# my only issue: the _process function has no access to the variable Health of the _on_charac... func
	
	#value = move_toward(Health,New_Health,0.2)
	# value is the value of the progress bar
	
