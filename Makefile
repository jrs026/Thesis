all: thesis.pdf

# just rebuild everytime
%.pdf: %.tex refs.bib
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

clean:
	rm *.aux *.bbl *.blg *.pdf *.log
