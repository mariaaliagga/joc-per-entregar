extends Area2D


func _on_Trofeu_body_entered(body):
	if body.name == "Personatge":
		get_tree().paused = true



func _on_TERRA_body_entered(body):
	if body.name == "Personatge":
		
