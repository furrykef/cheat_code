tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("CheatCode", "Node", preload("cheat_code.gd"), preload("icon.png"))

func _exit_tree():
	remove_custom_type("CheatCode")
