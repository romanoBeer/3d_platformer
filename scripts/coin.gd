extends Area3D

const ROT_SPEED = 2
@export var hud : CanvasLayer


func _process(delta):
	rotate_y(deg_to_rad(ROT_SPEED))


func _on_body_entered(body: Node3D) -> void:
	Global.coins += 1
	
	hud.get_node("CoinsLabel").text = str(Global.coins)
	
	if Global.coins >= Global.NUM_COINS_TO_WIN:
		get_tree().change_scene_to_file("res://scenes/menu/menu.tscn")
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
	set_collision_layer_value(3, false)
	set_collision_mask_value(1, false)
	$AnimationPlayer.play("bounce")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free()
