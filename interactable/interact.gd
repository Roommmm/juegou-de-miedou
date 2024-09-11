extends RayCast3D

@onready var prompt: Label = $prompt

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	prompt.text = ""
	if is_colliding():
		var colider = get_collider()
		prompt.text = "si" + colider.name
