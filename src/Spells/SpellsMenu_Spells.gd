extends Node


const Spell = preload("res://src/Spells/Spell.gd")
var active_spells = [null, null, null, null, null]

var spell_1 = Spell.new()
var spell_2 = Spell.new()
var spell_3 = Spell.new()
var spell_4 = Spell.new()
var spell_5 = Spell.new()
var spell_6 = Spell.new()
var spell_7 = Spell.new()
var spell_8 = Spell.new()
var spell_9 = Spell.new()
var spell_10 = Spell.new()
var spell_11 = Spell.new()
var spell_12 = Spell.new()
var spell_13 = Spell.new()
var spell_14 = Spell.new()
var spell_15 = Spell.new()
var spell_16 = Spell.new()

func set_active_spell(index, spell):
	active_spells[index] = spell
