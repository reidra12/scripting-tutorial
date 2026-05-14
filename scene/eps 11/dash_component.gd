# dash_component.gd
extends Node
class_name DashComponent

@export var dash_duration: float = 0.2
@export var dash_multiplier: float = 3.0

var dash_timer: float = 0.0
var is_dashing: bool = false
var original_speed: float = 0.0
var current_target: Player = null

func _physics_process(delta: float):
	if is_dashing:
		dash_timer -= delta # Correct delta usage for timing
		if dash_timer <= 0.0:
			end_dash()

func execute_dash(target: Player):
	if is_dashing:
		return 
		
	current_target = target
	original_speed = target.speed
	
	# Apply boost logic
	var dir = Input.get_axis("ui_left", "ui_right")
	if dir == 0: dir = 1 # Dash forward if idle
	
	target.velocity.x = (original_speed * dash_multiplier) * dir
	dash_timer = dash_duration
	is_dashing = true

func end_dash():
	is_dashing = false
	if current_target != null:
		# Restore the player to their normal speed state
		current_target = null
