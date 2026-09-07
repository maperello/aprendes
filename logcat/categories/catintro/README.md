# Prefaci i introducció

Fascicle independent amb còpies de `caps/prefaci.tex` i `caps/introduccio.tex`.
No pressuposa que aquests textos hagin completat la revisió 2 del capítol 1.

## Compilació

Des de l'arrel de `categories`:

```sh
cd catintro
latexmk main.tex
```

El resultat és `catintro/main.pdf`. Es fa servir XeLaTeX i la configuració
local de latexmk. Per netejar auxiliars sense esborrar el PDF: `latexmk -c`.

Només cal aquesta carpeta i `../common`; no cal el llibre complet,
`catcap1` ni cap fitxer auxiliar generat per un altre document.
El títol, l'autoria i la data editorial són a `metadata.tex`.

## Guia de lectura opcional

Quan vulgueu afegir-la, creeu `guia-lectura.tex` dins d'aquesta carpeta.
`main.tex` l'incorporarà automàticament després de la introducció.
El fitxer ha de contenir només el cos LaTeX, per exemple:

```tex
\chapter*{Guia de lectura}
\addcontentsline{toc}{chapter}{Guia de lectura}
\markboth{Guia de lectura}{Guia de lectura}
```

No s'ha creat encara cap guia ni s'ha afegit contingut editorial nou als
textos extrets. Les modificacions dels originals no es propaguen a aquestes
còpies. Per publicar les fonts, manteniu `catintro/` i `common/` com a
carpetes germanes; el PDF es pot distribuir tot sol.