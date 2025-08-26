extends Node2D

@onready var anim = $AnimatedSprite2D
@onready var transition = $Transition

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("death")
	transition.play("dark_fade_in")


func _on_button_pressed():
	get_tree().reload_current_scene()


func _on_reset_pressed():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
