extends StaticBody2D

var win_width : int
var p_width : int

# Called when the node enters the scene tree for the first time.
func _ready():
	win_width = get_viewport_rect().size.x
	p_width = $ColorRect.get_size().x
	print(win_width)
	print(p_width)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(position.x)
	if Input.is_action_pressed("ui_right"):
		position.x += get_parent().PADDLE_SPEED * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= get_parent().PADDLE_SPEED * delta

	position.x = clamp(position.x, p_width / 2, win_width - p_width / 2)
