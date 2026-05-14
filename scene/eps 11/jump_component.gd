# jump_component.gd
extends Node
class_name JumpComponent

@export var jump_velocity: float = -400.0

func handle_jump(target: CharacterBody2D):
	# Direct assignment of velocity for an instant impulse
	# We do NOT multiply by delta here because it is a one-time force
	if target.is_on_floor() and Input.is_action_just_pressed("ui_accept"):
		target.velocity.y = jump_velocity
