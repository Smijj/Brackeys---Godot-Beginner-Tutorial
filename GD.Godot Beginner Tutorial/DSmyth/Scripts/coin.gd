extends Area2D

@onready var m_GameManger = %GameManger
@onready var m_Anim = $AnimationPlayer

func _on_body_entered(body):
	m_GameManger.AddPoint()
	m_Anim.play("pickup")
	#queue_free()
