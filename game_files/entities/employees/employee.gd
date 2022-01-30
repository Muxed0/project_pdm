extends Area2D

var selected = false

func _process(_delta):
	if selected:
		$basic_sprite.frame = 1
	else:
		$basic_sprite.frame = 0

func _on_selection_box_selection_reset():
	selected = false

func _on_employee_area_entered(area):
	if area.is_in_group("selection"):
		selected = true
