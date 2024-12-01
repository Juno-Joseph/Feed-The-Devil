class_name FoodData 
extends Resource #We extend resource here because its a resource

enum Type {MAIN} #We use enum beacuse the type wont change and we just want to check waht it is

#All of these list out the things we can control in the Inspector
@export var type: Type 
@export var food_name: String
@export var food_points: int
@export_multiline var description: String
@export var food_texture: Texture2D
