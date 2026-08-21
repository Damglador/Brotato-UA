translation-toolkit (csv2po and po2csv) require columns to be `location`, `source` and `target`.
`make` should automatically replace them with `keys`, `en` and `uk` in `translations.csv`.

Don't forget to strip all columns except `keys`, `en` and `uk` in updates files for `source/`.
