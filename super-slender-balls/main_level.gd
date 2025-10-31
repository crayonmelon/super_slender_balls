extends Node3D
@onready var area_3d: Area3D = $spen/Area3D


@export var level_1: PackedScene

var mouse_in = false

func _ready() -> void:
	area_3d.mouse_entered.connect(mouse_entered)
	area_3d.mouse_exited.connect(mouse_exit)
	


func _input(event: InputEvent)-> void:
	if event.is_action_pressed("START"):
		get_tree().change_scene_to_packed(level_1)


func mouse_entered() -> void:
	mouse_in = true


func mouse_exit() -> void:
	mouse_in = false
