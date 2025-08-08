extends "res://singletons/progress_data.gd"

# Extends ProgressData to add custom languages

const UKRLANG = "Ukrainian_Language"


# Vanilla
# =============================================================================

func _ready():
	_ukrlang_add_languages()


# Custom
# =============================================================================

func _ukrlang_add_languages() -> void:
	# key/value: loc_keys/keys
	languages.append("uk")
	
	ModLoaderLog.info("Installed custom language: Ukrainian, Українська завантажена", UKRLANG)
