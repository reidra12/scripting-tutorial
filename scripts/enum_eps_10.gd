extends Node2D

enum PlayerState {
	IDLE,
	RUN,
}

var state = PlayerState.IDLE

func _ready() -> void:
	state = PlayerState.IDLE 
	print("idle")

func _process(_delta: float) -> void:
	if Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		if state != PlayerState.RUN:
			change_state(PlayerState.RUN)

	else:
		if state != PlayerState.IDLE:
			change_state(PlayerState.IDLE)

func change_state(new_state):
	state = new_state
	
	if state == PlayerState.RUN:
		print("run")
	elif state == PlayerState.IDLE:
		print("idle")
