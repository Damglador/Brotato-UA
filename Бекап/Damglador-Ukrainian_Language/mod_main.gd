extends Node

const MOD_DIR = "Damglador-Ukrainian_Language/" # name of the folder that this file is in
const UKRLANG = "Damglador-Ukrainian_Language" # full ID of your mod (AuthorName-ModName)

var dir = ""
var ext_dir = ""
var trans_dir = ""


func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", UKRLANG)
	dir = modLoader.UNPACKED_DIR + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"

	# Add extensions
	modLoader.install_script_extension(ext_dir + "singletons/progress_data.gd")

	# Add translations
	modLoader.add_translation_from_resource(trans_dir + "Ukrainian.uk.translation") # Українська


func _ready()->void:
	ModLoaderUtils.log_info("Ready", UKRLANG)
