extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pointG : int = 0 setget set_pg, get_pg
var pointD : int = 0 setget set_pd, get_pd
var wallHited : bool = false setget set_wall, get_wall


func set_pg(value: int) -> void:
	if value != pointG:
		pointG = value
		EVENT.emit_signal("point_g_changed", pointG)

func get_pg() -> int: return pointG

func set_pd(value: int) -> void:
	if value != pointD:
		pointD = value
		EVENT.emit_signal("point_d_changed", pointD)

func get_pd() -> int: return pointD

func set_wall(value : bool):
	if value != wallHited:
		wallHited = value
		EVENT.emit_signal("wall_hit")

func get_wall(): return wallHited

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	EVENT.connect("point_g_add", self, "_on_EVENT_point_g_add")
	EVENT.connect("point_d_add", self, "_on_EVENT_point_d_add")

func _on_EVENT_point_g_add():
	set_pg(pointG + 1)


func _on_EVENT_point_d_add():
	set_pd(pointD + 1)
