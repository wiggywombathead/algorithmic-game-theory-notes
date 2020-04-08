LATEX = pdflatex

MAIN = main.tex
FILES = $(wildcard *.tex)

OUT = notes

$(OUT).pdf: $(FILES)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

count:
	detex $(MAIN) | wc -w
