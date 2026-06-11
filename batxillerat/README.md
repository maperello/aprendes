# Materials de Batxillerat Aprendes

Material de suport per a l'alumnat i el professorat de Batxillerat.

El projecte conté apunts en LaTeX amb teoria, exemples, exercicis resolts, exercicis proposats i tests d'autoavaluació interactius en PDF.

## Contingut

- `batxillerat/logica/`: apunts de lògica, raonament i demostració.
- `batxillerat/conjunts/`: apunts de conjunts, relacions i aplicacions.
- `batxillerat/numbers/`: Nombres naturals i enters.
- `batxillerat/common/`: preàmbul, macros, entorns, tests interactius i estil Aprendes compartits.

Cada projecte té aquesta estructura bàsica:

- `main.tex`: document principal.
- `caps/`: teoria, pràctica i exercicis.
- `tests/`: tests interactius.
- `img/`: imatges utilitzades pel document.
- `main.pdf`: versió compilada del document.

## Compilació

Per generar el PDF cal tenir una distribució LaTeX instal·lada. Des de l'arrel del projecte:

```bash
cd batxillerat/logica
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

o bé:

```bash
cd batxillerat/conjunts
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

El fitxer generat és `main.pdf` dins del directori corresponent.

## Ús educatiu

Aquest material està pensat per ser reutilitzat, adaptat i millorat per la comunitat educativa. Si hi detecteu errades, ambigüitats o propostes de millora, podeu obrir una incidència o enviar una proposta de canvi.

## Llicència

El contingut educatiu es publica sota la llicència Creative Commons Reconeixement-CompartirIgual 4.0 Internacional. Vegeu el fitxer de llicència corresponent de cada projecte.
