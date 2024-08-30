extends Node3D

@onready var sketchfab_scene: Node3D = $"."
@onready var almond_water_can_with_texture_material_001_0: MeshInstance3D = $"Sketchfab_model/3d32106177f74a3d9f2d02ef4d0cf531_fbx/RootNode/Almond_Water_Can_with_texture/Almond_Water_Can_with_texture_Material_001_0"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sketchfab_scene.rotation.y = sketchfab_scene.rotation.y + 5 * delta


func _on_area_3d_body_entered(body: Node3D) -> void:
		print("BODY ENTERED")
		
		if Input.is_action_just_pressed("GRAB"):
			almond_water_can_with_texture_material_001_0.queue_free()
			print("obj borrado")
