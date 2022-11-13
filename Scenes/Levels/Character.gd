extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const speed = 350
var vector = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	vector.y = int(Input.is_action_pressed("uit_down")) - int(Input.is_action_pressed("uit_up"))


func _process(delta: float) -> void:
	move_and_slide(vector * speed)

