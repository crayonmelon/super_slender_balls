class_name PlayerBall extends RigidBody3D

@onready var area_3d: Area3D = $Area3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body


func _on_area_3d_body_entered(body: Node3D) -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.
