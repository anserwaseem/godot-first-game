extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	animation_player.play("pickup") # plays 'pickup' animation which basically hides the sprite, disables the collider, and plays the sound - all as an animation for duration of 1 second, and then call queue_free() method to reset the state of nodes.
