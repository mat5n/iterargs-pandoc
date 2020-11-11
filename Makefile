
BIB = biblio.bib
TEMPLATE = templates/iterargs.html

index.html: argument.md $(BIB) $(TEMPLATE)
	pandoc -t html5 -s --mathjax \
	  --template=$(TEMPLATE) \
	  --highlight-style=tango \
	  --citeproc --bibliography=$(BIB) \
	  --metadata=link-citations=true \
	  -o $@ $<
