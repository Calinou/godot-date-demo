# Copyright © 2019 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends Control

const Date = preload("res://addons/godot_date/date.gd")

func _ready():
	var date := Date.new("2017-06-15T21:15:00Z")
	date.year += 5
	$Label.text = str(date.format())
