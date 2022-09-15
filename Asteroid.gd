extends KinematicBody2D

var velocity = Vector2.ZERO
var initial_speed = 3.0

func _ready():
	velocity = Vector2(0, randf() * initial_speed).rotated(randf()*2*PI)

func _physics_process():
	position = position + velocity
	
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600)
