extends AnimatedSprite2D

@onready var animated_sprite = $AnimatedSprite



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	if not flip_h and direction < 0:
		flip_h = true
	elif direction > 0: 
		flip_h = false
	 
		
	# Example logic to switch animations based on conditions
	if direction != 0:
		play("Run")
	else:
		play("Idle")
