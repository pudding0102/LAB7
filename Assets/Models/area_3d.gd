extends Area3D

@export var player_group: String = "player"
@export var next_scene_path: String = "res://Scenes/win.tscn" # เปลี่ยนเป็นฉากจบเกมของคุณ

func _ready():
	self.body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if not body.is_in_group(player_group):
		return
	
	print("เข้าเส้นชัยแล้ว!")  # Debug ไว้ดูใน Output

	# ปิดการควบคุม
	if body.has_method("disable_input"):
		body.disable_input()
	
	# เปลี่ยนฉาก
	get_tree().change_scene_to_file(next_scene_path)
