extends Control

# export ไว้สำหรับกำหนดว่าจะไปที่ Scene ไหนหลังจากกด Play
@export var game_scene: String = "res://Scenes/demo_scene.tscn"

@onready var play_button: Button = $VBoxContainer/PlayButton

func _ready():
	play_button.pressed.connect(_on_play_button_pressed)

func _on_play_button_pressed():
	# เปลี่ยนไปยังหน้าเกม
	get_tree().change_scene_to_file(game_scene)
