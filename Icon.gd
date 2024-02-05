extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_W):
		position.y -= 10
	if Input.is_key_pressed(KEY_S):
		position.y += 10
	if Input.is_key_pressed(KEY_D):
		position.x += 10
	if Input.is_key_pressed(KEY_A):
		position.x -= 10
