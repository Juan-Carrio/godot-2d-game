extends CharacterBody2D
var vel = 100

func _physics_process(delta):
	print("FUNCIONANDO")
	if (Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_UP)):
		velocity.y = -vel
	elif(Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT)):
		velocity.x = -vel
	elif(Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_DOWN)):
		velocity.y = vel
	elif(Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT)):			
		velocity.x = vel	
	else:
		velocity.x = 0
		velocity.y = 0
	move_and_slide()
