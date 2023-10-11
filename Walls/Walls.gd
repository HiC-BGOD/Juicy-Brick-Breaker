extends StaticBody2D

var decay = 0.01

func _on_left_sensor_body_entered(_body):
	pass # Replace with function body.


func _on_top_sensor_body_entered(_body):
	pass # Replace with function body.


func _on_right_sensor_body_entered(_body):
	pass # Replace with function body.
	
	
func _physics_process(_delta):
	if $ColorRect.color.s > 0:
		$ColorRect.color.s -= decay
	if $ColorRect.color.v < 1:
		$ColorRect.color.v += decay

func hit(_ball):
	$ColorRect.color = Color8(201,42,42,255)
	var wall_sound = get_node_or_null("/root/Game/Wall_Sound")
	if wall_sound != null:
		wall_sound.play()
