extends RigidBody2D

var speed = 5
var velocity = Vector2.ZERO
func _ready():
	
	rotation_degrees = get_parent().get_node("Player").rotation_degrees
	velocity = get_node("Node2D").global_position
	
	velocity = velocity * speed
	
	apply_impulse(Vector2(),Vector2(500,0).rotated(rotation))


func _process(delta):
	
	pass


func _on_Area2D_area_entered(area):
	#get_parent().remove_child(self)
	pass

func loeschdich():
	get_parent().remove_child(self)
	
	global_rotation_degrees


func _on_Timer_timeout():
	get_parent().remove_child(self)
