extends Sprite2D


class_name CharacterSpritesheetAnimator


var animation_speed = 0.3
var time_to_next_frame = animation_speed
var is_moving = true
var base_frame = 0
var current_vframe = 1


func _ready():
	set_facing(270)
	set_is_moving(false)


func _process(delta):
	if not is_moving:
		return
	time_to_next_frame -= delta
	if time_to_next_frame <= 0.0:
		current_vframe = (current_vframe + 1) % 4
		update_frame()
		time_to_next_frame += animation_speed


func update_frame():
	if current_vframe == 3:
		self.frame = base_frame + 1
	else:
		self.frame = base_frame + current_vframe


func update_with_move_input_vector(move_input_vector):
	if move_input_vector.x == 0 and move_input_vector.y == 0:
		set_is_moving(false)
		update_frame()
		return

	if move_input_vector.y > 0:
		set_facing(270)
	elif move_input_vector.x > 0:
		set_facing(0)
	elif move_input_vector.x < 0:
		set_facing(180)
	else:	# move_input_vector.y < 0
		set_facing(90)

	set_is_moving(true)
	update_frame()


func set_is_moving(is_moving):
	if self.is_moving == is_moving:
		return
	self.is_moving = is_moving
	if self.is_moving:
		current_vframe = 0
		time_to_next_frame = animation_speed
	else:
		current_vframe = 1


func set_facing(direction):
	base_frame = floor(direction / 90) * 3
