
# Nombres naturals i enters

Aquesta unitat forma part del projecte **Aprendes** i està dedicada a l'estudi dels nombres naturals i enters.

L'objectiu no és només practicar càlculs, sinó entendre com es construeixen aquests conjunts numèrics i per què són certes les propietats que s'utilitzen habitualment. Per això, els nombres naturals s'introdueixen a partir dels axiomes de Peano, i els nombres enters es construeixen com a classes d'equivalència de parelles de nombres naturals.

La unitat combina rigor matemàtic, pràctica guiada, aplicacions i activitats d'autoavaluació.

## Contingut de la unitat

La unitat està organitzada en quatre blocs principals:

1. **Teoria**  
   Presenta les definicions, construccions i propietats fonamentals dels nombres naturals i enters.

2. **Pràctica**  
   Inclou exercicis resolts pas a pas, orientats a consolidar les idees principals de la teoria.

3. **Aplicacions i modelització**  
   Mostra la utilitat dels nombres naturals i enters en situacions quotidianes: agrupacions, cicles, repartiments, saldos, temperatures, errors i divisibilitat.

4. **Exercicis proposats**  
   Recull exercicis addicionals amb indicacions breus per orientar la resolució.

5. **Tests interactius**  
   Inclou tres tests d'autoavaluació:
   - nombres naturals;
   - nombres enters;
   - síntesi de nombres naturals i enters.

## Objectius

En acabar la unitat, l'alumnat hauria de ser capaç de:

- comprendre el paper dels axiomes de Peano;
- utilitzar el principi d'inducció i la inducció forta;
- definir i treballar amb la suma, el producte i l'ordre en els nombres naturals;
- estudiar la divisibilitat, el màxim comú divisor i el mínim comú múltiple;
- entendre la construcció dels nombres enters a partir de parelles de naturals;
- operar amb enters i interpretar-ne el signe;
- treballar amb l'ordre, el valor absolut i la divisió amb residu en els enters;
- aplicar aquests conceptes a situacions de la vida quotidiana.

## Estructura del projecte

L'arxiu principal del projecte és:

```text
main.tex
````

La resta de fitxers s'organitzen en carpetes, habitualment separant el contingut del document, els entorns comuns, els tests i altres recursos auxiliars.

Una estructura típica és:

```text
.
├── main.tex
├── caps/
│   ├── teoria.tex
│   ├── practica.tex
│   ├── exercicis.tex
│   └── tests.tex
├── common/
│   ├── colors.tex
│   ├── commands.tex
│   ├── environments.tex
│   └── packages.tex
└── README.md
```

## Compilació

Per compilar el projecte, es recomana utilitzar `latexmk`:

```bash
latexmk -pdf main.tex
```

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

* TeX Live;
* MiKTeX;
* MacTeX.

També és recomanable compilar el document amb `pdflatex`, llevat que el projecte indiqui explícitament un altre motor de compilació.

## Criteris d'estil

El material està escrit en català i segueix una estructura pensada per a alumnat de batxillerat. Es prioritzen:

* la claredat expositiva;
* el rigor matemàtic;
* la coherència terminològica;
* la progressió gradual de les idees;
* la connexió entre teoria, pràctica i aplicacions.

Els exercicis proposats no dupliquen els exercicis resolts de la pràctica: ofereixen enunciats i indicacions breus perquè l'alumnat pugui avançar de manera autònoma.

## Estat del projecte

Aquesta unitat se centra exclusivament en els nombres naturals i enters. Els nombres racionals es tractaran en una unitat independent.


