# Nombres complexos

Projecte `aprendes` sobre els nombres complexos.

## Document principal

* `main.tex`: llibre unificat en classe `book`, traduït al català, revisat matemàticament i adaptat a l'estil visual d'`aprendes`.
* `main.pdf`: PDF compilat del llibre complet.

## Estructura

* `caps/teoria.tex`: capítol 1, construït a partir del fitxer original `teoria.tex` / `complejostexteo.tex`.
* `caps/practica.tex`: capítol 2, construït a partir del fitxer original `practica.tex` / `complejostexejer.tex`.
* `caps/exercicis.tex`: capítol 3, construït a partir del fitxer original `exercicis.tex` / `complejostexpro.tex`; les solucions originals apareixen com a indicacions.
* `tests/test1.tex`: test interactiu nou sobre la primera meitat de la teoria.
* `tests/test2.tex`: test interactiu nou sobre la segona meitat de la teoria.
* `tests/test3.tex`: test interactiu global construït a partir del test original `test1.tex` / `complejostexexa.tex`.
* `img/`: figures originals convertides a `.png`, compatibles amb XeLaTeX.

## Compilació

Des de la carpeta `batxillerat/complexos/`:

```bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

El fitxer `main.tex` crida `../common/interactive-tests.tex`, de manera que la carpeta `common/` ha d'estar al mateix nivell que `complexos/`.
