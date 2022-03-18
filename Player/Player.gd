extends KinematicBody2D


var velocity = Vector2.ZERO
export var speed = 8

func _ready():
	pass 

func _process(delta):
	
	
	
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if input_vector.length() > 1 :
		input_vector = input_vector.normalized()
	
	
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity = Vector2.ZERO
	
	velocity = velocity * speed
	move_and_collide(velocity)
	
	look_at(get_global_mouse_position())
