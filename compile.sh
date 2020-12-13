#!/bin/sh

pandoc \
--bibliography=biblio.bib \
--citeproc \
--highlight-style=tango \
--mathjax \
--metadata=link-citations=true \
--output=index.html \
--standalone \
--template=templates/iterargs.html \
--to=html5 \
argument.md
