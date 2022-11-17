extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
		EVENT.connect("wall_hit", self, "_on_EVENT_wallhit")
		var audioStream: AudioStreamSample = preload("res://Audio/hit.wav")
		self.set_stream(audioStream)
		self.set_volume_db(-15)

func _on_EVENT_wallhit():
	self.play()
	GAME.set_wall(false)
	
