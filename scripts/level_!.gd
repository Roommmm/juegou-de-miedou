extends Node3D
@onready var sprite_3d: Sprite3D = $Sprite3D
@onready var animation_player: AnimationPlayer = $"Sprite3D/Zombie Run/AnimationPlayer"
@onready var animation_player2: AnimationPlayer = $"Sprite3D/Zombie Run (1)/AnimationPlayer"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sprite_3d.position.x = sprite_3d.position.x - 0.05
	animation_player.play("mixamo_com")
	animation_player2.play("mixamo_com")
	


func body_entered(body: Node3D) -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")




func _on_area_3d_body_entered(body: Node3D) -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
