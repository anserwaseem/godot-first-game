extends Node2D

const SPEED = 60

var direction = 1 # 1 for forward direction, -1 for backward

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since he previous frame.
func _process(delta):
	if ray_cast_right.is_colliding(): # Move backward if right wall is reached
		direction = -1
		animated_sprite.flip_h = true # Flip the texture
		
	if ray_cast_left.is_colliding(): # Move forward if left wall is reached
		direction = 1
		animated_sprite.flip_h = false
		
	position.x += direction * SPEED * delta
