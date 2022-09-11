extends Area2D

onready var bs = $book_lab

func _ready():
	bs.hide()

func _on_bookshelf_area_entered(area):
	bs.show()

func _on_bookshelf_area_exited(area):
	bs.show()
