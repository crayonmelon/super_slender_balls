extends CanvasLayer

const MAIN_LEVEL = preload("uid://bjdjurgpdjdmm")
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await animation_player.animation_finished
	get_tree().change_scene_to_packed(MAIN_LEVEL)
