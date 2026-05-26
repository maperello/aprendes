# Conjunts, relacions i aplicacions

Material interactiu d'autoavaluació per a Batxillerat sobre conjunts, relacions d'ordre, relacions d'equivalència i classes modulars.

El directori conté un test autocorrectiu en LaTeX i la versió compilada en PDF.

## Fitxers principals

- `main.tex`: document principal, amb la seqüència del llibre.
- `main.pdf`: versió compilada del test.
- `README.md`: descripció del material.
- `LICENSE`: llicència del contingut.

## Compilació

Per generar el PDF cal tenir una distribució LaTeX instal·lada. Des d'aquest directori:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

## Ús educatiu

El PDF està pensat perquè l'alumnat pugui respondre les preguntes i corregir-les automàticament amb el botó `Corregir`. Alguns lectors PDF poden limitar els formularis interactius; en general, Adobe Acrobat Reader ofereix millor compatibilitat.

## Llicència

El contingut educatiu d'aquest directori es publica sota la llicència Creative Commons Reconeixement-CompartirIgual 4.0 Internacional. Vegeu `LICENSE.txt`.

## Configuració compartida

Aquest projecte reutilitza fitxers comuns de `../common/`:

- `preamble.tex`: paquets i configuració general.
- `environments.tex`: colors i entorns matemàtics.
- `macros.tex`: macros matemàtiques i auxiliars.
- `interactive-tests.tex`: comandes dels tests interactius.
- `aprendes-modern.sty`: estil visual Aprendes.