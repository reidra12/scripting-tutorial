extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var item_price = 20000
	var quantity = 3
	var tax_rate = 0.1
	var total_cost = (item_price * quantity) * (1 + tax_rate)
	print(total_cost)
