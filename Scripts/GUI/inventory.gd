extends Control

#We are loading in our food
var food_to_load := [
	"res://Scenes/GUI/Inventory/apple.tres",
	"res://Scenes/GUI/Inventory/avocado.tres",
	"res://Scenes/GUI/Inventory/baked_potato.tres",
	"res://Scenes/GUI/Inventory/bread_and_jelly.tres",
	"res://Scenes/GUI/Inventory/hot_dog.tres"
]

func _ready():
	#We create a loop with 5 slots beacuse that show many items we will have.
	for i in 5:
		var slot := InventorySlot.new() #Create new class
	
	for i in food_to_load.size():
		var item = InventoryItem.new() #Create new class
