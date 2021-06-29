extends KinematicBody2D

var mouse_on = false

signal card_show

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed and mouse_on == true:
			emit_signal("card_show", 1, 2)
			print(get_parent().list)
			self.input_pickable = false
			if $back.visible == true:
				$back.visible = false
				$front.visible = true
#			else:
#				$back.visible = true
#				$front.visible = false

func _on_card_2_mouse_entered():
	mouse_on = true
	print("in")


func _on_card_2_mouse_exited():
	mouse_on = false
	print("out")
