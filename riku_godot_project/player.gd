extends KinematicBody2D
class_name player

onready var mc_back = $McBack
onready var mc_side_flipped = $McSideFlipped
onready var mc_side = $McSide
onready var mc_front = $McFront
onready var mc_side_flipped2 = $McSideFlipped2
onready var mc_side2 = $McSide2


var input_vector = Vector2.ZERO

var speed = 200
var boost_speed = 100

var animation = 0

func _ready():
	mc_back.hide()
	mc_side_flipped.hide()
	mc_side.hide()
	mc_side_flipped2.hide()
	mc_side2.hide()
	
func _physics_process(delta):
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	if Input.get_action_strength("ui_down") == 1 and Input.get_action_strength("boost") == 1:
		global_position += input_vector * boost_speed * delta
	if Input.get_action_strength("ui_up") == 1 and Input.get_action_strength("boost") == 1:
		global_position += input_vector * boost_speed * delta
	if Input.get_action_strength("ui_right") == 1 and Input.get_action_strength("boost") == 1:
		global_position += input_vector * boost_speed * delta
	if Input.get_action_strength("ui_left") == 1 and Input.get_action_strength("boost") == 1:
		global_position += input_vector * boost_speed * delta
	

	if Input.get_action_strength("ui_down") == 1:
		mc_back.hide()
		mc_side_flipped.hide()
		mc_side.hide()
		mc_front.show()
		mc_side_flipped2.hide()
		mc_side2.hide()

	if Input.get_action_strength("ui_up") == 1:
		mc_back.show()
		mc_side_flipped.hide()
		mc_side.hide()
		mc_front.hide()
		mc_side_flipped2.hide()
		mc_side2.hide()

	if Input.get_action_strength("ui_left") == 1:
		animation += 1
		if animation % 2 == 0:
			mc_back.hide()
			mc_side_flipped.hide()
			mc_side.show()
			mc_front.hide()
			mc_side_flipped2.hide()
			mc_side2.hide()
		else:
			mc_back.hide()
			mc_side_flipped.hide()
			mc_side.hide()
			mc_front.hide()
			mc_side_flipped2.hide()
			mc_side2.show()
			
	if Input.get_action_strength("ui_right") == 1:
		animation += 1
		if animation % 2 == 0:
			mc_back.hide()
			mc_side_flipped.show()
			mc_side.hide()
			mc_front.hide()
			mc_side_flipped2.hide()
			mc_side2.hide()
		else:
			mc_back.hide()
			mc_side_flipped.hide()
			mc_side.hide()
			mc_front.hide()
			mc_side_flipped2.show()
			mc_side2.hide()
	global_position += input_vector * speed * delta
