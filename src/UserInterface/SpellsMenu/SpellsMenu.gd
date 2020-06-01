extends Control


# TODO: 
#	1) Extend option menu (which spell to equip, delete, confirmation dialogs)
#	2) Make sprites of spells display ingame
#	3) Make spells do shit


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
onready var options_menu = $Options


#const _spells_menu_spells = preload("res://src/Spells/SpellsMenu_Spells.gd")
#var Spells = _spells_menu_spells.new()


const _empty_slot = preload("res://icon.png")
const _focused_slot = preload("res://icon.png")
const _hover_slot = preload("res://icon.png")
const _pressed_slot = preload("res://icon.png")


var _selected_spell


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
	var signaled_spell
	
	match _signal:
		1:
			signaled_spell = Spells.spell_1
			signaled_spell.set_all_spell_parameters(["Ultima",1000,10000,1000,0,0,150,null,null,null,null,null,50,500,10,2,1,SpellEnums.Directions.UP,1,null,null,[SpellEnums.DamageTypes.ULTIMA, SpellEnums.DamageTypes.ULTIMA],null,SpellEnums.Targets.HOSTILE,null])
		2:
			signaled_spell = Spells.spell_2
		3:
			signaled_spell = Spells.spell_3
		4:
			signaled_spell = Spells.spell_4
		5:
			signaled_spell = Spells.spell_5
		6:
			signaled_spell = Spells.spell_6
		7:
			signaled_spell = Spells.spell_7
		8:
			signaled_spell = Spells.spell_8
		9:
			signaled_spell = Spells.spell_9
		10:
			signaled_spell = Spells.spell_10
		11:
			signaled_spell = Spells.spell_11
		12:
			signaled_spell = Spells.spell_12
		13:
			signaled_spell = Spells.spell_13
		14:
			signaled_spell = Spells.spell_14
		15:
			signaled_spell = Spells.spell_15
		16:
			signaled_spell = Spells.spell_16
	
	spell_name.set_bbcode(signaled_spell.get_name())
	spell_description.set_bbcode(signaled_spell.get_description())
	_show_options_menu(_signal, signaled_spell)

func _show_options_menu(slot, spell):
	var selected_slot = "Slot_" + str(slot)
	for n in slot_array:
		if str(n.name) == selected_slot:
			selected_slot = n
			break
	#var pos = Vector2(selected_slot.get_global_position().x, selected_slot.get_global_position().y)
	_selected_spell = spell
	options_menu.set_position(selected_slot.get_global_position())
	options_menu.visible = true

func _options_signal_handler(_signal):
	match _signal:
		1:
			Spells.set_active_spell(0, _selected_spell)
		2:
			pass
		3:
			options_menu.visible = false
