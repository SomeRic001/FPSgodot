extends Node3D

@onready var anim = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("WEP_Idle")

func _process(delta):
	if Input.is_action_just_pressed("forward") or Input.is_action_just_pressed("back") or Input.is_action_just_pressed("left") or Input.is_action_just_pressed("right")  :
		anim.play("WEP_Walk",-1,2)
	if Input.is_action_just_released("back") or Input.is_action_just_released("forward") or Input.is_action_just_released("left") or Input.is_action_just_released("right")  :
		anim.play("WEP_Idle")
	if Input.is_action_pressed("sprint") and Input.is_action_pressed("forward"):
			anim.play("WEP_Walk",-1,3)
	


func _input(event):
	if Input.is_action_just_pressed("shoot"):
		anim.play("WEP_Fire")
		$Gun.play()
	if Input.is_action_just_pressed("R"):
		anim.play("WEP_Reload_01")
	if Input.is_action_just_pressed("E"):
		anim.play("WEP_Inspect_01")
