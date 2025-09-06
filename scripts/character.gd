class_name Character

extends Node3D

@onready var animation_player : AnimationPlayer = %AnimationPlayer

func idle():
	animation_player.play("Idle")

func run():
	animation_player.play("Run")

func jump():
	animation_player.play("Jump")

func fall():
	animation_player.play("Jump_Idle")
