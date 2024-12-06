extends Node2D

var draggable = false
var is_inside_dropable = false
var selected = false
var body_ref

func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _on_area_2d_mouse_entered():
	if not global.is_dragging:
		draggable = true
		scale = Vector2(1.05, 1.05)

func _on_area_2d_mouse_exited():
	if not global.is_dragging:
		draggable = false
		scale = Vector2(1, 1)

func _on_area_2d_body_entered(body: CharacterBody2D):
	if body.is_in_group('droppable'):
		is_inside_dropable = true
		#here isnted of changing color we will change the pochita sprite
		body_ref = body

func _on_body_exited(body):
	if body.is_in_group('droppable'):
		is_inside_dropable = false
		#here isnted of changing color we will change the pochita sprite


func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
			selected = false

