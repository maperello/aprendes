# Nombres racionals

Aquesta unitat forma part del projecte **aprendes** i està dedicada a l'estudi dels nombres racionals.

L'objectiu no és només practicar càlculs amb fraccions, sinó entendre per què cal ampliar el conjunt dels nombres enters, com es construeixen rigorosament els nombres racionals i quines propietats algebraiques, d'ordre, geomètriques i decimals tenen.

La unitat combina construcció matemàtica, interpretació geomètrica, pràctica guiada, aplicacions contextualitzades i activitats d'autoavaluació.

## Contingut de la unitat

La unitat està organitzada en quatre blocs principals:

1. **Teoria**  
   Presenta la motivació geomètrica i algebraica dels nombres racionals, la seva construcció com a classes de fraccions equivalents, les operacions, l'ordre, l'expressió decimal, la representació gràfica, les potències, les arrels, les proporcions, la proporcionalitat i les funcions de proporcionalitat.

2. **Pràctica**  
   Inclou exercicis resolts pas a pas, orientats a consolidar les idees principals de la teoria. S'hi treballen la representació de racionals mitjançant el teorema de Tales, les operacions combinades amb fraccions, potències i arrels, les proporcions, els repartiments i els problemes de la vida real.

3. **Exercicis proposats**  
   Recull exercicis addicionals amb indicacions breus quan és necessari. L'objectiu és que l'alumnat pugui practicar de manera autònoma i comprovar si ha entès els continguts essencials de la unitat.

4. **Tests interactius**  
   Inclou tests d'autoavaluació sobre els continguts de la unitat:
   - construcció i representació dels nombres racionals;
   - operacions, decimals, potències i arrels;
   - raons, proporcions, proporcionalitat i aplicacions;
   - síntesi avançada de la unitat.

## Objectius

En acabar la unitat, l'alumnat hauria de ser capaç de:

- entendre la necessitat d'ampliar el conjunt dels nombres enters al conjunt dels nombres racionals;
- distingir entre fracció i nombre racional;
- comprendre la relació d'equivalència entre fraccions i la construcció de \(\Q\) com a conjunt de classes d'equivalència;
- identificar els enters com a nombres racionals mitjançant la inclusió natural \(\Z\subset\Q\);
- operar amb nombres racionals i justificar que les operacions estan ben definides;
- utilitzar correctament l'addició, la multiplicació, la resta, la divisió i els inversos en \(\Q\);
- treballar amb l'ordre en \(\Q\), la densitat i la propietat arquimediana;
- representar nombres racionals a la recta numèrica, especialment mitjançant construccions basades en el teorema de Tales;
- reconèixer decimals finits i decimals periòdics, i obtenir fraccions generatrius;
- calcular potències i arrels racionals quan existeixen dins de \(\Q\);
- aplicar les propietats de les raons i les proporcions;
- resoldre problemes de tercera proporcional, quarta proporcional i mitjana proporcional;
- decidir si una situació és de proporcionalitat directa, inversa o cap de les dues;
- resoldre repartiments i problemes contextualitzats sense aplicar mecànicament una regla;
- interpretar funcions de proporcionalitat directa i inversa a partir de punts de coordenades racionals.

## Estructura del projecte

L'arxiu principal del projecte és:

```text
main.tex
```

La resta de fitxers s'organitzen habitualment en carpetes separades per contingut, tests i fitxers comuns.

Una estructura típica és:

```text
.
├── main.tex
├── caps/
│   ├── teoria.tex
│   ├── practica.tex
│   └── exercicis.tex
├── tests/
│   ├── test1.tex
│   ├── test2.tex
│   ├── test3.tex
│   └── test4.tex
├── common/
│   ├── aprendes-modern.sty
│   ├── preamble.tex
│   ├── environments.tex
│   ├── macros.tex
│   └── interactive-tests.tex
└── README.md
```

## Compilació

El projecte està pensat per compilar-se amb XeLaTeX.

Es pot compilar amb:

```bash
latexmk -xelatex main.tex
```

També es pot compilar directament amb:

```bash
xelatex main.tex
```

En documents amb referències internes, taula de continguts o tests interactius, pot caldre compilar més d'una vegada.

Per netejar els fitxers auxiliars generats durant la compilació:

```bash
latexmk -c
```

Si es vol eliminar també el PDF generat:

```bash
latexmk -C
```

## Requisits

Cal disposar d'una distribució LaTeX actualitzada, com ara:

- TeX Live;
- MiKTeX;
- MacTeX.

També cal tenir disponibles els paquets habituals utilitzats pel projecte, especialment els relacionats amb matemàtiques, `tcolorbox`, `tikz`, `hyperref` i els tests interactius.

## Tests interactius

Els tests interactius estan pensats per ser visualitzats preferentment amb **Adobe Acrobat Reader**. Alguns visualitzadors de PDF, especialment els integrats en navegadors, poden no executar correctament la interactivitat dels formularis.

## Criteris d'estil

El material està escrit en català i segueix una estructura pensada per a alumnat de batxillerat. Es prioritzen:

- la claredat expositiva;
- el rigor matemàtic;
- la coherència terminològica;
- la progressió gradual de les idees;
- la connexió entre teoria, pràctica, exercicis i aplicacions.

En aquesta unitat és especialment important mantenir la distinció terminològica següent:

- **addició**: operació indicada pel signe \(+\);
- **suma**: resultat d'una addició;
- **multiplicació**: operació indicada pel signe \(\cdot\);
- **producte**: resultat d'una multiplicació.

Els exercicis proposats no han de duplicar mecànicament els exercicis resolts de la pràctica. Han de servir per comprovar la comprensió dels conceptes i la capacitat de decidir quin procediment és adequat en cada situació.

## Estat del projecte

Aquesta unitat se centra en els nombres racionals i pressuposa que ja s'han treballat els nombres naturals i enters en unitats anteriors.
