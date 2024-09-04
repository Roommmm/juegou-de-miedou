extends Node3D
@onready var path_3d: Path3D = $Path3D
@onready var path_follow_3d: PathFollow3D = $Path3D/PathFollow3D



var speed = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path_follow_3d.progress = path_follow_3d.progress + 1 * delta
	


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/level_!.tscn")
