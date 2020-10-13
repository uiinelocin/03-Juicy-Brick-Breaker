extends Node2D

onready var Ball = load("res://Ball/Ball.tscn")
var speed = 300

func _ready():
	randomize()
	
func _physics_process(_delta):
	if get_child_count() == 0:
		load_ball()
	
func load_ball():
	var ball = Ball.instance()
	var impusle = Vector2.RIGHT * speed
	impusle = impusle.rotated(randf() * -PI) 
	ball.apply_central_impulse(impusle)
	add_child(ball)
