extends Node
class_name inventory

var my_inventory : Array[items] = []
var selected_item : int = 5
var max_inventory : int = 5


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("item_up"):
		selected_item -=1
		if selected_item <0:
			selected_item = 0
		print(my_inventory[selected_item])
	if Input.is_action_just_pressed("item_down"):
		selected_item +=1
		if selected_item > my_inventory.size()-1:
			selected_item = my_inventory.size()-1
		print(my_inventory[selected_item])

func display_inventory(index: int):
	print("The current item is " + my_inventory[current_item].name)
	print("It costs " + str(my_inventory[current_item].item))
	
func add_inventory(new_item:Resource):
	if my_inventory.size() < max_items: 
		my_inventory.append()
	else: print("The inventory is already full")
	
func remove_inventory(item_to_use: Resource):
	#
	pass


func show_wares():
	print("Here's what's in stock")
	for item in inventory:
		print(item)
		

# inventory[inventory_items]

#print specific inventory
#add to inventory 
#remove from inventory
