extends Node3D

@onready var sketchfab_scene: Node3D = $"."

var ch = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sketchfab_scene.rotation.y = sketchfab_scene.rotation.y + 5 * delta


func _on_area_3d_body_entered(body: Node3D) -> void:
		print("BODY ENTERED")
		ch = true
		if Input.is_action_just_pressed("GRAB") and ch == true:
			get_tree().queue_free()
			print("obj borrado")


func _on_area_3d_body_exited(body: Node3D) -> void:
	ch = false
