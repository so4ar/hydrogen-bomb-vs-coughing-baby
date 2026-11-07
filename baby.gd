extends CharacterBody2D

@onready var coughing: AudioStreamPlayer = $SFX/Coughing

func _ready() -> void:
	EventBus.joystick_tapped.connect(_on_joystick_tap);

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func _on_joystick_tap():
	coughing.play()
