extends CharacterBody2D

class_name Player

@export var speed: int = 80
@onready var sprite = $Sprite2D


func _physics_process(delta):
	var move_input_vector = Input.get_vector('move_left', 'move_right', 'move_up', 'move_down')
	velocity = move_input_vector * speed
	move_and_slide()
	sprite.update_with_move_input_vector(move_input_vector)
