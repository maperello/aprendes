# Una introducció a la teoria de categories

**Formació prèvia per aprendre lògica categòrica**

Autor: Miquel Àngel Perelló · Versió 1.7 (octubre de 2026) · Projecte [**aprendes / logcat**](https://aprendes.com/logcat/)

Aquest llibre és una introducció a la teoria de categories **orientada a servir de
base per a un volum posterior de lògica categòrica**. Segueix el nivell i l'estil
d'una introducció general (comparable a Awodey, *Category Theory*) i hi afegeix el
detall que constitueix la infraestructura categòrica que la lògica necessita.

Forma part de la col·lecció **logcat** (fonaments de la matemàtica i lògica
categòrica).

- Web del projecte: <https://aprendes.com/logcat/>
- Repositori: <https://github.com/maperello/aprendes> (aquest llibre és a `logcat/categories/`)

## Estat de la publicació

La **versió 1.7 és el llibre complet**: els deu capítols de teoria i els nou
capítols de pràctica, exercicis proposats i tests interactius, amb els apèndixs,
el glossari, la bibliografia, la taula de notació i l'índex. Tots els capítols han
passat una revisió matemàtica, didàctica i bibliogràfica completa. El PDF
publicat és `main.pdf`.

Novetats respecte de la versió 1.6 (fascicle dels capítols 1–4):

- s'hi incorporen els capítols 5–10 revisats;
- s'hi afegeixen la **Guia de lectura** i l'apèndix **Convenció de mida**;
- cada pregunta dels tests té una **justificació** breu; les claus i les
  justificacions es reuneixen al final del llibre (apèndix **Solucions dels tests**);
- les remissions bibliogràfiques s'han verificat amb les edicions citades.

## Estructura del llibre

- Prefaci
- Introducció
- Guia de lectura i itineraris d'aprenentatge
- Part I: Teoria
- Part II: Pràctica
- Part III: Exercicis proposats
- Part IV: Tests interactius
- Apèndixs: A. Axiomàtica relacional de les categories petites · B. Grafs ·
  C. Convenció de mida · D. Solucions dels tests · E. Quasiexemples i
  contraexemples (què no és una categoria, un functor o una transformació natural;
  igualtat, isomorfisme, isomorfisme natural i equivalència; la lògica fora dels
  topos). L'apèndix E només és al llibre complet.
- Bibliografia, glossari, taula de notació i índex alfabètic

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
semàntica del càlcul lambda simplement tipat; **subobjectes, imatges i
factoritzacions** presenta l'ordre parcial `Sub(A)` com a àlgebra de predicats, el
functor `Sub`, la reindexació `f*` com a substitució, la factorització imatge, les
categories regulars i l'existencial com a adjunt per l'esquerra de la
reindexació; **classificadors de subobjectes i topos** defineix el classificador
`Ω`, en demostra l'equivalència amb la representabilitat de `Sub` i presenta els
topos elementals amb els exemples de `Set`, els prefeixos i `Graph`. El capítol 10
és un **epíleg**: sense demostracions ni exercicis, dibuixa el mapa que porta de
les construccions del volum a la lògica categòrica.

**Frontera editorial.** La lògica pròpiament dita (els sistemes lògics amb la seva
sintaxi, correcció i completesa, i l'estructura de doctrina) es reserva per al
volum de lògica categòrica.

## Criteris didàctics

- Quan una propietat categòrica té una expressió natural amb fletxes, es presenta
  juntament amb el seu diagrama i la seva equació.
- Els exemples de **conjunts**, **preordres**, **lògica** i **grafs** reapareixen
  al llarg de tot el llibre.
- La deduïbilitat es presenta mitjançant la categoria prima **Prov**_T, amb `⊢_T`.
- Teoria i Pràctica no dupliquen demostracions: la Teoria dona l'arquitectura de
  l'argument i la Pràctica l'executa.
- Les indicacions dels exercicis orienten sense resoldre; els exercicis que
  requereixen àlgebra o topologia es marquen com a **ampliació**.

## Compilació

El motor oficial és **XeLaTeX**. Els fitxers compartits d'estil i preàmbul viuen
a la subcarpeta `common/` i es carreguen per camí relatiu, de manera que no cal
configurar `TEXINPUTS`. Des del directori `categories/`:

```sh
xelatex -interaction=nonstopmode main.tex
makeindex main.idx
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

### Amb Make

```sh
make            # llibre complet (capítols 1-10) -> main.pdf
make fascicle   # versió parcial (capítols 1-3) -> fascicle.pdf
make imprimible # llibre complet per imprimir -> imprimible.pdf
make fascicle-imprimible # fascicle per imprimir -> fascicle-imprimible.pdf
make ci         # compilació neta de les quatre modalitats i comprovacions
make quick      # una sola passada (esborrany)
make clean      # esborra els fitxers auxiliars
make help       # llista els objectius
```

### Compilació comprovada (`make ci`)

`make ci` esborra tots els fitxers generats, compila el llibre complet i el
fascicle en mode interactiu i imprimible, i executa `./comprova.sh` sobre cada un. La comprovació falla si hi ha
errors de LaTeX, referències o citacions no resoltes, objectes de formulari
duplicats o un nombre de camps de formulari diferent de l'esperat (632 al llibre
complet, 184 al fascicle i 0 a les dues variants imprimibles). També llista els desbordaments de més de 3 pt. Requereix
TeX Live amb XeLaTeX i `makeindex`; opcionalment, `pdfinfo` (poppler) i Python amb
`pypdf` per comptar les pàgines i els camps.

### Amb latexmk

```sh
latexmk         # compilació completa amb índex (llibre complet, XeLaTeX)
latexmk -c      # neteja els auxiliars
```

### Fascicle i llibre complet

Per defecte es genera el **llibre complet**. El **fascicle** (capítols 1–3 en les
quatre parts, més apèndixs, glossari, bibliografia, taula de notació i índex)
s'activa amb `make fascicle`, que el genera a `fascicle.pdf` sense tocar `main.pdf`, és a dir, definint `\fascicle` a la línia d'ordres:

```sh
xelatex -jobname=fascicle "\def\fascicle{}\input{main.tex}"
```

o bé descomentant la línia `\publicacioparcialtrue` a l'inici de `main.tex`. En
mode fascicle, les remissions a capítols posteriors s'escriuen amb el número del
capítol del volum complet (macros `\refcap` i `\refalt`), de manera que no queda cap
referència sense resoldre.

### Edició imprimible

`make imprimible` genera `imprimible.pdf` amb fons blanc, enllaços discrets i tests estàtics sense camps de formulari. `make fascicle-imprimible` aplica el mateix criteri al fascicle. Les solucions i justificacions dels tests es mantenen a l'apèndix. Cap d'aquests objectius no modifica `main.pdf`.

### Tests interactius

Els tests interactius requereixen un lector de PDF compatible amb formularis
AcroForm i JavaScript. Es recomana descarregar el PDF i obrir-lo amb **Adobe
Acrobat Reader**; alguns visualitzadors integrats als navegadors no executen
correctament les funcions interactives. Per a aquests casos i per a la lectura
en paper, les claus de respostes i les justificacions de tots els tests es
reuneixen a l'apèndix **Solucions dels tests**, al final del llibre; cada test
hi remet amb un enllaç.

## Organització de la carpeta

- `main.tex`, `metadata.tex`: document principal i metadades.
- `caps/`: capítols (`teoria/`, `practica/`, `exercicis/`, `tests/`), introducció,
  guia, apèndixs i materials de consulta.
- `common/`: estil i preàmbul compartits. `common/legacy/` conté versions antigues
  que **no s'usen** en la compilació actual.
- `Makefile`, `latexmkrc`, `comprova.sh`: compilació i comprovacions (`make ci`).
- `main.pdf`: llibre complet per a pantalla, amb tests interactius.
- `imprimible.pdf`: llibre complet per imprimir (fons blanc, tests en paper).

Tots dos PDF són els que enllaça la web.

## Convenció de mida

Una categoria és **petita** si la seva col·lecció d'objectes i la de morfismes són
conjunts, i **localment petita** si cada `Hom(A,B)` és un conjunt. El marc
conjuntista (classes a l'estil NBG, elecció global) es fixa a l'apèndix C.

## Errates i col·laboració

Les errates, correccions i suggeriments són benvinguts mitjançant
[*issues*](https://github.com/maperello/aprendes/issues) (indicant la versió i la
pàgina) o *pull requests* al repositori
[maperello/aprendes](https://github.com/maperello/aprendes).

## Com citar-lo

Miquel Àngel Perelló, *Una introducció a la teoria de categories*, versió 1.7,
2026. Projecte aprendes / logcat, <https://aprendes.com/logcat/>.

```bibtex
@book{perello2026categories,
  author    = {Perelló, Miquel Àngel},
  title     = {Una introducció a la teoria de categories},
  edition   = {versió 1.7},
  year      = {2026},
  month     = oct,
  publisher = {Projecte aprendes / logcat},
  url       = {https://aprendes.com/logcat/},
  note      = {Llicència CC BY-SA 4.0}
}
```

## Llicència

Aquesta obra està subjecta a la llicència
[Creative Commons Reconeixement-CompartirIgual 4.0 Internacional (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/deed.ca).
Vegeu el fitxer `LICENSE`.
