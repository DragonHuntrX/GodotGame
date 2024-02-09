extends Sprite2D

@export var rotation_speed : float
var is_rotating : bool


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true) # Replace with function body.
	texture.set("res://icon.svg", 1);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_W):
		position.y -= 500 * delta
	if Input.is_key_pressed(KEY_S):
		position.y += 500 * delta
	if Input.is_key_pressed(KEY_D):
		position.x += 500 * delta
	if Input.is_key_pressed(KEY_A):
		position.x -= 500 * delta
	if Input.is_key_pressed(KEY_R):
		is_rotating = true
	else:
		is_rotating = false
	if is_rotating:
		transform = transform.rotated_local(rotation_speed)
	

		
