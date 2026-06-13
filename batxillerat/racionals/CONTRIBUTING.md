# Contribuir al projecte

Les contribucions són benvingudes, especialment si ajuden a millorar la claredat, el rigor matemàtic, la qualitat tipogràfica o la utilitat didàctica del material.

Aquest document estableix alguns criteris bàsics per mantenir la coherència de la unitat **Nombres racionals** dins del projecte **aprendes**.

## Tipus de contribucions

Es poden proposar millores en àmbits com ara:

- correcció d'errors matemàtics;
- correcció d'errades ortogràfiques, gramaticals o tipogràfiques;
- millora de redacció i claredat expositiva;
- revisió de definicions, demostracions i exemples;
- nous exercicis sobre nombres racionals, fraccions, decimals, potències, arrels, proporcions i proporcionalitat;
- noves situacions de modelització i problemes de la vida real;
- millores en els tests interactius;
- ajustos de format, figures o compilació LaTeX.

## Criteris matemàtics

Les aportacions han de respectar el nivell i l'enfocament de la unitat.

En particular:

- els nombres racionals es construeixen com a classes d'equivalència de fraccions;
- cal distingir entre una fracció i el nombre racional que representa;
- la inclusió dels enters en els racionals s'ha de tractar mitjançant l'aplicació natural \(n\mapsto [n/1]\);
- les operacions en \(\Q\) s'han de presentar com a operacions entre classes d'equivalència i cal justificar que estan ben definides quan pertoqui;
- l'ordre en \(\Q\) s'ha de formular de manera coherent amb representants de denominador positiu;
- la densitat de \(\Q\) i la propietat arquimediana s'han de tractar sense confondre-les;
- l'expressió decimal dels racionals ha de distingir decimals finits, decimals periòdics i fraccions generatrius;
- la representació de racionals a la recta ha de ser coherent amb la construcció geomètrica i pot utilitzar el teorema de Tales;
- les potències i arrels s'han de formular indicant clarament quan les expressions tenen sentit dins de \(\Q\);
- les proporcions han d'utilitzar la terminologia **extrems** i **mitjans**;
- els problemes de proporcionalitat han de demanar raonament: no convé indicar sempre si la relació és directa o inversa en l'enunciat.

Quan s'afegeixi una demostració, cal evitar salts argumentals innecessaris. Quan s'afegeixi un exercici, ha de quedar clar quin contingut treballa i quin grau de decisió matemàtica exigeix.

## Criteris de redacció

El text ha d'estar escrit en català normatiu i amb un registre formal, clar i didàctic.

Es recomana:

- mantenir frases precises i no excessivament llargues;
- evitar canvis innecessaris de terminologia;
- utilitzar sempre la mateixa notació per als mateixos conceptes;
- evitar expressions poc naturals o massa col·loquials;
- mantenir la coherència amb les unitats anteriors del projecte;
- evitar que els exercicis siguin purament mecànics quan el contingut permeti raonament conceptual.

Cal preservar la terminologia ja utilitzada en el projecte, com ara:

- **Teoria**;
- **Pràctica**;
- **Exercicis proposats**;
- **Tests interactius**.

En aquesta unitat cal tenir especial cura amb la distinció:

- **addició**: operació indicada pel signe \(+\);
- **suma**: resultat d'una addició;
- **multiplicació**: operació indicada pel signe \(\cdot\);
- **producte**: resultat d'una multiplicació.

També cal utilitzar **mitjans** i no **mitjos** quan es parla dels termes centrals d'una proporció.

## Criteris LaTeX

Abans d'enviar una contribució, cal comprovar que el projecte compila correctament.

El projecte està pensat per compilar-se amb XeLaTeX. Es recomana compilar amb:

```bash
latexmk -xelatex main.tex
```

També es pot compilar directament amb:

```bash
xelatex main.tex
```

I netejar els fitxers auxiliars amb:

```bash
latexmk -c
```

Les contribucions no haurien d'incloure fitxers auxiliars generats automàticament, com ara:

```text
.aux
.log
.out
.toc
.synctex.gz
.fdb_latexmk
.fls
```

Tampoc no cal incloure fitxers PDF generats, llevat que s'indiqui explícitament.

## Figures i entorns

Cal evitar entorns flotants com `figure` dins d'entorns basats en caixes, com ara `exemple`, `solucio`, `proposicio` o entorns similars. En aquests casos és preferible utilitzar:

```latex
\begin{center}
...
\end{center}
```

Si es representen funcions de proporcionalitat sobre \(\Q\), és preferible mostrar punts de coordenades racionals en lloc de dibuixar una corba contínua, llevat que s'indiqui explícitament que s'està considerant l'extensió sobre \(\R\).

## Notació i format

Quan s'escriguin decimals en matemàtiques, cal utilitzar la coma decimal amb la forma adequada, per exemple:

```latex
2{,}40
0{,}\overline{3}
```

Quan s'afegeixin etiquetes LaTeX, és preferible utilitzar noms descriptius.

Per exemple:

```latex
\label{prop:ordre-racionals}
\label{prop:densitat-racionals}
\label{ex:fraccio-generatriu}
```

És millor evitar etiquetes poc informatives com:

```latex
\label{1}
\label{2}
\label{a}
```

Les referències internes s'han d'escriure amb `\ref`, `\pageref` o les ordres específiques que utilitzi el projecte.

## Exercicis i solucions

Els exercicis de la secció de pràctica han d'anar acompanyats d'una solució completa.

Els exercicis proposats, en canvi, han d'incloure només una indicació breu quan sigui necessari. L'objectiu és orientar l'alumnat sense substituir-ne el procés de resolució.

Les aplicacions i situacions de modelització han de presentar un problema contextualitzat i una solució clara. En els problemes de proporcionalitat, és recomanable que l'alumnat hagi de decidir si la relació és directa, inversa o cap de les dues.

## Tests interactius

Els tests han de tenir preguntes clares, opcions plausibles i una única resposta correcta.

Quan es modifiqui un test, cal revisar també la clau de respostes corresponent.

És recomanable que els tests cobreixin de manera equilibrada:

- definicions;
- propietats;
- càlculs bàsics;
- interpretació conceptual;
- representació geomètrica;
- aplicacions i problemes contextualitzats.

Els tests interactius s'han de comprovar preferentment amb Adobe Acrobat Reader, perquè alguns visualitzadors de PDF integrats en navegadors poden no executar correctament la interactivitat.

## Abans d'enviar una contribució

Abans de proposar canvis, convé comprovar que:

- el document compila sense errors;
- no hi ha referències indefinides;
- no s'han introduït fitxers auxiliars;
- la terminologia és coherent amb la resta de la unitat;
- els canvis no dupliquen contingut ja existent;
- els exercicis i tests mantenen el nivell adequat per a batxillerat;
- els problemes de proporcionalitat no són excessivament mecànics;
- les figures no introdueixen incoherències entre el treball sobre \(\Q\) i la representació contínua pròpia de \(\R\).
