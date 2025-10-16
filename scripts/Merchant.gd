extends npc
class_name merchant

var open = true
var buyer = true
var barter_amount: float= 0.8
var refusal = false
var sleeping = false
var steal = false
var greeting = "Welcome to my shop."


func show_wares():
	print("Here's what's in stock")
	for item in inventory:
		print(item)
	
func _on_detection_radius_body_entered(_body: Node2D) -> void:
	super._on_detection_radius_body_entered(_body)
	show_wares()
