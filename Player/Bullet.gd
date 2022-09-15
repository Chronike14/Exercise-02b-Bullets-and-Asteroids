extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 500.0
var damage = 1


func _ready():
	velocity = Vector2(0,-speed).rotated(rotation)

func _physics_process(_delta):
	velocity = move_and_slide(velocity, Vector2.UP)


func _on_Timer_timeout():
	queue_free()
