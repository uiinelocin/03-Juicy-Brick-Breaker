extends Sprite

var on = true

func _ready():
	update()

func turn_on():
	on = true
	update()

func turn_off():
	on = false
	update()

func update():
	if on:
		region_rect = Rect2(70, 0, 70, 70)
	else:
		region_rect = Rect2(0, 0, 70, 70)
		
