extends Node
signal code_entered(code)

var _buffer = ""
var _codes = []
var max_len = 0


func add_code(text: String):
	text = text.to_lower()
	_codes.append(text)
	max_len = max(len(text), max_len)


func _input(event: InputEvent):
	if event is InputEventKey and event.pressed and not event.echo:
		_buffer += char(event.unicode).to_lower()
		if len(_buffer) > max_len:
			# Trim the buffer to max length
			_buffer = _buffer.right(len(_buffer) - max_len)
		for code in _codes:
			if _buffer.ends_with(code):
				emit_signal("code_entered", code)
