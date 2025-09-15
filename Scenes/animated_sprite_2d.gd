extends AnimatedSprite2D
@export var speed = 200

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("Up"):
		velocity.y -= 1
	if Input.is_action_pressed("Down"):
		velocity.y += 1
	if Input.is_action_pressed("Right"):
		velocity.x += 1
	if Input.is_action_pressed("Left"):
		velocity.x -= 1
		
 velocity.length() > 0:
		velocity = velocity.normalized() * speed
