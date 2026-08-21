all: package translations

package: translations
	rm "Ukrainian Language.zip" || true
	zip -rq "Ukrainian Language.zip" mods-unpacked .import

translations:
	$(MAKE) -C translations/
