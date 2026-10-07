# ============================================================
# Makefile — Una introducció a la teoria de categories
# Projecte aprendes / logcat.  Motor de referència: XeLaTeX.
# Requereix: xelatex i makeindex (TeX Live o MiKTeX).
# ============================================================

MAIN    := main
TEX     := xelatex
TEXOPTS := -interaction=nonstopmode -halt-on-error

# Camps de formulari esperats (5 per pregunta + 3 per test).
CAMPS_COMPLET  := 632
CAMPS_FASCICLE := 184
CAMPS_IMPRIMIBLE := 0

# Fonts (informatiu; els targets de compilació sempre s'executen).
# El llibre complet es genera a main.pdf i el fascicle a fascicle.pdf.
SOURCES := $(MAIN).tex metadata.tex \
           $(wildcard common/*.tex) $(wildcard common/*.sty) \
           $(wildcard caps/*.tex) $(wildcard caps/*/*.tex)

# Extensions auxiliars que s'esborren amb `make clean`.
AUXEXT  := aux bcf bbl blg idx ilg ind log out run.xml \
           synctex synctex.gz toc lof lot fls fdb_latexmk xdv auxlock

.PHONY: all fascicle imprimible fascicle-imprimible ci quick clean distclean help

## all        Llibre complet (capítols 1-10) — per defecte
all:
	$(TEX) $(TEXOPTS) $(MAIN).tex
	-makeindex $(MAIN).idx
	$(TEX) $(TEXOPTS) $(MAIN).tex
	$(TEX) $(TEXOPTS) $(MAIN).tex

## fascicle   Versió parcial (capítols 1-3) → fascicle.pdf (no toca main.pdf)
fascicle:
	$(TEX) $(TEXOPTS) -jobname=fascicle "\def\fascicle{}\input{$(MAIN).tex}"
	-makeindex fascicle.idx
	$(TEX) $(TEXOPTS) -jobname=fascicle "\def\fascicle{}\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=fascicle "\def\fascicle{}\input{$(MAIN).tex}"

## imprimible Versió completa per imprimir -> imprimible.pdf (no toca main.pdf)
imprimible:
	$(TEX) $(TEXOPTS) -jobname=imprimible "\def\imprimible{}\input{$(MAIN).tex}"
	-makeindex imprimible.idx
	$(TEX) $(TEXOPTS) -jobname=imprimible "\def\imprimible{}\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=imprimible "\def\imprimible{}\input{$(MAIN).tex}"

## fascicle-imprimible Fascicle per imprimir -> fascicle-imprimible.pdf
fascicle-imprimible:
	$(TEX) $(TEXOPTS) -jobname=fascicle-imprimible "\def\fascicle{}\def\imprimible{}\input{$(MAIN).tex}"
	-makeindex fascicle-imprimible.idx
	$(TEX) $(TEXOPTS) -jobname=fascicle-imprimible "\def\fascicle{}\def\imprimible{}\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=fascicle-imprimible "\def\fascicle{}\def\imprimible{}\input{$(MAIN).tex}"

## ci         Compilació neta i comprovada de les modalitats de publicació
ci: distclean
	$(TEX) $(TEXOPTS) $(MAIN).tex
	-makeindex $(MAIN).idx
	$(TEX) $(TEXOPTS) $(MAIN).tex
	$(TEX) $(TEXOPTS) $(MAIN).tex 2>&1 | tee $(MAIN).xdvlog
	$(TEX) $(TEXOPTS) -jobname=fascicle "\def\fascicle{}\input{$(MAIN).tex}"
	-makeindex fascicle.idx
	$(TEX) $(TEXOPTS) -jobname=fascicle "\def\fascicle{}\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=fascicle "\def\fascicle{}\input{$(MAIN).tex}" 2>&1 | tee fascicle.xdvlog
	$(TEX) $(TEXOPTS) -jobname=imprimible "\def\imprimible{}\input{$(MAIN).tex}"
	-makeindex imprimible.idx
	$(TEX) $(TEXOPTS) -jobname=imprimible "\def\imprimible{}\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=imprimible "\def\imprimible{}\input{$(MAIN).tex}" 2>&1 | tee imprimible.xdvlog
	$(TEX) $(TEXOPTS) -jobname=fascicle-imprimible "\def\fascicle{}\def\imprimible{}\input{$(MAIN).tex}"
	-makeindex fascicle-imprimible.idx
	$(TEX) $(TEXOPTS) -jobname=fascicle-imprimible "\def\fascicle{}\def\imprimible{}\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=fascicle-imprimible "\def\fascicle{}\def\imprimible{}\input{$(MAIN).tex}" 2>&1 | tee fascicle-imprimible.xdvlog
	bash ./comprova.sh $(MAIN) $(CAMPS_COMPLET)
	bash ./comprova.sh fascicle $(CAMPS_FASCICLE)
	bash ./comprova.sh imprimible $(CAMPS_IMPRIMIBLE)
	bash ./comprova.sh fascicle-imprimible $(CAMPS_IMPRIMIBLE)

## quick      Una sola passada (esborrany ràpid, sense índex)
quick:
	$(TEX) $(TEXOPTS) $(MAIN).tex

## clean      Esborra els fitxers auxiliars (conserva els PDF)
clean:
	rm -f $(addprefix $(MAIN).,$(AUXEXT) xdvlog) $(addprefix fascicle.,$(AUXEXT) xdvlog) $(addprefix imprimible.,$(AUXEXT) xdvlog) $(addprefix fascicle-imprimible.,$(AUXEXT) xdvlog)

## distclean  Esborra auxiliars i el PDF
distclean: clean
	rm -f $(MAIN).pdf fascicle.pdf imprimible.pdf fascicle-imprimible.pdf

## help       Mostra aquesta ajuda
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## /  /'
