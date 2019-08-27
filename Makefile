ZOTERO_DATA ?= ~/Zotero

.PHONY: install
install:
	@echo "Copying files to Zotero data directory $(ZOTERO_DATA)"
	install -m644 engines.json $(ZOTERO_DATA)/locate/
	install -m644 apa-meta-analysis.csl $(ZOTERO_DATA)/styles/
	install -m644 apa-numeric.csl $(ZOTERO_DATA)/styles/
	install -m644 apa-short-authors.csl $(ZOTERO_DATA)/styles/
	install -m644 systematic-review-tables.csl $(ZOTERO_DATA)/styles/
