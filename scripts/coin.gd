extends Area3D


const ROT_SPEED = 2


func _process(delta):
	rotate_y(deg_to_rad(ROT_SPEED))


func _on_body_entered(body: Node3D) -> void:
	Global.coins += 1
	print(Global.coins)
	#if Global.coins >=
	set_collision_layer_value(3, false)
	set_collision_mask_value(1, false)
	$AnimationPlayer.play("bounce")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free()
