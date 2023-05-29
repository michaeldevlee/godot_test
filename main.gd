extends Node2D

@onready var player : Node2D = get_node("CharacterBody2D")
@onready var staticBody : StaticBody2D = get_node("StaticBody2D")
@onready var button : Button = get_node("Button")


# Called when the node enters the scene tree for the first time.
func _ready():
	
	# ways to connect to signal
	
	#1) through the Object method
	#staticBody.connect("entered", Callable(self, "callWhenEntered"))
	button.connect("pressed", Callable(self, "callWhenPressed"))
	
	#2) directly to the signal itself
	staticBody.customSignalTriggered.connect(Callable(self, "callWhenCustomSignalTriggered"))
	staticBody.signalWithArgumentsTriggered.connect(Callable(self, "callWhenSignalWithArgumentsTriggered"))
	pass # Replace with function body.

# called when signal from StaticBody2D is triggered
func callWhenCustomSignalTriggered():
	print("custom signal triggered")

# called when signal from StaticBody2D is triggered	
# can put default value if arguments are not passed in
func callWhenSignalWithArgumentsTriggered(num : int = 10, num2 : int = 10):
	print(num + num2)

# called when button is pressed
# change to next scene
func callWhenPressed():
	get_tree().change_scene_to_file("res://main_2.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_static_body_2d_mouse_entered():
	print("mouse on top of the static body")
	pass # Replace with function body.
