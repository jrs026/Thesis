all: thesis.pdf

# Just rebuild everytime, only display messages for the last step
%.pdf: %.tex refs.bib
	pdflatex -quiet $*
	bibtex $*
	pdflatex -quiet $*
	pdflatex $*

clean:
	rm *.aux *.bbl *.blg *.pdf *.log

# Keeps the .pdf file
push:
	rm *.aux *.bbl *.blg *.log
