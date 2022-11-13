extends KinematicBody2D

var speed=80.0
var velocity=Vector2(1,1)




var vectorCenter = Vector2(530,310)

func _physics_process(delta):
	var collision=move_and_collide(velocity*delta*speed)
	if collision:
		velocity=velocity.bounce(collision.normal)
		speed = speed * 1.1
		if(collision.collider.name == "MurDroite"):
			EVENT.emit_signal("point_g_add")
			position.x = 530
			position.y = 310
			speed = 80.0
		if(collision.collider.name == "MurGauche"):
			EVENT.emit_signal("point_d_add")
			position.x = 530
			position.y = 310
			speed = 80.0

