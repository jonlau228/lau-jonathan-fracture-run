extends Area3D


func _on_body_entered(body: Node3D) -> void:
	if body.has_method("on_coin_collected"):
		body.on_coin_collected()
		queue_free()
