extends Node2D

# This signal coming from Gate node
func _on_gate_enter_gate(body):
	print('Player Entered')

# This signal coming from Gate node
func _on_gate_exit_gate(body):
	print('Player Exited')

# This signal coming from Player node
func _on_player_player_laser():
	print('Fire laser');

# This signal coming from Player node
func _on_player_player_grenade():
	print('Throw grenade');
