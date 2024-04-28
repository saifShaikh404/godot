extends CharacterBody2D

signal player_laser(pos);
signal player_grenade(pos);

var can_laser: bool = true;
var can_grenade: bool = true;

func _process(_delta):
	var direction = Input.get_vector("left","right","up","bottom");
	velocity = direction * 400;
	move_and_slide();
	
	if Input.is_action_just_pressed("fire") && can_laser:
		var children_marker = $LaserMarkers.get_children();
		var random_position = children_marker[randi() % children_marker.size()];
		
		can_laser = false;
		$LaserTimer.start();
		player_laser.emit(random_position.global_position);
		
	if Input.is_action_just_pressed("throw") && can_grenade:
		var pos = $LaserMarkers.get_children()[0].global_position;
		can_grenade = false;
		$GrenadeTimer.start();
		player_grenade.emit(pos);


func _on_laser_timer_timeout():
	can_laser = true; # Replace with function body.


func _on_grenade_timer_timeout():
	can_grenade = true; # Replace with function body.
