extends Area2D

func _on_house_sw_area_entered(area):
	get_tree().change_scene("res://house.tscn")
