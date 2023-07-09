extends "res://singletons/progress_data.gd"

# Extends ProgressData to add custom languages

const UKRLANG = "Ukrainian_Language"


# Vanilla
# =============================================================================

func _ready():
	_d77_transdemo_add_languages()


# Custom
# =============================================================================

func _d77_transdemo_add_languages() -> void:
	# key/value: loc_keys/keys
	languages["ukrainian"] = "uk" # Українська

	ModLoaderUtils.log_info("Installed custom language: Ukrainian, Українська завантажена", UKRLANG)