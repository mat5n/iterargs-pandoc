#!/bin/sh

pandoc -t html5 -s --mathjax \
  --template=templates/iterargs.html \
  --highlight-style=tango \
  --citeproc --bibliography=biblio.bib \
  --metadata=link-citations=true \
  -o index.html argument.md
