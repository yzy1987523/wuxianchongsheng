extends Button
class_name RizaiChoiceButton

@export var choice_index: int = 1
@export var unlocked: bool = true
@export var corrupted: bool = false

func _ready() -> void:
    _refresh()

func set_choice(index: int, label_text: String, is_unlocked: bool = true) -> void:
    choice_index = index
    text = "%02d  %s" % [choice_index, label_text]
    unlocked = is_unlocked
    disabled = not unlocked
    _refresh()

func set_corrupted(value: bool) -> void:
    corrupted = value
    _refresh()

func _refresh() -> void:
    # The base scene uses Godot's normal/hover/pressed/disabled states.
    # Corruption is intentionally kept as a lightweight state hook for the
    # project's later visual-effect layer.
    modulate = Color(1, 0.82, 0.82, 1) if corrupted else Color.WHITE
