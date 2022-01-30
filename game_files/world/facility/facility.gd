extends Node2D

var camera = 0

var employee = preload("res://entities/employees/employee.tscn")
var employee_instance = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	camera = get_node("camera")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if Input.is_key_pressed(KEY_EQUAL):
		add_employee()

func add_employee():
	employee_instance = employee.instance()
	self.add_child(employee_instance)
	$selection_box.connect("selection_reset", employee_instance, "_on_selection_box_selection_reset")
	employee_instance.position =  camera.zoom.x * get_viewport().get_mouse_position() + camera.position
