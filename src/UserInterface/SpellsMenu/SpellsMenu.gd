extends Control


onready var slot_1 = $Slots_Container/Row_1/Slot_1
onready var slot_2 = $Slots_Container/Row_1/Slot_2
onready var slot_3 = $Slots_Container/Row_1/Slot_3
onready var slot_4 = $Slots_Container/Row_1/Slot_4
onready var slot_5 = $Slots_Container/Row_2/Slot_5
onready var slot_6 = $Slots_Container/Row_2/Slot_6
onready var slot_7 = $Slots_Container/Row_2/Slot_7
onready var slot_8 = $Slots_Container/Row_2/Slot_8
onready var slot_9 = $Slots_Container/Row_3/Slot_9
onready var slot_10 = $Slots_Container/Row_3/Slot_10
onready var slot_11 = $Slots_Container/Row_3/Slot_11
onready var slot_12 = $Slots_Container/Row_3/Slot_12
onready var slot_13 = $Slots_Container/Row_4/Slot_13
onready var slot_14 = $Slots_Container/Row_4/Slot_14
onready var slot_15 = $Slots_Container/Row_4/Slot_15
onready var slot_16 = $Slots_Container/Row_4/Slot_16
onready var slot_array = [slot_1, slot_2, slot_3, slot_4, slot_5, slot_6, slot_7, 
slot_8, slot_9, slot_10, slot_11, slot_12, slot_13, slot_14, slot_15, slot_16]


onready var spell_name = $DescriptionContainer/Spell_Name
onready var spell_description = $DescriptionContainer/Spell_Description


var _empty_slot = load("res://icon.png")
var _focused_slot = load("res://icon.png")
var _hover_slot = load("res://icon.png")
var _pressed_slot = load("res://icon.png")


func _ready():
	visible = false


func close():
	visible = false


func open():
	_setup_Slots()
	visible = true


func _setup_Slots():
	for i in slot_array:
		i.set_normal_texture(_empty_slot)
		i.set_focused_texture(_focused_slot)
		i.set_hover_texture(_hover_slot)
		i.set_pressed_texture(_pressed_slot)


func _signal_Handler(_signal):
	match _signal:
		1:
			spell_name.set_bbcode("[tornado radius=5 freq=5]Thamz smells[/tornado]")
			spell_description.set_bbcode("[shake rate=20 level=10]Oh lawd he do be smelling[/shake]")
			GlobalSpells.spell_1.spell_name = "Hi"
			print(GlobalSpells.spell_1.spell_name)
		2:
			GlobalSpells.spell_2.spell_name = "Hi2"
			print(GlobalSpells.spell_2.spell_name)
		3:
			print(_signal)
		4:
			print(_signal)
		5:
			print(_signal)
		6:
			print(_signal)
		7:
			print(_signal)
		8:
			print(_signal)
		9:
			print(_signal)
		10:
			print(_signal)
		11:
			print(_signal)
		12:
			print(_signal)
		13:
			print(_signal)
		14:
			print(_signal)
		15:
			print(_signal)
		16:
			print(_signal)
