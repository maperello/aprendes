# Lògica, Raonament i Demostració

Material de suport per a l'alumnat i el professorat de Batxillerat sobre lògica, raonament matemàtic i tècniques de demostració.

Aquest directori conté uns apunts en LaTeX amb teoria, exemples, exercicis resolts, exercicis proposats i tests d'autoavaluació interactius en PDF.

## Fitxers principals

- `main.tex`: document principal.
- `main.pdf`: versió compilada del document.
- `aprendes-modern.sty`: estil LaTeX del document.
- `caps/teoria.tex`: teoria de lògica, quantificadors i demostracions.
- `caps/practica.tex`: exercicis resolts.
- `caps/exercicis.tex`: exercicis proposats.
- `tests/`: tests interactius.
- `img/`: imatges utilitzades pel document.

## Compilació

Per generar el PDF cal tenir una distribució LaTeX instal·lada. Des d'aquest directori:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

El fitxer generat és `main.pdf`.

## Ús educatiu

Aquest material està pensat per ser reutilitzat, adaptat i millorat per la comunitat educativa. Si hi detecteu errades, ambigüitats o propostes de millora, podeu obrir una incidència o enviar una proposta de canvi al repositori.

## Llicència

El contingut educatiu d'aquest directori es publica sota la llicència Creative Commons Reconeixement-CompartirIgual 4.0 Internacional. Vegeu `LICENSE`.