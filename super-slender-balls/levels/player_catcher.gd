extends Area3D

@onready var marker_3d: Marker3D = $Marker3D
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(player_catcher)

func player_catcher(body: Node3D) -> void:
	body.position = marker_3d.global_position
	
	if audio_stream_player != null:
		audio_stream_player.play()
