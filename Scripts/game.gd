extends Node2D

@onready var transition = $Transition
var pets = preload("res://Scenes/Cut Scenes/pets.tscn")
var csm = preload("res://Scenes/Cut Scenes/csm.tscn")
var memories = preload("res://Scenes/Cut Scenes/memories.tscn")
var newton = preload("res://Scenes/Cut Scenes/newton.tscn")
var death = preload("res://Scenes/Cut Scenes/death.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func _on_hot_dog_tree_exited():
	#print("Saved Game")
	#var node_to_save = self
	#var scene = PackedScene.new()
	#scene.pack(node_to_save)
	#ResourceSaver.save(scene, "res://Scenes/saved_game.tscn")
	#get_tree().change_scene_to_packed(csm)


#func _on_potato_tree_exited():
	#print("Saved Game")
	#var node_to_save = self
	#var scene = PackedScene.new()
	#scene.pack(node_to_save)
	#ResourceSaver.save(scene, "res://Scenes/saved_game.tscn")
	#get_tree().change_scene_to_packed(memories)

