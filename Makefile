TEX=pdflatex --shell-escape
COPY=cp
OPEN=xdg-open
#TEXQUIET= > /dev/null
SERVER_COPY=rsync -avuP
SERVER_PATH=quitte:public_html/LaTeX.pdf

inital:
	$(MAKE) slides copy
	$(MAKE) slides copy
	$(MAKE) slides copy open

next:
	$(MAKE) slides copy open

slides:
	$(TEX) slides.tex $(TEXQUIET)

article:
	$(TEX) article.tex $(TEXQUIET)

copy:
	$(COPY) slides.pdf slides.old.pdf

open:
	$(OPEN) slides.pdf

push:
	$(SERVER_COPY) slides.pdf $(SERVER_PATH)

clean:
	rm -f slides.pdf
	rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.synctex.gz *.toc *.nav *.snm *.bbl *.blg *.run.xml *.bcf *.vrb
