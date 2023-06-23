extends Node2D

@export var other : Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	look_at(other.global_position)
