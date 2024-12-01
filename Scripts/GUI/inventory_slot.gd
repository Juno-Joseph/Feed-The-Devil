#This alows us to create a new node in GoDot, giving us 5 slots for food
class_name InventorySlot
extends PanelContainer 

@export var type: FoodData.Type

func init(t: FoodData.Type, cms: Vector2) -> void:
	type = t
	custom_minimum_size = cms
