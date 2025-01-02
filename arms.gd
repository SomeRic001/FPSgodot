extends Node3D

@onready var anim = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("WEP_Idle")

func _process(delta):
	if Input.is_action_just_pressed("forward") or Input.is_action_just_pressed("back"):
		anim.play("WEP_Walk")
	if Input.is_action_just_released("back") or Input.is_action_just_released("forward"):
		anim.play("WEP_Idle")


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index== MOUSE_BUTTON_LEFT:
			anim.play("WEP_Fire")
	if Input.is_action_just_pressed("R"):
		anim.play("WEP_Reload_01")
	if Input.is_action_just_pressed("E"):
		anim.play("WEP_Inspect_01")
