all: translations package
.PHONY: translations package

package: translations
	rm "Ukrainian Language.zip" || true
	zip -rq "Ukrainian Language.zip" mods-unpacked .import

translations:
	$(MAKE) -C $@
