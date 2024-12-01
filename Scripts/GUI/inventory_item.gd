#This makes a class for The items in the game, this allows us to give the items data and display them on screen 
class_name InventoryItem
extends TextureRect

@export var data: FoodData #We pull the data from the resource of the item


func _ready() -> void:
	if data:
		#expand, strech, and texture are used here to define the size of the texture and later use the image
		expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		texture = data.food_texture
		tooltip_text = "%s\n%s\nName: " % [data.description, data.food_name]

#we initialize the data into "d"
func init(d: FoodData) -> void:
	data = d

func _get_drag_data(at_position: Vector2) ->  Variant:
	#this is for mouse position when dragging and dropping item
	set_drag_preview(make_drag_preview(at_position))
	return self
	
func make_drag_preview(at_position: Vector2) -> Control:
	var t := TextureRect.new()
	t.texture = texture
	t.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	t.stretch_mode =TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	t.custom_minimum_size = size
	t.modulate.a = 0.5
	t.position = Vector2(-at_position)
	#Illusion of drag and droppping, makes a new texture based off that
	
	var c := Control.new()
	c.add_child(t)
	
	return c
	
	
	
	
	
	
	
	
