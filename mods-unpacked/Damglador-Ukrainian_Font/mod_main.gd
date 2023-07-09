extends Node

const MOD_DIR = "Damglador-Ukrainian_Font/" # name of the folder that this file is in
const UKRFONT = "Damglador-Ukrainian_Font" # full ID of your mod (AuthorName-ModName)


func _init(_modLoader = ModLoader):
	ModLoaderLog.info("Init", UKRFONT)
	replace_fonts_preload()

func _ready()->void:
	ModLoaderLog.info("Ready", UKRFONT)

# Replace fonts with our custom one
func replace_fonts_preload() -> void:
	var font_resources = [
		preload("res://resources/fonts/actual/base/font_biggest.tres"),
		preload("res://resources/fonts/actual/base/font_big_outlined.tres"),
		preload("res://resources/fonts/actual/base/font_big_title.tres"),
		preload("res://resources/fonts/actual/base/font_button.tres"),
		preload("res://resources/fonts/actual/base/font_floating_text.tres"),
		preload("res://resources/fonts/actual/base/font_menus.tres"),
		preload("res://resources/fonts/actual/base/font_smallest_text.tres"),
		preload("res://resources/fonts/actual/base/font_small_button.tres"),
		preload("res://resources/fonts/actual/base/font_small_text.tres"),
		preload("res://resources/fonts/actual/base/font_small_title.tres"),
		preload("res://resources/fonts/actual/base/font_subtitle.tres"),
	]

	var replacement_font = load("res://mods-unpacked/Damglador-Ukrainian_Font/fonts/NotoSans-Medium.ttf")

	# Loop over vanilla font files
	for font_res in font_resources:
		# Replace the font source
		font_res.font_data = replacement_font
		ModLoaderLog.info("Replaced font: " + font_res.resource_path, UKRFONT)
		
		font_res.extra_spacing_bottom = -5
		font_res.extra_spacing_top = -2
