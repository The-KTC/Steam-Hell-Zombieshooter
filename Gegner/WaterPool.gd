extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().Spawnpoints.append(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

onready var Zombie = load("res://Gegner/Zombityp1.tscn")
func spawnzombie():
	$AudioStreamPlayer2D.play()
	$Timer.start()
	$Timer2.start()



func _on_Timer_timeout():
	var Zombie1 = Zombie.instance()
	add_child(Zombie1)



func _on_Timer2_timeout():
	$AudioStreamPlayer2D.stop()
