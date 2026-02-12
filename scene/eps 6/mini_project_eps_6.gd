extends Node2D

var player_health = 100
var enemies = ["Goblin", "Orc", "Dragon"]
var potions = 1

func _ready():
	while player_health > 0 and enemies.size() > 0:
		var enemy = enemies[0]
		print("Bertemu:", enemy)

		player_health -= 40
		print("Health:", player_health)

		if player_health <= 0 and potions > 0:
			print("Menggunakan potion...")
			potions -= 1
			player_health += 100
			print("Disembuhkan menjadi:", player_health)
			continue

		elif player_health <= 0:
			print("Kamu mati!")
			break

		print("Mengalahkan", enemy)
		enemies.remove_at(0) 
