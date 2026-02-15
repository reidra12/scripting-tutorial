extends Node2D

var inventory: Array = []
var party: Array = []

func _ready():
	print("=== GAME START ===")
	add_item("Potion")
	add_item("Sword")
	add_item("Shield")
	show_inventory()
	remove_item("Shield")
	show_inventory()

func add_item(item_name: String):
	inventory.append(item_name)
	print(item_name + " added!")

func remove_item(item_name: String):
	if inventory.has(item_name):
		inventory.erase(item_name)
		print(item_name + " removed!")
	else:
		print("Item not found!")

func show_inventory():
	print("Inventory:")
	for i in inventory:
		print("-", i)
	print("Total item:", inventory.size())
	print("----------------")

func test_index_access():
	if inventory.size() > 0:
		print("Item pertama:", inventory[0])

#Party ==================================================

func add_to_teammate(character_name: String):
	if party.size() >= 3:
		print("Party full!")
		return
	
	party.append(character_name)
	print(character_name + " joined the party!")

func show_party():
	print("=== Team Mate ===")
	for member in party:
		print(member)
	print("----------------")
