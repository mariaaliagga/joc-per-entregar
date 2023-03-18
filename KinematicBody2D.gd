extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat := 500
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 700
var salt := Vector2.UP * 1000




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment += gravetat * delta
	moviment.x = Input.get_axis("ves_esquerra", "ves_dreta")*velocitat
	if is_on_floor():
		moviment+= salt 
		
	
	moviment = move_and_slide(moviment, Vector2.UP)
	

# Called when the node enters the scene tree for the first time.

#	position = Vector2(500, 300)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_TERRA_body_entered(_body):
		moviment+= salt 
