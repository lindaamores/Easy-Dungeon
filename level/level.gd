extends Node

func _on_button_pressed():
	$lattice.position.x=-4000

func _on_button_2_pressed():
	$lattice2.position.x=-4000

func _on_button_3_pressed():
	$lattice3.position.x=-4000

func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://finish.tscn")
