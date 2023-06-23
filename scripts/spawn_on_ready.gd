extends Node2D

@export var spawn_scene : PackedScene

func _ready():
	var spawn = spawn_scene.instantiate()
	
	add_child(spawn)
