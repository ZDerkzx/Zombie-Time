extends CharacterBody2D



var speed = 50
var player_follow = false
var player = null


		
func _physics_process(delta):
	if player_follow:
		pass

		
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	player = body
	player_follow = true
	
	



func _on_area_2d_body_exited(body: Node2D) -> void:
	player = null
	player_follow = false
