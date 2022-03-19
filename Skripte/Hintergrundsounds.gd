extends Node
var ScaryHintergrundLiedListe = [
		"res://Sounds/BackgroundToene/dungeonHintergrundsound_3_36_mins.mp3"]

func _ready():
	setScaryHintergrundLied()
func setScaryHintergrundLied():
	RandomScaryHintergrundLied()

#func _on_HSlider_value_changed(value):
#	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
#	if $HSlider.value == -20:
#		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -100)
#		pass
#	$TextureProgress.value = -4.6*$HSlider.value

func RandomScaryHintergrundLied(): #verwendet zufällige Hintergrundmusik
	var AudioStreamPlayer = get_parent().get_node("Node2D").get_node("AudioStreamPlayer")
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var Nummer = rng.randi_range(0,ScaryHintergrundLiedListe.size()-1) #erzeugt  züfällige Nummer 
	if AudioStreamPlayer.playing == false: #überprüft schreien darf
		AudioStreamPlayer.stream = load(ScaryHintergrundLiedListe[Nummer]) #setzt Audiospur
		AudioStreamPlayer.play() #Spiel audiospur
