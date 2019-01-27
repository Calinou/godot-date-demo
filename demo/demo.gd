# Copyright © 2019 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends Control

const Date := preload("res://addons/godot_date/date.gd")

onready var container := $VBoxContainer as Container

func _ready():
	var date := Date.new("2017-06-15T21:15:00Z")
	add_label("Instantiation from UNIX timestamp")
	add_label(Date.new(3600).format())
	add_label("LDML (localized) formats")
	add_label(date.format())
	add_label(date.format("LT"))
	add_label(date.format("LTS"))
	add_label(date.format("L"))
	add_label(date.format("LL"))
	add_label(date.format("LLL"))
	add_label(date.format("LLLL"))
	add_label("Custom formats")
	add_label(date.format("YYYY-MM"))
	add_label("Before / After")
	var compare_date := Date.new("2017-07-01T09:00:00Z")
	add_label(str(date.is_before(compare_date, Date.Precision.YEAR)))
	add_label(str(date.is_before(compare_date, Date.Precision.MONTH)))
	add_label(str(date.is_before(compare_date, Date.Precision.DAY)))

func add_label(text: String) -> void:
	var label := Label.new()
	label.text = text
	container.add_child(label)
