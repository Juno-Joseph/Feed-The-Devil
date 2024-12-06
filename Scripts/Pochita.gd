extends CharacterBody2D

@onready var anim = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("Idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#if global.is_dragging:
	#	visible = true
	#else:
	#	visible = false
	pass
