# Teoria de conjunts: una visió categòrica sense categories

Autor: Miquel Àngel Perelló · Versió 1.7.1 (octubre de 2026) · Projecte [**aprendes / logcat**](https://aprendes.com/logcat/)

Teoria estructural de conjunts (ETCS) exposada en un llenguatge de primer ordre
sobre aplicacions —els predicats `Dom`, `Cod` i `Com`— sense pressuposar la
teoria de categories. Forma part de la col·lecció **logcat** amb *Una
introducció a la teoria de categories* i *Lògica categòrica I*, amb els quals
comparteix l'estil, el preàmbul i la mecànica dels tests.

- Web del projecte: <https://aprendes.com/logcat/>
- Repositori: <https://github.com/maperello/aprendes> (aquest llibre és a `logcat/conjunts/`)

## Estructura del llibre

- Prefaci i introducció
- Part I: Teoria (20 capítols)
- Part II: Pràctica (19 capítols)
- Part III: Exercicis proposats (19 capítols)
- Part IV: Tests interactius (19 tests de 12 preguntes, amb justificació de cada resposta)
- Apèndixs: A, solucions dels tests; B, quasiexemples i contraexemples; C,
  tres conjunts al llarg del llibre; D, correspondència amb el volum de categories
- Resum, glossari de símbols, bibliografia i índex alfabètic

Els capítols de les quatre parts mantenen el mateix nom i ordre; el capítol 20
és un balanç sense capítols paral·lels:

| Fitxer | Capítol | Nivell axiomàtic |
|---|---|---|
| `aplicacions` | 1. Aplicacions, dominis, codominis i composició | I |
| `parts` | 2. Parts i construccions universals | I |
| `valors` | 3. Valors de veritat, parts i construccions finites | I |
| `relacions` | 4. Relacions, quocients i elecció | I + elecció |
| `imatges` | 5. Imatges i factoritzacions | I |
| `exponencials` | 6. Exponencials | I |
| `conjunt-parts` | 7. El conjunt de parts i la pertinença interna | I |
| `naturals` | 8. L'objecte dels nombres naturals | I |
| `finits` | 9. Conjunts finits i cardinalitat finita | I |
| `infinitud` | 10. Infinitud, enumerabilitat i seqüències | I |
| `cantor` | 11. Comparació de conjunts, Schröder–Bernstein i Cantor | I |
| `families` | 12. Famílies, fibres i operacions indexades | I |
| `bons-ordres` | 13. Ordres, bons ordres i segments | I |
| `recursio` | 14. Inducció i recursió transfinites | I |
| `zorn` | 15. Zorn, Hartogs i el teorema del bon ordre | I + elecció |
| `ordinals` | 16. Tipus ordinals | I |
| `aritmetica-ordinal` | 17. Aritmètica ordinal | I |
| `cardinals` | 18. Cardinals i aritmètica cardinal | I + elecció |
| `alephs` | 19. Alephs, cofinalitat i continu | + SR (esquema adoptat) |
| `models` | 20. Models, mida i comparació amb ZF/ETCS | balanç |

**Nivell I** són els axiomes d'ETCS (topos ben apuntat amb objecte de nombres
naturals i elecció). **SR**, l'esquema de substitució estructural, és un
principi opcional, adoptat al capítol 19 i marcat a cada resultat que en depèn.

## Compilació

El motor oficial és **XeLaTeX**, amb **Biber** per a la bibliografia i
`makeindex` per a l'índex. Els fitxers compartits d'estil i preàmbul viuen a
`common/` (idèntics als dels altres llibres de la col·lecció) i es carreguen
per camí relatiu, sense `TEXINPUTS`.

```sh
make            # llibre complet per a pantalla -> main.pdf
make imprimible # versió per imprimir (fons blanc, tests estàtics) -> imprimible.pdf
make ci         # compilació neta de les dues modalitats i comprovacions
make quick      # una sola passada (esborrany)
make clean      # esborra els fitxers auxiliars
```

o bé, equivalentment, `latexmk` (el `latexmkrc` fixa XeLaTeX, Biber i l'índex).
A mà:

```sh
xelatex -interaction=nonstopmode main.tex
biber main
makeindex main.idx
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

Des d'un editor sense `make` (WinEdt, TeXstudio…), la versió imprimible es
genera compilant el fitxer `imprimible.tex` amb la mateixa seqüència
(XeLaTeX, Biber, MakeIndex, XeLaTeX, XeLaTeX); el resultat és `imprimible.pdf`.

`make ci` executa `./comprova.sh`, que falla si hi ha errors de LaTeX,
referències o citacions no resoltes, camps de formulari repetits o un nombre de
camps diferent de l'esperat (1197 al llibre de pantalla: 19 tests de 12
preguntes, 63 camps per test; 0 a l'imprimible).

### Tests interactius

Els tests es corregeixen amb JavaScript d'AcroForm, que requereix un lector
compatible (es recomana Adobe Acrobat Reader). Per als lectors que no l'admeten
i per a l'ús en paper, les claus de respostes es reuneixen a l'apèndix
*Solucions dels tests*, al final del llibre; cada test hi remet amb un enllaç.
Cada pregunta porta la seva justificació (`\justificacio{...}`, com al volum
de categories), que l'apèndix recull al costat de la clau.

## Estat de la publicació

La **versió 1.7.1** incorpora la versió canònica nova de
`common/interactive-tests.tex`: als tests de la versió de pantalla, marcar una
opció desmarca les altres de la mateixa pregunta. L'aspecte dels tests i el
contingut del llibre no canvien.

La **versió 1.7** és el resultat d'una segona lectura independent de totes
les demostracions dels vint capítols de teoria, feta sobre la 1.6. No s'hi ha
trobat cap resultat fals. S'han corregit cinc demostracions amb errors o
forats (capítols 5, 7, 14, 17 i 19), s'ha afegit al capítol 19 un lema de
separació completa sota SR, i s'han completat o precisat una vintena de
justificacions. La **versió 1.6** havia estat la revisió matemàtica,
lingüística i didàctica completa de la 1.5.

Cada capítol de teoria té els blocs d'objectius i de síntesi de la col·lecció,
i cada test, 12 preguntes justificades. Inclou quatre apèndixs: les solucions
dels tests, quasiexemples i contraexemples, els tres conjunts **2**, ℕ i P(A)
al llarg del llibre, i la correspondència amb el volum de categories.

## Organització de la carpeta

- `main.tex`, `metadata.tex`, `bibliografia.bib`: document principal, metadades
  (una sola font de veritat per a títol, versió i data) i bibliografia.
- `caps/`: capítols (`teoria/`, `practica/`, `exercicis/`, `tests/`),
  introducció, prefaci, resum, glossari, macros pròpies (`conjunts-macros.tex`)
  i la mecànica de tests estàtics i solucions.
- `common/`: estil i preàmbul compartits amb la col·lecció. **No s'editen
  localment**: els canvis es fan a la còpia canònica i es propaguen als tres
  llibres.
- `Makefile`, `latexmkrc`, `comprova.sh`: compilació i comprovacions.
- `main.pdf`, `imprimible.pdf`: les dues versions compilades, enllaçades des
  de la web del projecte.

## Errates i col·laboració

Les errates, correccions i suggeriments són benvinguts mitjançant
[*issues*](https://github.com/maperello/aprendes/issues) (indicant la versió i
la pàgina) o *pull requests* al repositori.

## Llicència

Aquesta obra està subjecta a la llicència
[Creative Commons Reconeixement-CompartirIgual 4.0 Internacional (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/deed.ca).
Vegeu el fitxer `LICENSE`.
