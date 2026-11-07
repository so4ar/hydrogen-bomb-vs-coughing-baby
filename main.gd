extends Node2D

func _ready() -> void:
	var gui = preload("res://gui.tscn").instantiate()
	var bomb = preload("res://bomb.tscn").instantiate()
	var baby = preload("res://baby.tscn").instantiate()

	baby.set_position(Vector2(330,455)) # Ustawia pozycje przed dodaniem do drzewa
	bomb.set_position(Vector2(1625,540))

	add_child(bomb)
	add_child(baby)
	add_child(gui)
	
