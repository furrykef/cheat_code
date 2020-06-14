extends Node2D

func _ready():
	$CheatCode.add_code("bang!")

func _on_CheatCode_code_entered(code):
	match code:
		"xyzzy": $Label.text = "Nothing happens."
		"porn": $Label.text = "I can't get enough."
		"banana": $Label.text = "I know how to spell banana, but I don't know when to stop."
		"bang!": $Label.text = "You shot me! I can't believe you shot me!"
		_: $Label.text = "Unknown cheat!"
