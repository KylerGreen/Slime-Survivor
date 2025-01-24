extends Node2D

func spawn_upgrade():
	var new_upgrade = preload("res://upgrade.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_upgrade.global_position = %PathFollow2D.global_position
	add_child(new_upgrade)


func spawn_mob():
	var new_mob = preload("res://slime.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawn_mob()

func _on_timer_2_timeout():
	spawn_upgrade()

func _on_player_health_depleted():
	%GameOver.visible = true
	get_tree().paused = true
