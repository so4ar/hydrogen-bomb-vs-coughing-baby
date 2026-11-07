extends VirtualJoystick



func _on_tapped() -> void:
	EventBus.joystick_tapped.emit()
