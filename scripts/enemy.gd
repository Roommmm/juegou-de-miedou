extends CharacterBody3D

var player = null
@export var player_path : NodePath
@onready var navigation_agent_3d = $NavigationAgent3D

const SPEED = 5

func _ready():
	player = get_node(player_path)
func _process(delta):
	velocity = Vector3.ZERO
	navigation_agent_3d.set_target_position(player.global_transform.origin)
	var next_nav_point = navigation_agent_3d.get_next_path_position()
	velocity = (next_nav_point -global_transform.origin).normalized() * SPEED
	look_at(Vector3(player.global_position.x,global_position.y, player.global_position.z),Vector3.UP)
	move_and_slide() 




	
	
	
		
