extends KinematicBody2D

var mouse_on = false

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed and mouse_on == true:
			if $back.visible == true:
				$back.visible = false
				$front.visible = true
			else:
				$back.visible = true
				$front.visible = false

func _on_card_2_mouse_entered():
	mouse_on = true
	print("in")


func _on_card_2_mouse_exited():
	mouse_on = false
	print("out")
