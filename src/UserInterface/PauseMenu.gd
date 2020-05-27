extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var _stats_menu = $MenusLayer/StatsMenu
onready var _spells_menu = $MenusLayer/SpellsMenu
onready var _pages_menu = $MenusLayer/PagesMenu
onready var _weapons_menu = $MenusLayer/WeaponsMenu
onready var _materials_menu = $MenusLayer/MaterialsMenu
onready var _crafting_menu = $MenusLayer/CraftingMenu
onready var _system_menu = $MenusLayer/SystemMenu

onready var _stats_button = $HBoxContainer/StatsButton
onready var _spells_button = $HBoxContainer/SpellsButton
onready var _pages_button = $HBoxContainer/PagesButton
onready var _weapons_button = $HBoxContainer/WeaponsButton
onready var _materials_button = $HBoxContainer/MaterialsButton
onready var _crafting_button = $HBoxContainer/CraftingButton
onready var _system_button = $HBoxContainer/SystemButton

var openMenu = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false


func close():
	visible = false


func open():
	visible = true
	_stats_button.grab_focus()
	_stats_menu.open()


#_direction: -1 = left, +1 = right
func switchMenus(_direction):
	match openMenu:
		0:
			if _direction == -1:
				_system_button.grab_focus()
				_on_SystemButton_pressed()
			else:
				_spells_button.grab_focus()
				_on_SpellsButton_pressed()
		1:
			if _direction == -1:
				_stats_button.grab_focus()
				_on_StatsButton_pressed()
			else:
				_pages_button.grab_focus()
				_on_PagesButton_pressed()
		2:
			if _direction == -1:
				_spells_button.grab_focus()
				_on_SpellsButton_pressed()
			else:
				_weapons_button.grab_focus()
				_on_WeaponsButton_pressed()
		3:
			if _direction == -1:
				_pages_button.grab_focus()
				_on_PagesButton_pressed()
			else:
				_materials_button.grab_focus()
				_on_MaterialsButton_pressed()
		4:
			if _direction == -1:
				_weapons_button.grab_focus()
				_on_WeaponsButton_pressed()
			else:
				_crafting_button.grab_focus()
				_on_CraftingButton_pressed()
		5:
			if _direction == -1:
				_materials_button.grab_focus()
				_on_MaterialsButton_pressed()
			else:
				_system_button.grab_focus()
				_on_SystemButton_pressed()
		6:
			if _direction == -1:
				_crafting_button.grab_focus()
				_on_CraftingButton_pressed()
			else:
				_stats_button.grab_focus()
				_on_StatsButton_pressed()


func closeMenus():
	_stats_menu.close()
	_spells_menu.close()
	_pages_menu.close()
	_weapons_menu.close()
	_materials_menu.close()
	_crafting_menu.close()
	_system_menu.close()


func _on_GoLeft_pressed():
	switchMenus(-1)


func _on_GoRight_pressed():
	switchMenus(+1)


func _on_StatsButton_pressed():
	closeMenus()
	openMenu = 0
	_stats_menu.open()


func _on_SpellsButton_pressed():
	closeMenus()
	openMenu = 1
	_spells_menu.open()


func _on_PagesButton_pressed():
	closeMenus()
	openMenu = 2
	_pages_menu.open()


func _on_WeaponsButton_pressed():
	closeMenus()
	openMenu = 3
	_weapons_menu.open()


func _on_MaterialsButton_pressed():
	closeMenus()
	openMenu = 4
	_materials_menu.open()


func _on_CraftingButton_pressed():
	closeMenus()
	openMenu = 5
	_crafting_menu.open()


func _on_SystemButton_pressed():
	closeMenus()
	openMenu = 6
	_system_menu.open()


