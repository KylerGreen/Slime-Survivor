extends Area2D


@onready var Player = get_node("/root/Game/Player")

func _on_body_entered(body):
	if body == Player:
		if Global.fire_rate <= .3:
			Global.fire_rate = Global.fire_rate
		elif Global.fire_rate > .6:
			Global.fire_rate -= .2
		else:
			Global.fire_rate -= .1
		queue_free()
		
