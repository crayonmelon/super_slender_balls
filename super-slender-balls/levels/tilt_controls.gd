extends Node3D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float)  -> void:
	
	
	var input_Dir = Input.get_vector("LEFT", "RIGHT", "UP","DOWN")
	
	global_rotation_degrees.x = lerp(global_rotation_degrees.x, 30 * -input_Dir.x, delta*5)
	
	global_rotation_degrees.z = lerp(global_rotation_degrees.z, 30 * -input_Dir.y, delta*5)

	print(input_Dir)
