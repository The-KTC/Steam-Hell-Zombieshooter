# Was ist in dem Skript vorhanden / nötig:
# Tot der Zombies; Lebensanzahl; Sounds;

extends KinematicBody2D
var dead = false 
var Schaden
var Leben 
var Schreiliste

func GegnerLeben():
	pass
	
func _on_Area2D_area_entered(body):
	if body.name == "Kugel" :
		body.get_parent().loeschdich() #löscht Kugel
		randomschreien()
		Leben -= 1
		if Leben <= 0:
			dead() #Gegner soll sterben - Code folgt


func zombieistwuetend():
	# soll er schreien, wenn er damage bekommt? -> Dann im ZombieTypenScript
	pass

func _on_Timerdead_timeout():
	get_parent().remove_child(self)

func dead():
	if dead == false:
		$Timerdead.start() 
		dead = true


func _ready():
	pass

var movement = Vector2.ZERO

func _process(delta):
	var Player =  get_parent().get_parent().get_parent().get_node("Player")
	movement = Player.global_position -global_position
	movement = movement.normalized() * 200
	if dead == false:
		move_and_slide(movement)

func randomschreien(): #schreit züfällige audio
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var Nummer = rng.randi_range(0,Schreiliste.size()-1) #erzeugt  züfällige Nummer 
	if $AudioStreamPlayer2D.playing == false and dead == false: #überprüft schreien darf
		$AudioStreamPlayer2D.stream = load(Schreiliste[Nummer]) #setzt Audiospur
		$AudioStreamPlayer2D.play() #Spiel audiospur
