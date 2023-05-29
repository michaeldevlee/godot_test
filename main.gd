extends Node2D

@onready var player : Node2D = get_node("CharacterBody2D")
@onready var staticBody : StaticBody2D = get_node("StaticBody2D")


# Called when the node enters the scene tree for the first time.
func _ready():
	print(staticBody.entered)
	print(staticBody.has_signal("entered"))
	staticBody.connect("entered", Callable(self, "callWhenEntered"))
	pass # Replace with function body.

func callWhenEntered():
	print("entered")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_static_body_2d_mouse_entered():
	print("mouse on top of the static body")
	pass # Replace with function body.
