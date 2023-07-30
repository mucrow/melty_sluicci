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
	time_to_next_frame -= delta
	if time_to_next_frame <= 0.0:
		if is_moving:
			current_vframe = (current_vframe + 1) % 4
			update_frame()
		time_to_next_frame += animation_speed


func update_frame():
	if current_vframe == 3:
		self.frame = base_frame + 1
	else:
		self.frame = base_frame + current_vframe


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
