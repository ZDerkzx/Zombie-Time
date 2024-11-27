extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var direction = ""
var inventory = [] 


func _physics_process(delta):
	playerMovement(delta)


func playerMovement(delta):
	if Input.is_action_pressed("ui_down"):
		velocity.y = +SPEED
		velocity.x = 0
		Anim("down")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
		velocity.x = 0
		Anim("up")
	elif Input.is_action_pressed("ui_right"):
		velocity.x = +SPEED
		velocity.y = 0
		Anim("right")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		velocity.y = 0
		Anim("left")
	else:
		Anim("idle")
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()
	
func Anim(anim_direct):
	var anim = $AnimatedSprite2D
	
	if anim_direct == "right":
		anim.play("run_right")
		anim.flip_h = false
	elif anim_direct == "left":
		anim.play("run_right")
		anim.flip_h = true
	elif anim_direct == "up":
		anim.play("run_up")
	elif anim_direct == "down":
		anim.play("run_down")
	else:
		anim.play("idle")
		anim.flip_h = false
		
		
func addItemInventory(test,aggitem):
	inventory.append(aggitem)
	if test == true:
		print(inventory)
		

	

		


	
	
	
	
