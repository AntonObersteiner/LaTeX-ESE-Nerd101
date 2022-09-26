TEX=pdflatex --shell-escape
COPY=cp
OPEN=xdg-open

slides:
	$(TEX) slides.tex

copy:
	$(COPY) slides.pdf slides.old.pdf

open:
	$(OPEN) slides.pdf

clean:
	rm -f slides.pdf
	rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.synctex.gz *.toc *.nav *.snm *.bbl *.blg *.run.xml *.bcf *.vrb
