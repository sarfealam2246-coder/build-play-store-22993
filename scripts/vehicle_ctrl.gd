extends VehicleBody3D

@export var max_steer := 0.48
@export var engine_power := 360.0

func _physics_process(delta: float) -> void:
	var h = Input.get_axis("ui_right", "ui_left")
	var v = Input.get_axis("ui_down", "ui_up")
	steering = move_toward(steering, h * max_steer, delta * 3.2)
	engine_force = v * engine_power
