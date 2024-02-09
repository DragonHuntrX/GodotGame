extends Node2D

@export var attraction : float
@export var start_vel : Vector2
@export var orbit_enabled: bool

var vel: Vector2


# Called when the node enters the scene tree for the first time.
func _ready():
	vel = start_vel # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if orbit_enabled:
		var att = attraction * 10000
		vel = vel - ((att/(position.x**2 + position.y**2)) * position.normalized())
		position = position + (vel * delta)
