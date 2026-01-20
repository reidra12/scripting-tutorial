extends Node2D

func _ready() -> void:
	var timer = 5
	while timer > 0:
		print("Hitung mundur:", timer)
		timer -= 1
	print("Waktu habis!")
