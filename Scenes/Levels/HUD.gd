extends TextureRect


# Declare member variables here. Examples:

onready var labelD_counter = $LabelD
onready var labelG_counter = $LabelG


func _ready():
	EVENT.connect("point_d_changed", self, "_on_EVENT_point_d_changed")
	EVENT.connect("point_g_changed", self, "_on_EVENT_point_g_changed")
	
func _on_EVENT_point_d_changed(nbcoins):
	labelD_counter.set_text(String(nbcoins))

func _on_EVENT_point_g_changed(nbcoins):
	labelG_counter.set_text(String(nbcoins))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
