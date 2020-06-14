extends Node
signal code_entered(code)

export(String, MULTILINE) var codes = [] setget set_codes

var _buffer = ""
var max_len = 0


func add_code(text: String):
	text = text.to_lower()
	codes.append(text)
	max_len = max(len(text), max_len)


func set_codes(new_codes):
	codes = []
	max_len = 0
	if new_codes is String:
		new_codes = new_codes.split("\n", false)
	for code in new_codes:
		add_code(code)


func _input(event: InputEvent):
	if event is InputEventKey and event.pressed and not event.echo:
		_buffer += char(event.unicode).to_lower()
		if len(_buffer) > max_len:
			# Trim the buffer to max length
			_buffer = _buffer.right(len(_buffer) - max_len)
		for code in codes:
			if _buffer.ends_with(code):
				emit_signal("code_entered", code)
