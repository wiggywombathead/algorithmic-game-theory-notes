MAIN = main.tex
FILES = $(wildcard *.tex)

OUT = agt

$(OUT).pdf: $(FILES)
	pdflatex --jobname=$(OUT) $(MAIN)
	pdflatex --jobname=$(OUT) $(MAIN)

count:
	detex $(MAIN) | wc -w
