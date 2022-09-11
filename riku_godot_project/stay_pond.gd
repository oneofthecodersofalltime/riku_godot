extends Area2D

func _on_stay_pond_area_entered(area):
	get_tree().change_scene("res://pond.tscn")
