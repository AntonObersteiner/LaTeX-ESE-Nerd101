TEX=pdflatex --shell-escape
COPY=cp
OPEN=xdg-open

slides:
	$(TEX) slides.tex

copy:
	$(COPY) slides.pdf slides.old.pdf

open:
	$(OPEN) slides.pdf
