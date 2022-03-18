extends "res://Skripte/Gegner/GegnerGrundskript.gd"





func _ready():
	setschrei()
	setDaten()

func setschrei():
	Schreiliste = [
		"res://Sounds/Zombie/ZombieTyp1/zombieSchrei/zombieSchrei.mp3",
		"res://Sounds/Zombie/ZombieTyp1/zombieSchrei/zombieSchrei2.mp3"]

func setDaten():
	Leben = 3
	Schaden = 1
