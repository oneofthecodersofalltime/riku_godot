extends Area2D




func _on_stay_town_area_entered(area):
	get_tree().change_scene("res://map.tscn")
