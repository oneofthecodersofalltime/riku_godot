extends Area2D

func _on_door_area_entered(area):
	get_tree().change_scene("res://map.tscn")
