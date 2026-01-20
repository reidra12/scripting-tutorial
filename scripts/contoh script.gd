extends Node

# var player_name = "ava"
var player_name = "ivan" 
var health = 100
var is_alive = true

func _ready():
	print(player_name, " has ", health, " health.")
	print("Alive: ", is_alive)
