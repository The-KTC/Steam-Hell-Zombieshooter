extends Node2D
var ListeDerSchuesse


func _ready():
	ListeDerSchuesse = ["res://Sounds/Weapon/AK_Shot.mp3"]
	pass


func _process(delta):
	#Shoot()
	pass

func _input(event):
	if event.is_action_pressed("shoot"):
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
	Schusston()
	Kugel1.set_position($Position2D.global_position)

func Schusston():
	var AudioStreamPlayer = get_node("WeaponShot")
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var Nummer = rng.randi_range(0,ListeDerSchuesse.size()-1) #erzeugt  züfällige Nummer 
	if AudioStreamPlayer.playing == false: #überprüft schreien darf
		AudioStreamPlayer.stream = load(ListeDerSchuesse[Nummer]) #setzt Audiospur
		AudioStreamPlayer.play() #Spiel audiospur

