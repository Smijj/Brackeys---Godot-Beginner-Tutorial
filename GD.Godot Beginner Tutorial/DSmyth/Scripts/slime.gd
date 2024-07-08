extends Node2D


@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

const m_Speed = 60
var m_Direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		m_Direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		m_Direction = 1
		animated_sprite.flip_h = false
		
	position.x += m_Direction * m_Speed * delta
