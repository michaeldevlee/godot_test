extends StaticBody2D

#create a custom signal
signal customSignalTriggered

#create a custom signal with arguments
signal signalWithArgumentsTriggered(num : int, num2 : int)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# SIGNAL EXAMPLE : No arguments
	#if I press the left arrow
	if Input.is_action_just_pressed("ui_left"):
		
		#my custom signal will be triggered
		emit_signal("customSignalTriggered")
	
	# SIGNAL EXAMPLE : With arguments
	#if I press the down arrow
	if Input.is_action_just_pressed("ui_down"):
		
		#my custom signal with arguments will be triggered
		emit_signal("signalWithArgumentsTriggered", 10, 40)
