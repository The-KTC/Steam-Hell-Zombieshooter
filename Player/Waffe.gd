extends Node2D



func _ready():
	pass


func _process(delta):
	#Shoot()
	pass

func _input(event):
	if event.is_action_pressed("ui_accept"):
		Shoot()

onready var Kugel = load("res://Player/Kugel.tscn")
onready var Schusspartikel = load("res://Animation/Schusspartikel.tscn")

func Shoot():
	#$Schusspartikel.emitting = true
	var Schusspartikel1 = Schusspartikel.instance()
	#Schusspartikel1.set_position($Position2D.global_position)
	#Schusspartikel1.global_rotation = global_rotation
	add_child(Schusspartikel1)
	
	var Kugel1 = Kugel.instance()
	get_parent().get_parent().add_child(Kugel1)

	Kugel1.set_position($Position2D.global_position)
