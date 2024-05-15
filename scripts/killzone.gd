extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("you died!")
	Engine.time_scale = 0.5 # Slow down the overall game time by half
	body.get_node("CollisionShape2D").queue_free() # Remove player's collider to make it fall the map
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1 # Reset overall game time
	get_tree().reload_current_scene() # reload game when player has died
