extends Control

func _ready():
	MusicManager.play_track(load("res://Victory_Over_Gravity.mp3"))

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://world.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
