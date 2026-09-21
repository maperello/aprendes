# Una introducció a la teoria de categories

**Formació prèvia per aprendre lògica categòrica**

Autor: Miquel Àngel Perelló · Versió 1.6 (setembre de 2026) · Projecte [**aprendes / logcat**](https://aprendes.com/logcat/)

Aquest llibre és una introducció a la teoria de categories **orientada a servir de
base per a un volum posterior de lògica categòrica**. Segueix el nivell i l'estil
d'una introducció general (comparable a Awodey, *Category Theory*) i hi afegeix el
detall que constitueix la infraestructura categòrica que la lògica necessita.

Forma part de la col·lecció **logcat** (fonaments de la matemàtica i lògica
categòrica). Cada llibre es publica per capítols (fascicles) a mesura que es
revisen; de cada fascicle se'n poden consultar el PDF i les fonts LaTeX.

- Web del projecte: <https://aprendes.com/logcat/>
- Repositori: <https://github.com/maperello/aprendes> (aquest llibre és a `logcat/categories/`)

## Estat de la publicació

El **fascicle actual (versió 1.6) comprèn els capítols 1–4** en les quatre parts (teoria,
pràctica, exercicis proposats i tests interactius), amb els apèndixs, el glossari,
la bibliografia i la taula de notació. La resta de capítols (5–10) són al
repositori i s'incorporaran al fascicle a mesura que es revisin.

## Estructura del llibre

- Prefaci
- Introducció
- Part I: Teoria
- Part II: Pràctica
- Part III: Exercicis proposats
- Part IV: Tests interactius
- Bibliografia
- Índex alfabètic

Els capítols de les quatre parts mantenen el mateix nom i ordre. La part de Teoria
té deu capítols; les parts de Pràctica, Exercicis i Tests en tenen nou (el capítol
final és un epíleg sense exercicis):

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

Els capítols 7–9 estenen el recorregut cap a la lògica categòrica: **categories
cartesianes tancades** introdueix els objectes exponencials, la currificació i la
semàntica del càlcul lambda simplement tipat (correspondència de
Curry–Howard–Lambek); **subobjectes, imatges i factoritzacions** presenta el
preordre `Sub(A)` com a àlgebra de predicats, la reindexació `f*` com a
substitució, la factorització imatge i les categories regulars, i realitza
l'existencial com a adjunt per l'esquerra de la reindexació; **classificadors de
subobjectes i topos** defineix el classificador `Ω` i el topos elemental amb els
exemples bàsics. El capítol 10 és un **pont**: explicita què es trasllada al volum
de lògica (lògica d'equacions, de límits finits, regular, coherent/geomètrica,
intuïcionista, doctrines i fibracions, teories classificadores i booleanització)
sense desenvolupar-ho.

**Frontera editorial.** La lògica pròpiament dita ---els sistemes lògics amb la
seva sintaxi, correcció i completesa, i les condicions de coherència
Beck–Chevalley i Frobenius com a estructura de doctrina--- es reserva per al volum
de lògica categòrica. El material corresponent que es va esbossar durant la
redacció es conserva a `_per_al_volum_logica/` per reaprofitar-lo allà (no forma
part de la compilació).

## Criteris didàctics

- Quan una propietat categòrica té una expressió natural amb fletxes, es presenta
  juntament amb el seu diagrama.
- Els diagrames es tracten com a part del llenguatge matemàtic: es treballa
  explícitament el pas entre diagrames i equacions.
- Els exemples de **conjunts**, **preordres**, **lògica** i **grafs** reapareixen
  sempre que aporten una interpretació natural del concepte.
- La lògica es presenta primer mitjançant la categoria prima de la deduïbilitat;
  la interpretació més fina de les proves com a morfismes queda assenyalada per
  desenvolupar-la quan es disposi de més llenguatge categòric.
- Els grafs es tracten tant com a objectes de la categoria `Graph` com a esquelet
  combinatori dels diagrames i punt de partida de les categories lliures.

## Compilació

El motor oficial és **XeLaTeX** (el preàmbul carrega fonts OTF de Latin Modern via
`fontspec` amb XeLaTeX o LuaLaTeX, i fa un *fallback* a `lmodern` amb pdfLaTeX).
Els fitxers compartits d'estil i preàmbul viuen a la subcarpeta `common/` i es
carreguen per camí relatiu, de manera que no cal configurar `TEXINPUTS`.

Des del directori `categories/`:

```sh
xelatex -interaction=nonstopmode main.tex
makeindex main.idx
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

També compila amb pdfLaTeX i LuaLaTeX, però XeLaTeX és el motor de referència per a
les mètriques de composició.

### Amb Make

```sh
make            # llibre complet (capítols 1-10)
make fascicle   # versió parcial per publicar (capítols 1-4) -> main.pdf
make quick      # una sola passada (esborrany)
make clean      # esborra els fitxers auxiliars
make help       # llista els objectius
```

### Amb latexmk

```sh
latexmk         # compilació completa amb índex (llibre complet, XeLaTeX)
latexmk -c      # neteja els auxiliars
```

### Fascicle i llibre complet (interruptor)

`main.tex` porta un interruptor per triar entre el **llibre complet** (per
defecte) i el **fascicle** (capítols 1–4 en les quatre parts, més apèndixs,
glossari, bibliografia, taula de notació i índex). Hi ha dues maneres equivalents
d'activar el fascicle:

- **Automàtica** (la que fa servir `make fascicle`): definir `\fascicle` a la línia
  d'ordres, sense tocar cap fitxer:

  ```sh
  xelatex -jobname=main "\def\fascicle{}\input{main.tex}"
  ```

- **Manual**: descomentar la línia `\publicacioparcialtrue` a l'inici de `main.tex`.

En mode fascicle, algunes remissions a capítols posteriors (límits, adjuncions…)
apareixen sense resoldre, ja que aquells capítols no s'inclouen. Això és esperat.

### Tests interactius

Els tests interactius requereixen un lector de PDF compatible amb formularis
AcroForm i JavaScript per poder utilitzar els botons de correcció. Es recomana
descarregar el PDF i obrir-lo amb **Adobe Acrobat Reader**; alguns visualitzadors
integrats als navegadors no executen correctament les funcions interactives.

## Convenció de mida

Per a tot el llibre s'adopta la convenció següent: una categoria és **petita** si
la seva col·lecció d'objectes *i* la seva col·lecció de morfismes són totes dues
conjunts, i **localment petita** si entre cada parella d'objectes hi ha un conjunt
de morfismes (encara que la col·lecció d'objectes pugui ser una classe pròpia). En
particular, una categoria amb un conjunt d'objectes i localment petita és petita.
`Set`, `Grp`, `Top`, `Graph` i `Cat` (la categoria de categories petites) són
localment petites però no petites. Els functors `Free: Graph -> Cat` i
`U: Cat -> Graph` operen entre categories grans i, per tant, no són morfismes de
`Cat`.

## Fitxers llegats

El directori `common/legacy/` conté versions antigues de l'estil
(`aprendes-sobri.sty`, `aprendes-modern.sty`) i dels entorns (`environments.tex`).
**No s'usen** en la compilació actual, que carrega l'estil unificat
`common/aprendes.sty`. Es conserven només com a referència històrica i poden tenir
dependències no declarades.

## Llicència

Vegeu el fitxer `LICENSE` a l'arrel del repositori
[maperello/aprendes](https://github.com/maperello/aprendes).
