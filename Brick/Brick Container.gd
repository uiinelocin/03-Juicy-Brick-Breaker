extends Node2D

onready var Brick = load("res://Brick/Brick.tscn")
var rows = 7
var columns = 7
var k

onready var VP = get_viewport_rect().size
var B = Vector2(86, 38)

var Levels = [
	[
		[0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0],
		[2,2,2,2,2,2,2],
		[1,1,1,1,1,1,1]
	],
	[
		[0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0],
		[4,4,4,4,4,4,4],
		[3,3,3,3,3,3,3],
		[2,2,2,2,2,2,2],
		[1,1,1,1,1,1,1]
	],
	[
		[6,6,6,6,6,6,6],
		[5,5,5,5,5,5,5],
		[4,4,4,4,4,4,4],
		[3,3,3,3,3,3,3],
		[2,2,2,2,2,2,2],
		[1,1,1,1,1,1,1]
	]
]

func _ready():
	start()

func _physics_process(_delta):
	if get_child_count() == 0:
		Global.unpdate_level(1)
		if Global.level > Levels.size():
			k = get_tree().change_scene("res://HUD/GameOver.tscn")
		else:
			start()
	
func start():
	for c in get_children():
		c.queue_free()
	
	var level = Levels[Global.level]	
	var startx = (VP.x/2) - ((B.x) * (level[0].size()/2))
	var starty = 20
		
	for r in range(level.size()):
		for c in range(level[r].size()):
			var strength = level[r][c]
			if strength > 0:
				var x = startx + (c * B.x)
				var y = starty + (r * B.y)
				var brick = Brick.instance()
				brick.position = Vector2(x, y)
				brick.set_strength(strength)
				add_child(brick)
