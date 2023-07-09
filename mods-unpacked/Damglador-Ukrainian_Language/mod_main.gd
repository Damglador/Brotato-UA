extends Node

const MOD_DIR = "Damglador-Ukrainian_Language/" # name of the folder that this file is in
const UKRLANG = "Damglador-Ukrainian_Language" # full ID of your mod (AuthorName-ModName)

var dir = ""
var ext_dir = ""
var trans_dir = ""


func _init(_ModLoader):
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"

	# Add extensions
	ModLoaderMod.install_script_extension(ext_dir + "singletons/progress_data.gd")

	# Add translations
	ModLoaderMod.add_translation(trans_dir + "Ukrainian.uk.translation") # Українська
	ModLoaderMod.add_translation(trans_dir + "Ukrainian.en.translation")
	
func _ready()->void:
	ModLoaderLog.info("Ready", UKRLANG)
