extends Area2D


func _on_roadend_area_entered(area):
	get_tree().change_scene("res://pond.tscn")

