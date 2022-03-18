extends "res://Skripte/Gegner/GegnerGrundskript.gd"





func _ready():
	setschrei()
	setDaten()

func setschrei(): 
	Schreiliste = [ #Liste von audiospuren
		"res://Sounds/Zombie/ZombieTyp1/zombieSchrei/zombieSchrei.mp3",
		"res://Sounds/Zombie/ZombieTyp1/zombieSchrei/zombieSchrei2.mp3"]

func setDaten(): #setzt Daten wie Leben
	Leben = 3
	Schaden = 1






