# ============================================================
# Makefile — Teoria de conjunts: una visió categòrica sense categories
# Projecte aprendes / logcat.  Motor de referència: XeLaTeX.
# Requereix: xelatex, biber i makeindex (TeX Live o MiKTeX).
# ============================================================

MAIN    := main
TEX     := xelatex
TEXOPTS := -interaction=nonstopmode -halt-on-error

# Camps de formulari: 5 per pregunta (4 opcions i correcció) i 3 per test
# (Corregir, Netejar, Nota). 19 tests de 12 preguntes: 19·63 = 1197.
# Cal actualitzar-ho a cada capítol nou.
CAMPS_COMPLET    := 1197
CAMPS_IMPRIMIBLE := 0

# Fonts (informatiu; els targets de compilació sempre s'executen).
SOURCES := $(MAIN).tex metadata.tex bibliografia.bib \
           $(wildcard common/*.tex) $(wildcard common/*.sty) \
           $(wildcard caps/*.tex) $(wildcard caps/*/*.tex)

# Extensions auxiliars que s'esborren amb `make clean`.
AUXEXT  := aux bcf bbl blg idx ilg ind log out run.xml \
           synctex synctex.gz toc lof lot fls fdb_latexmk xdv auxlock

# Compilació completa d'un jobname: $(call compila,JOB,DEFINICIONS)
define compila
	$(TEX) $(TEXOPTS) -jobname=$(1) "$(2)\input{$(MAIN).tex}"
	biber $(1)
	-makeindex $(1).idx
	$(TEX) $(TEXOPTS) -jobname=$(1) "$(2)\input{$(MAIN).tex}"
	$(TEX) $(TEXOPTS) -jobname=$(1) "$(2)\input{$(MAIN).tex}" 2>&1 | tee $(1).xdvlog >/dev/null
endef

.PHONY: all imprimible ci quick clean distclean help

## all        Llibre complet per a pantalla -> main.pdf (per defecte)
all:
	$(call compila,$(MAIN),)

## imprimible Versió per imprimir -> imprimible.pdf (no toca main.pdf)
imprimible:
	$(call compila,imprimible,\def\imprimible{})

## ci         Compilació neta i comprovada de les dues modalitats
ci: distclean
	$(call compila,$(MAIN),)
	$(call compila,imprimible,\def\imprimible{})
	bash ./comprova.sh $(MAIN) $(CAMPS_COMPLET)
	bash ./comprova.sh imprimible $(CAMPS_IMPRIMIBLE)

## quick      Una sola passada (esborrany ràpid, sense bibliografia ni índex)
quick:
	$(TEX) $(TEXOPTS) $(MAIN).tex

## clean      Esborra els fitxers auxiliars (conserva els PDF)
clean:
	rm -f $(addprefix $(MAIN).,$(AUXEXT) xdvlog) $(addprefix imprimible.,$(AUXEXT) xdvlog)

## distclean  Esborra auxiliars i PDF
distclean: clean
	rm -f $(MAIN).pdf imprimible.pdf

## help       Mostra aquesta ajuda
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## /  /'
