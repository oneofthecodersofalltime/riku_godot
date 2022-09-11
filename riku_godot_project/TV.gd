extends Area2D

onready var tv = $TV_lab

func _ready():
	tv.hide()

func _on_TV_area_entered(area):
	tv.show()

func _on_TV_area_exited(area):
	tv.hide()
