extends Node

@onready var lbl_score = $"Lbl-Score"

var m_Score = 0

func AddPoint():
	m_Score += 1
	lbl_score.text = "You Have " + str(m_Score) + " Coins"
