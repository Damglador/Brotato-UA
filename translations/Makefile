all: source.csv translations.pot translations.po translations.csv

source.csv: source/
	./merge.sh

translations.pot: source.csv
	csv2po -P -i $< -o $@

translations.po: translations.pot
	if [ ! -f $@ ]; then msginit -i $< -o $@ -l uk --no-translator; fi
	msgmerge -U $@ $< --backup none && touch $@

translations.csv: translations.po translations.pot
	po2csv -i translations.po -o $@
