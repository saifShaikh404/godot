extends CharacterBody2D

var can_laser: bool = true;
var can_grenade: bool = true;

func _process(_delta):
	var direction = Input.get_vector("left","right","up","bottom");
	velocity = direction * 400;
	move_and_slide();
	
	if Input.is_action_just_pressed("fire") && can_laser:
		print('Fire laser');
		can_laser = false;
		$LaserTimer.start();
		
	if Input.is_action_just_pressed("throw") && can_grenade:
		print('Throw grenade');
		can_grenade = false;
		$GrenadeTimer.start();


func _on_laser_timer_timeout():
	can_laser = true; # Replace with function body.


func _on_grenade_timer_timeout():
	can_grenade = true; # Replace with function body.
