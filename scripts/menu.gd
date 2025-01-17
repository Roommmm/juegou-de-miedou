extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !Engine.is_editor_hint():
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/house.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit()
