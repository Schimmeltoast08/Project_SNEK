extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false


func _on_character_body_2d_player_died():
	self.visible = true
