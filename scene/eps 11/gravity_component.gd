# gravity_component.gd
extends Node
class_name GravityComponent

@export var gravity: float = 980.0

func apply_gravity(target: Player, delta: float):
	target.velocity.y += gravity * delta
