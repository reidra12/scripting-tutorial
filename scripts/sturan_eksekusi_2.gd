extends Node2D

var player_name = "rei"
var health = 100
var is_alive = true

func _ready() -> void:
	print(player_name, " has ", health, " health")
	print("alive: ", is_alive)
