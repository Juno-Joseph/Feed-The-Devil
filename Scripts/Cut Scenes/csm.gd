extends Node2D

@onready var anim = $AnimatedSprite2D
@onready var transition = $Transition

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("Slashes")
	transition.play("dark_fade_in")

func _on_animated_sprite_2d_animation_finished():
	anim.play("CSM")
	
