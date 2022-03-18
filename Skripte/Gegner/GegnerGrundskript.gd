# Was ist in dem Skript vorhanden / nötig:
# Tot der Zombies; Lebensanzahl; Sounds;

extends Node
var dead = false 
var Schaden
var Leben = 2


var anzSchreie
var Schreiliste

func GegnerLeben():
	pass
	
func _on_Area2D_area_entered(area):
	Leben =- 1
	if Leben <= 0:
		dead() #Gegner soll sterben - Code folgt

func zombieistwuetend():
	# soll er schreien, wenn er damage bekommt? -> Dann im ZombieTypenScript
	pass

func dead():
	pass

func _ready():
	pass 

func randomschreien():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var Nummer = rng.randi_range(0,Schreiliste.size()-1)
	print(Schreiliste[Nummer])
	$AudioStreamPlayer2D.stream = load(Schreiliste[Nummer])
	$AudioStreamPlayer2D.play()

func _input(event):
	if event.is_action_pressed("ui_accept"):
		randomschreien()
