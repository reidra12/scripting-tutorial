extends Node

var player = {
	"name": "Ardan",
	"stats": {
		"hp": 100,
		"mp": 50
	},
	"inventory": ["Sword", "Potion"]
}

func _ready():
	cek_status()
	got_buff()
	cek_dict()


func cek_status():
	print("Nama Player:", player["name"])
	print("HP Player:", player["stats"]["hp"])

	player["level"] = 1

	if player.has("level"):
		print("Level Player: ", player["level"])

func got_buff():
	var buff = {
		"attack": 15,
		"defense": 10
	}
	player.merge(buff)


func cek_dict():

	print("\n=== Data Player ===")

	for key in player.keys():
		print(key, ":", player[key])

	print("\nJumlah data:", player.size())


func kena_dmg():
	print("terkena damage!")
	player["stats"]["hp"] -= 20
	print("HP Player:", player["stats"]["hp"])
