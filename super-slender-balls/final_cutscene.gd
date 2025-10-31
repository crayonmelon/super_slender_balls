extends CanvasLayer

@onready var video_stream_player: VideoStreamPlayer = $Control/VideoStreamPlayer
@onready var rich_text_label: RichTextLabel = $Control/RichTextLabel
@onready var video_stream_player_2: VideoStreamPlayer = $Control/VideoStreamPlayer2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await video_stream_player.finished
	video_stream_player.hide()
	rich_text_label.show()
	await get_tree().create_timer(randf_range(1.0,10.0)).timeout
	video_stream_player_2.play()
	await video_stream_player_2.finished
	get_tree().quit()
	queue_free()
