extends StaticBody2D

var code
var currentIndex : int = 0
var pressedKey = 0

@onready var rightAudio := $RightAudio as AudioStreamPlayer2D
@onready var wrongAudio := $WrongAudio as AudioStreamPlayer2D

func _ready() -> void:
	code = Global.generateCode(5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pressedKey = int(Input.is_action_just_pressed("ui_right")) - int(Input.is_action_just_pressed("ui_left"))

	if pressedKey != 0:
		if currentIndex < 5:
			if code[currentIndex] == pressedKey:
				currentIndex += 1
				rightAudio.play()
			else:
				currentIndex = 0
				wrongAudio.play()
				Global.amoutLockpicks -= 1
	pass

func _input(event: InputEvent) -> void:
#	if event is InputEventKey:
#		pressedKey = int(Input.is_action_just_pressed("ui_left")) - int(Input.is_action_just_pressed("ui_right"))
	pass
