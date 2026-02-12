extends Node2D
# contoh Array yang kita gunakan pada mini project 6
var enemies = ["goblin", "orc", "dragon"]

func _ready() -> void:
	menambah_dan_menghapus_array()

func mengakses_data_array():
	print(enemies[0])

func menambah_dan_menghapus_array():
	enemies.append("slime")
	print(enemies)
	enemies.erase("goblin")
	print(enemies)

func mengubah_data_dalam_array():
	enemies[0] = "slime"
	print(enemies)

func mengenal_index_array():
	for enemy in enemies:
		print("index ",enemies.find(enemy), " :", enemy)
