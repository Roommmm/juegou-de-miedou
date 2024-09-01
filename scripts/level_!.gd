extends Node3D
@onready var sprite_3d: Sprite3D = $Sprite3D

@onready var spot_light_3d: SpotLight3D = $spots/SpotLight3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sprite_3d.position.x = sprite_3d.position.x - 0.03
	
