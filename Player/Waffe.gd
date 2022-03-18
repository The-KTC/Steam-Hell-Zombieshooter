extends Node2D



func _ready():
	pass




func _process(delta):
	Shoot()
	pass

func _input(event):
	if event.is_action_pressed("ui_accept"):
		Shoot()

onready var Kugel = load("res://Player/Kugel.tscn")

func Shoot():
	var Kugel1 = Kugel.instance()
	get_parent().get_parent().add_child(Kugel1)
	Kugel1.set_position($Position2D.global_position)
