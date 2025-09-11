# This next line allows the color of the coin to update without running the game
@tool

extends Area2D
class_name coin

@export var color: Color
@export var coin_value: int = 5

func _ready():
	print("Coin created - gives 1 gold" + str(coin_value) + " Gold")
	Connect the collision signal
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	# Check if it's the player
	if body is Player:
		print("Player found Gold!")
		# Try to spend the player (will work once they add spend method)
		if body.has_method("Spend"):
			body.spend(spend_amount)
			print("Player Spends for " + str(spend_amount) + " COIN!")
			
			# Remove the potion after use
			if auto_pickup:
				$AnimationPlayer.play("disappear")
		else:
			print("Player doesn't have heal() method yet - coming in Lesson 2!")

#func spend_Gold(player: Player):
	#"""Alternative method for manual coin spending"""
	#if player.has_method("spend"):
		#player.spend(spend_amount)
		#$AnimationPlayer.play("disappear")
		#return true
	#return false
	
func _process(delta: float) -> void:
	# Set the color of the coin
	$AnimatedSprite2D.material.set_shader_parameter("color", color)
