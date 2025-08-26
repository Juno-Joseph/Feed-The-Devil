extends Control

@onready var settings_buttons = $Settings_Buttons
@onready var options = $Options


func _ready():
	$AnimationPlayer.play("RESET")
	hide()
	settings_buttons.visible = true
	options.visible = false

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	hide()

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	show()

func testEsc():
	if Input.is_action_just_pressed("Esc") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("Esc") and get_tree().paused:
		resume()


func _on_resume_pressed():
	resume()


func _on_restart_pressed():
	resume()
	get_tree().reload_current_scene()


func _on_options_pressed():
	settings_buttons.visible = false
	options.visible = true


func _on_exit_pressed():
	get_tree().quit()

func _process(delta):
	testEsc()
