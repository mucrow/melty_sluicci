extends CharacterBody2D

class_name Player

@export var speed: int = 80
@onready var sprite = $Sprite2D


func _physics_process(delta):
	var direction = Input.get_vector('move_left', 'move_right', 'move_up', 'move_down')
	velocity = direction * speed
	move_and_slide()
	update_sprite(direction)


func update_sprite(direction):
	if direction.x == 0 and direction.y == 0:
		sprite.set_is_moving(false)
		sprite.update_frame()
		return

	if direction.y > 0:
		sprite.set_facing(270)
	elif direction.x > 0:
		sprite.set_facing(0)
	elif direction.x < 0:
		sprite.set_facing(180)
	else:	# direction.y < 0
		sprite.set_facing(90)

	sprite.set_is_moving(true)
	sprite.update_frame()
