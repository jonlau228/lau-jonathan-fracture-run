extends Node3D

@export var destination_node: NodePath

func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		teleport_player(body)
		body.new_level()

func _on_player_portal_active() -> void:
	visible = true
	MusicManager.play_track(load("res://Canopy_at_Daybreak.mp3"))

func teleport_player(body):
	var destination = get_node(destination_node)
	body.global_transform.origin = destination.global_transform.origin
