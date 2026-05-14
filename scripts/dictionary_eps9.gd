extends Node2D

var player_status = {
	"name": "Ardan",
	"health": 100,
	"mana": 50
}

var player = {
	"stats": {"hp": 100, "mp": 50},
	"inventory": ["sword", "potion"]
}

var enemy_stats = {
	"Goblin": 30,
	"Orc": 60,
	"Dragon": 200
}

func _ready() -> void:
	loop_dictionary()










func print_player_name():
	print(player_status["name"]) 
	# output -> Ardan 

func mengurangi_health():
	player_status["health"] -= 20
	print(player_status) 
	# outputnya -> {name: Ardan, health: 80, mana: 50}

func menambah_mengirangi_dict():
	player_status["level"] = 5
	# outputnya -> {name: Ardan, health: 80, mana: 50, level : 5} 

func loop_dictionary():
	print("enemy hp : ")
	print("")
	for key in enemy_stats.keys():
		print(key, ": ", enemy_stats[key])
