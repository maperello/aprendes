# Capítol 1 — Categories i morfismes especials

Fascicle de la **revisió 2** de *Teoria de categories*.

- `teoria.tex`: teoria del capítol 1.
- `practica.tex`: pràctica amb exercicis resolts detalladament.
- `exercicis.tex`: exercicis proposats amb indicacions, no solucions completes.
- `test.tex`: test interactiu i clau estàtica de respostes.
- `bibliografia.tex`: les tres obres citades al capítol.
- `metadata.tex`: títol, autoria, revisió i data editorial del fascicle.

## Compilació

Des de l'arrel de `categories`:

```sh
cd catcap1
latexmk main.tex
```

El resultat és `catcap1/main.pdf`. Cal una instal·lació de TeX amb XeLaTeX,
latexmk i els paquets del projecte original. Per netejar els auxiliars
sense esborrar el PDF: `latexmk -c` des de `catcap1`.

La carpeta és autònoma respecte del llibre complet i de `catintro`, però
necessita `../common` al mateix nivell. No necessita cap `.aux` del llibre.
Les referències internes conserven la numeració; les remissions a material
no inclòs es donen pel nom de la secció, capítol o apèndix del volum complet.
La introducció es troba al fascicle `catintro`.

Els controls del test requereixen un lector amb suport de formularis PDF
i JavaScript. La clau estàtica permet corregir-lo també sense interactivitat.

## Edició i publicació

Els quatre continguts són còpies extretes de `caps/*/categories.tex`, no
inclusions d'aquests originals. Només s'han adaptat les remissions externes
de la teoria; no s'han reescrit els exercicis ni les respostes del test.
Els canvis posteriors al llibre complet no es propaguen automàticament:
cal incorporar-hi expressament les correccions que es vulguin publicar.

Per publicar les fonts, pugeu `catcap1/` i `common/` com a carpetes germanes;
el PDF es pot distribuir tot sol. No cal pujar fitxers auxiliars.