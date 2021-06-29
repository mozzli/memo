extends Node2D

var list = []

var numer_karty = []



func _process(delta):
	if list.size() == 2:
		if list[0] == list[1]:
			for i in numer_karty:
				get_node("card_" + String(i)).queue_free()
		list = []

func _on_card_1_card_show(karta, numer):
	list.append(karta)
	numer_karty.append(numer)
	


func _on_card_2_card_show(karta, numer):
	list.append(karta)
	numer_karty.append(numer)
