extends Node2D

var player_name = "rei"
var health = 100
var is_alive = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(player_name, " has ", health, " health")
	print("alive: ", is_alive)
