extends Node2D

func _ready() -> void:
	var is_alive = true
	var has_key = false
	print(is_alive and has_key) # outputnya false
