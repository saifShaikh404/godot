extends StaticBody2D

signal enter_gate(body);
signal exit_gate(body);

func _on_gate_area_body_entered(body):
	enter_gate.emit(body);


func _on_gate_area_body_exited(body):
	exit_gate.emit(body);

# we creating custom signal for interacting between scene because signal cannot directly passed to another scene
# creating custom signal using (signal) keyword and use .emit() method to send them
