extends Node2D

export var shrink_amount = 0.04
export var hue_amount = 0.03
export var fade_amount = 0.03
export var desaturate_amount = 0
export var darken_amount = 0.001

func _ready():
	randomize()

func _physics_process(_delta):
	pass
