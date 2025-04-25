extends Node2D

var current_interactions:=[]
var can_interact:=true

func _input(event):
	if event.is_action_pressed("interect") and can_interact:
		if current_interactions:
			can_interact=false

func _process(delta):
	if current_interactions and can_interact:
		current_interactions.sort_custom(_sort_by_nearest)
		

func _sort_by_nearest(area1,area2):
	var area1_dist=global_position.distance_to(area1.global_position)
	var area2_dist=global_position.distance_to(area2.global_position)
	return area1_dist<area2_dist

func _on_area_2d_area_entered(area):
	current_interactions.push_back(area)


func _on_area_2d_area_exited(area):
	current_interactions.erase(area)
