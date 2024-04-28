extends Node2D

var laser_scene : PackedScene = preload("res://scenes/projectiles/laser.tscn");
var grenade_scene : PackedScene = preload("res://scenes/projectiles/grenade.tscn")

# This signal coming from Gate node
func _on_gate_enter_gate(body):
	print('Player Entered')

# This signal coming from Gate node
func _on_gate_exit_gate(body):
	print('Player Exited')

# This signal coming from Player node
func _on_player_player_laser(pos):
	var laser = laser_scene.instantiate();
	laser.position = pos;
	$Projectiles.add_child(laser);

# This signal coming from Player node
func _on_player_player_grenade(pos):
	var grenade = grenade_scene.instantiate();
	grenade.position = pos;
	$Projectiles.add_child(grenade);
