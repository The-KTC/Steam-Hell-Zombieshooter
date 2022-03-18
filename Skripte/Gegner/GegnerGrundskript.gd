# Was ist in dem Skript vorhanden / nötig:
# Tot der Zombies; Lebensanzahl; Sounds;

extends Node
var dead = false
var Schaden
var Leben = 2


func GegnerLeben():
	pass
	
func _on_Area2D_area_entered(area):
	Leben =- 1
	if Leben <= 0:
		dead
		pass #Gegner soll sterben - Code folgt
func zombieistwuetend():
	# soll er schreien, wenn er damage bekommt? -> Dann im ZombieTypenScript
	pass
func dead():
	pass

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
