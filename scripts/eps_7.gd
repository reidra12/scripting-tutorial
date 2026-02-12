extends Node2D
#buat var yang kita butuhkan
var player_atk = 1000
var enemy_def = 300
var crit_rate = 0.5
var crit_dmg = 1.2 

func _ready() -> void:
	var player_dmg = hitung_dmg(player_atk, enemy_def)
	var dmg_res = hitung_dmg(player_atk, enemy_def) * 0.1
	var total_dmg = player_dmg - dmg_res
	print("dmg: ", total_dmg)

func hitung_dmg(atk, def):
	var dmg = atk - def
	# logika crit
	if randf() < crit_rate:
		print("crit!!!")
		dmg *= crit_dmg
		return dmg
	else:
		return dmg
