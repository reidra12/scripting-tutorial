# Player.gd
extends CharacterBody2D
class_name Player

@export var speed: float = 300.0

@onready var dash_logic: DashComponent = $DashComponent
@onready var gravity_logic: GravityComponent = $GravityComponent
@onready var jump_logic: JumpComponent = $JumpComponent

func _physics_process(delta: float) -> void:
	# 1. Horizontal Movement
	var dir = Input.get_axis("ui_left", "ui_right")
	
	# Only allow normal movement input if not currently dashing
	if not dash_logic.is_dashing:
		velocity.x = dir * speed
	
	# 2. Gravity (Requires delta for acceleration)
	if not is_on_floor():
		gravity_logic.apply_gravity(self, delta)
	
	# 3. Jumping (Handled by JumpComponent)
	jump_logic.handle_jump(self)
	
	# 4. Dashing (Handled by DashComponent)
	if Input.is_action_just_pressed("dash"):
		dash_logic.execute_dash(self)
	
	move_and_slide() # Delta is handled internally here
