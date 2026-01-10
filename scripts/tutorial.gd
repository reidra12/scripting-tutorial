extends Node2D

var health = 5 # integer / int -> angka yg bukan desimal

#var -> kata perintahnya
# health -> nama variabel  nya
# 5 -> nilai / value dari variabel nya 


var damage = 0.5 # float -> angka desimal
var nama = "reidra" #string -> kata atau karakter
var koordinat = Vector2(0,0) #Vector2 -> koordinat (x,y)
var saklar_hidup = true #bool/ boolean -> true atau false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(health)
	print(damage)
	print(nama)
	print(koordinat)
	print(saklar_hidup)
	
