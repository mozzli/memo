extends KinematicBody2D

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			if $back.visible == true:
				$back.visible = false
				$front.visible = true
			else:
				$back.visible = true
				$front.visible = false
