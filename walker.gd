extends Node2D


var x: int
var y: int

# Called when the node enters the scene tree for the first time.
func _ready():
	x = get_viewport().size.x/2
	y = get_viewport().size.y/2

func _draw():
	draw_circle(Vector2(x, y), 1.0, Color.aqua)

func step():
	var choice = randi() % 4
	match choice:
		0:
			x += 1
		1:
			x -= 1
		2:
			y += 1
		3:
			y -= 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	step()
	update()
