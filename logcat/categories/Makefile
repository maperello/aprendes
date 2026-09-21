# ============================================================
# Makefile — Una introducció a la teoria de categories
# Projecte aprendes / logcat.  Motor de referència: XeLaTeX.
# Requereix: xelatex i makeindex (TeX Live o MiKTeX).
# ============================================================

MAIN    := main
TEX     := xelatex
TEXOPTS := -interaction=nonstopmode -halt-on-error

# Fonts (informatiu; els targets de compilació sempre s'executen perquè el
# mateix main.pdf pot ser el llibre complet o el fascicle segons el mode).
SOURCES := $(MAIN).tex metadata.tex \
           $(wildcard common/*.tex) $(wildcard common/*.sty) \
           $(wildcard caps/*.tex) $(wildcard caps/*/*.tex)

# Extensions auxiliars que s'esborren amb `make clean`.
AUXEXT  := aux bcf bbl blg idx ilg ind log out run.xml \
           synctex synctex.gz toc lof lot fls fdb_latexmk xdv auxlock

.PHONY: all fascicle quick clean distclean help

## all        Llibre complet (capítols 1-10) — per defecte
all:
	$(TEX) $(TEXOPTS) $(MAIN).tex
	-makeindex $(MAIN).idx
	$(TEX) $(TEXOPTS) $(MAIN).tex
	$(TEX) $(TEXOPTS) $(MAIN).tex

## fascicle   Versió parcial per publicar (capítols 1-4) → main.pdf
fascicle:
	$(TEX) $(TEXOPTS) -jobname=$(MAIN) "\def\fascicle{}\input{$(MAIN).tex}"
	-makeindex $(MAIN).idx
	$(TEX) $(TEXOPTS) -jobname=$(MAIN) "\def\fascicle{}\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=$(MAIN) "\def\fascicle{}\input{$(MAIN).tex}"

## quick      Una sola passada (esborrany ràpid, sense índex)
quick:
	$(TEX) $(TEXOPTS) $(MAIN).tex

## clean      Esborra els fitxers auxiliars (conserva el PDF)
clean:
	rm -f $(addprefix $(MAIN).,$(AUXEXT))

## distclean  Esborra auxiliars i el PDF
distclean: clean
	rm -f $(MAIN).pdf

## help       Mostra aquesta ajuda
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## /  /'
