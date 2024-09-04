extends Node3D

@onready var animation_player: AnimationPlayer = $"Zombie Biting/AnimationPlayer"
@onready var animation_player2: AnimationPlayer = $"Writhing In Pain/AnimationPlayer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	animation_player.play("mixamo_com")
	animation_player2.play("mixamo_com")


func _on_area_3d_body_entered(body: Node3D) -> void:
	get_tree().change_scene_to_file("res://scenes/level fun.tscn")
