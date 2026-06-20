# Reals

Projecte aprendes sobre els nombres reals.

## Document principal

- `main.tex`: llibre unificat en classe `book`, traduït al català i revisat amb l'estil visual aprendes.
- `main.pdf`: PDF compilat del llibre complet.

## Estructura

- `caps/teoria.tex`: teoria integrada sense preàmbul independent.
- `caps/practica.tex`: exercicis resolts integrats.
- `caps/exercicis.tex`: exercicis proposats integrats.
- `tests/test1.tex`: primer test de la unitat.
- `tests/test2.tex`: segon test de la unitat.
- `tests/test3.tex`: test general de síntesi de tota la unitat.
- `img/`: figures originals convertides a `.png`, compatibles amb XeLaTeX.

## Compilació

Des de la carpeta `batxillerat/reals/`:

```bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

El fitxer `main.tex` crida `../common/interactive-tests.tex`, de manera que la carpeta `common/` ha d'estar al mateix nivell que `reals/`.