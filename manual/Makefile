TEX=manual.tex frontcover.tex bios.tex

manual.pdf: $(TEX)
	pdflatex manual
	pdflatex manual

clean:
	rm -f *.aux
	rm -f *.log

veryclean: clean
	rm -f manual.pdf
