extends Node3D

@onready var sketchfab_scene: Node3D = $"."
@onready var water: MeshInstance3D = $water

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
		if Input.is_action_pressed("GRAB") and ch == true:
			print("obj borrado")
			queue_free()


func _on_area_3d_body_exited(body: Node3D) -> void:
	ch = false
