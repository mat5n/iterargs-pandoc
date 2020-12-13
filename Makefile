
BIB_ENTRIES = biblio.bib
TEMPLATE = templates/iterargs.html

index.html: argument.md $(BIB_ENTRIES) $(TEMPLATE)
	pandoc \
--bibliography=$(BIB_ENTRIES) \
--citeproc \
--highlight-style=tango \
--mathjax \
--metadata=link-citations=true \
--output=$@ \
--standalone \
--template=$(TEMPLATE) \
--to=html5 \
$<
