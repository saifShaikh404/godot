extends CharacterBody2D

func _process(_delta):
	var direction = Input.get_vector("left","right","up","bottom")
	velocity = direction * 200
	move_and_slide()
