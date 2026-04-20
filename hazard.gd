extends Area3D

func _on_body_entered(body: Node3D) -> void:
	if body.has_method("trigger_reset"):
		print("Hazard hit!")
		body.trigger_reset()
