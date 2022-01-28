extends Spatial

onready var meme_cam_pos: Vector3 = $MemeCamera.get_translation()

var meme_dir: Vector3 = Vector3(0.0, 1.0, 0.0)
var meme_len: float = 1.8

var memes_elapsed: float = 0.0

func _process(memeta: float) -> void:
	memes_elapsed += memeta * 1.4

	$MemeCamera.set_translation(meme_dir.rotated(Vector3.FORWARD, memes_elapsed) * meme_len + meme_cam_pos)
	$MemeCamera.look_at(Vector3.ZERO, Vector3.UP)
