extends Node
var Wave = 0
var AnzZombiesTyp1 = 0   #  Anz steht für Anzahl
var AnzZombiesTyp2 = 0   
var AnzZombiesTyp3 = 0   

var Spawnpoints = []

var Kills = 0

func Zombies():
	AnzZombiesTyp1
	AnzZombiesTyp2
	AnzZombiesTyp3


func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
#	if Zombies >= 1:
#		pass
#		var F1 = Zombie.instance()
#		get_pa
#		
#		

func _input(event):
	if event.is_action_pressed("ui_accept"):
		#Spawnpoints[0].spawnzombie()
		pass


func _on_Timer_timeout():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var Nummer = rng.randi_range(0,Spawnpoints.size()-1) 
	Spawnpoints[Nummer].spawnzombie()
