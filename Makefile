
index.html: argument.md biblio.bib templates/iterargs.html
	pandoc -t html5 -s --mathjax \
	  --template=templates/iterargs.html \
	  --highlight-style=tango \
	  --filter=pandoc-citeproc \
	  --bibliography=biblio.bib \
	  --metadata=link-citations=true \
	  -o $@ argument.md
