extends Node2D

##uncomment this when cutscene is finished
##@onready var anim = $AnimatedSprite2D
@onready var transition = $Transition

# Called when the node enters the scene tree for the first time.
func _ready():
	##anim.play("default")
	transition.play("dark_fade_in")
