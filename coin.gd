extends Area3D

@onready var sound = $AudioStreamPlayer3D
@onready var mesh = $MeshInstance3D
@onready var collision = $CollisionShape3D

func _on_body_entered(body: Node3D) -> void:
	if body.has_method("on_coin_collected"):
		body.on_coin_collected()
		sound.play()
		mesh.visible = false
		collision.set_deferred("disabled", true)
		await sound.finished

func respawn():
	mesh.visible = true
	collision.set_deferred("disabled", false)
