extends Area2D

onready var quest_done = $No
onready var quest = $Thisisno
onready var label = $HO2_lab

func _ready():
	label.hide()
	quest_done.hide()

func _on_HO2_area_entered(area):
	label.show()
	if Input.get_action_strength("ui_accept"):
		pass

func _on_HO2_area_exited(area):
	label.hide()
