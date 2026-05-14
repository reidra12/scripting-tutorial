extends CharacterBody2D
 
var speed = 300
var is_dashing = false
var dash_timer = 0.0
var JUMP_VELOCITY = -400.0
var gravity = 500


func _physics_process(delta: float) -> void:
	var dir = Input.get_axis("ui_left", "ui_right")

	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		 
	if not is_dashing:
		velocity.x = dir * speed

	# Logika Dash 
	if Input.is_action_just_pressed("dash") and not is_dashing:
		print("dashing")
		is_dashing = true
		dash_timer = 0.2
		velocity.x = speed * 3 * dir # Mengubah data secara paksa

	if is_dashing:
		dash_timer -= delta
		if dash_timer <= 0:
			is_dashing = false
	else:
		velocity.x = dir * speed

	move_and_slide()
