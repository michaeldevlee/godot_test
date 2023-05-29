extends CharacterBody2D

const GRAVITY = 200.0
const WALK_SPEED = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello World");


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if Input.is_action_just_pressed("ui_down"):
		#print("pressed down button")
		
	velocity.y += delta * GRAVITY

	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
	else:
		velocity.x = 0

	# "move_and_slide" already takes delta time into account.
	move_and_slide()
