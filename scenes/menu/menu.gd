extends Control


func _on_start_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _on_settings_btn_pressed() -> void:
	print("Settings Pressed!")


func _on_quit_btn_pressed() -> void:
	get_tree().quit()
