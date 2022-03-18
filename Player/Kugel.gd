extends KinematicBody2D


var velocity = Vector2.ZERO
func _ready():
	
	rotation_degrees = get_parent().rotation_degrees
	velocity = get_node("Node2D").global_position
	print(get_node("Node2D").global_position)
	print(velocity)

func _process(delta):
	move_and_collide(velocity)
	pass
