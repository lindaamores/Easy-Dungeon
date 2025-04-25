extends CharacterBody2D

var enemy_inattack_range=false
var enemy_attack_cooldown=true 
var health = 100
var player_alive = true
var speed=150
@export var attacking =false
@onready var anim = $AnimatedSprite2D

func _process(delta):
	var direction=movement_vector().normalized()
	velocity= speed* direction
	move_and_slide()

func movement_vector():
	
	var movement_x=Input.get_action_strength("move_right")-Input.get_action_strength("move_left")
	var movement_y=Input.get_action_strength("move_down")-Input.get_action_strength("move_up")
	if !attacking:
		if movement_x!=0 or movement_y!=0:
			anim.play("run")
		else:
			anim.play("idle")
		if movement_x==-1:
			$AnimatedSprite2D.flip_h=true
		elif movement_x==1:
			$AnimatedSprite2D.flip_h=false
			
	return Vector2(movement_x, movement_y)
