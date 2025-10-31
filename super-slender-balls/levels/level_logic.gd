extends Node3D

@export var scene : String

@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var audio_stream_player: AudioStreamPlayer = $CanvasLayer/AudioStreamPlayer
@export var area_3d: Area3D

func _ready() -> void:
	area_3d.body_entered.connect(page_entered)

func page_entered(body:Node3D) -> void:
	canvas_layer.show()
	audio_stream_player.play()
	
	await get_tree().create_timer(2).timeout
	
	get_tree().change_scene_to_file(scene)
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("RESTART"):
		get_tree().reload_current_scene()
