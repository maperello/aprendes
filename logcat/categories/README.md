# Teoria de categories — aprendes

Estructura del llibre:

- Prefaci
- Introducció
- Part I: Teoria
- Part II: Pràctica
- Part III: Exercicis proposats
- Part IV: Tests interactius
- Bibliografia
- Índex alfabètic

Els capítols de les quatre parts mantenen el mateix nom i ordre. Aquest volum és una introducció a la teoria de categories **orientada a servir de base per a un volum posterior de lògica categòrica**; segueix el nivell i l'estil d'una introducció general (comparable a Awodey, *Category Theory*), afegint el detall que constitueix la infraestructura categòrica que la lògica necessita. La part de Teoria té deu capítols; les parts de Pràctica, Exercicis i Tests en tenen nou (el capítol final és un epíleg sense exercicis):

1. Categories i morfismes especials
2. Functors
3. Transformacions naturals i equivalències
4. Representabilitat i Yoneda
5. Límits i colímits
6. Adjuncions
7. Categories cartesianes tancades
8. Subobjectes, imatges i factoritzacions
9. Classificadors de subobjectes i introducció als topos
10. Pont cap a la lògica categòrica *(epíleg, només a la part de Teoria)*

Els capítols 7–9 estenen el recorregut cap a la lògica categòrica: **categories cartesianes tancades** introdueix els objectes exponencials, la currificació i la semàntica del càlcul lambda simplement tipat (correspondència de Curry–Howard–Lambek); **subobjectes, imatges i factoritzacions** presenta el preordre `Sub(A)` com a àlgebra de predicats, la reindexació `f*` com a substitució, la factorització imatge i les categories regulars, i realitza l'existencial com a adjunt per l'esquerra de la reindexació (a l'estil d'Awodey §9.5, com a exemple d'adjunció), tot indicant que l'universal requereix estructura addicional i es reserva per al volum de lògica; **classificadors de subobjectes i topos** defineix el classificador `Ω` i el topos elemental amb els exemples bàsics. El capítol 10 és un **pont**: explicita què es trasllada al volum de lògica (lògica d'equacions, de límits finits, regular, coherent/geomètrica, intuïcionista, doctrines i fibracions, teories classificadores i booleanització) sense desenvolupar-ho.

## Criteris didàctics

- Quan una propietat categòrica té una expressió natural amb fletxes, es presenta juntament amb el seu diagrama.
- Els diagrames es tracten com a part del llenguatge matemàtic: es treballa explícitament el pas entre diagrames i equacions.
- Els exemples de **conjunts**, **preordres**, **lògica** i **grafs** reapareixen sempre que aporten una interpretació natural del concepte.
- La lògica es presenta primer mitjançant la categoria prima de la deduïbilitat; la interpretació més fina de les proves com a morfismes queda assenyalada per desenvolupar-la quan es disposi de més llenguatge categòric.
- Els grafs es tracten tant com a objectes de la categoria `Graph` com a esquelet combinatori dels diagrames i punt de partida de les categories lliures.

## Compilació

El motor oficial és **XeLaTeX** (el preàmbul carrega fonts OTF de Latin Modern via `fontspec` quan es compila amb XeLaTeX o LuaLaTeX, i fa un *fallback* a `lmodern` amb pdfLaTeX). Des del directori `categories`:

```sh
xelatex -interaction=nonstopmode main.tex
makeindex main.idx
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

També compila amb pdfLaTeX i LuaLaTeX, però XeLaTeX és el motor de referència per a les mètriques de composició.

### Versió parcial (capítols 1–3)

`main.tex` inclou un interruptor per generar una versió reduïda amb només els tres primers capítols (Categories, Functors i Transformacions naturals) en les quatre parts, més els apèndixs, el glossari, la bibliografia, la taula de notació i l'índex. A l'inici de `main.tex`:

```
\publicaciotresprimersfalse   % llibre complet (per defecte)
\publicaciotresprimerstrue    % versió parcial, capítols 1–3
```

Amb l'interruptor a `true`, la seqüència de compilació és la mateixa (XeLaTeX, makeindex, XeLaTeX ×2). Les mateixes fonts serveixen per als dos artefactes; no cal duplicar cap fitxer. En aquesta versió parcial, algunes remissions a capítols posteriors (representabilitat, límits, adjuncions…) apareixen sense resoldre, ja que aquells capítols no s'inclouen.

Els tests interactius requereixen un lector de PDF compatible amb formularis AcroForm i JavaScript per poder utilitzar els botons de correcció.

## Compilació ràpida amb Make

Alternativament, des del directori `categories`:

```sh
make        # compilació completa (XeLaTeX + índex + passades)
make quick  # una sola passada
make clean  # esborra auxiliars
```

El `Makefile` afegeix `../common` a `TEXINPUTS`, de manera que `\usepackage{aprendes}` troba el paquet pel nom sense avisos de ruta.

Alternativament, hi ha un `latexmkrc` que fa el mateix amb `latexmk`:

```sh
latexmk       # compilació completa amb índex (XeLaTeX)
latexmk -c    # neteja els auxiliars
```

## Fitxers llegats

El directori `common/legacy/` conté versions antigues de l'estil
(`aprendes-sobri.sty`, `aprendes-modern.sty`) i dels entorns
(`environments.tex`). **No s'usen** en la compilació actual, que carrega
l'estil unificat `common/aprendes.sty`. Es conserven només com a
referència històrica i poden tenir dependències no declarades.

## Convenció de mida

Per a tot el llibre s'adopta la convenció següent: una categoria és
**petita** si la seva col·lecció d'objectes *i* la seva col·lecció de
morfismes són totes dues conjunts, i **localment petita** si entre cada
parella d'objectes hi ha un conjunt de morfismes (encara que la col·lecció
d'objectes pugui ser una classe pròpia). En particular, una categoria amb
un conjunt d'objectes i localment petita és petita. `Set`,
`Grp`, `Top`, `Graph` i `Cat` (la categoria de categories petites) són
localment petites però no petites. Els functors `Free: Graph → Cat` i
`U: Cat → Graph` operen entre categories grans i, per tant, no són
morfismes de `Cat`.
