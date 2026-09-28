extends CharacterBody2D
var vel = 100

func _physics_process(delta):
	
	#Reinicio la velocidad a 0 en cada ciclo, es su estado base
	velocity.x = 0
	velocity.y = 0
	
	#Si presiono las teclas el personaje se mueve a esta direccion a tal velocidad
	if (Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_UP)):
		velocity.y = -vel
	if(Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT)):
		velocity.x = -vel
	if(Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_DOWN)):
		velocity.y = vel
	if(Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT)):			
		velocity.x = vel	
		
	#Normalizo el vector de velocidad	
	velocity = velocity.normalized() * vel	
	
	#Aplica el movimiento y gestiona las colisiones
	move_and_slide()
