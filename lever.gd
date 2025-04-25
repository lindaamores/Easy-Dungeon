extends StaticBody2D

@onready var interactable:Area2D=$interactable
@onready var sprite_2d:Sprite2D=$sprite2D
func _ready():
	interactable.interect=_on_interact
	
func _on_interact():
	if $Sprite2D.flip_V==false:
		$Sprite2D.flip_V=true
		print("123")
		interactable.is_interactable=false
