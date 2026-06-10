
# Contribuir al projecte

Les contribucions són benvingudes, especialment si ajuden a millorar la claredat, el rigor matemàtic, la qualitat tipogràfica o la utilitat didàctica del material.

Aquest document estableix alguns criteris bàsics per mantenir la coherència del projecte.

## Tipus de contribucions

Es poden proposar millores en àmbits com ara:

- correcció d'errors matemàtics;
- correcció d'errades ortogràfiques, gramaticals o tipogràfiques;
- millora de redacció i claredat expositiva;
- revisió de demostracions;
- nous exercicis sobre nombres naturals, nombres enters, divisibilitat i aplicacions;
- noves situacions de modelització;
- millores en els tests interactius;
- ajustos de format o de compilació LaTeX.

## Criteris matemàtics

Les aportacions han de respectar el nivell i l'enfocament de la unitat.

En particular:

- els nombres naturals es treballen a partir dels axiomes de Peano;
- els nombres enters es construeixen com a classes d'equivalència de parelles de naturals;
- les propietats s'han de justificar amb el grau de rigor adequat per a batxillerat;
- les aplicacions han de connectar amb els continguts treballats a la teoria i a la pràctica.

Quan s'afegeixi una demostració, cal evitar salts argumentals innecessaris. Quan s'afegeixi un exercici, ha de quedar clar quin contingut treballa.

## Criteris de redacció

El text ha d'estar escrit en català normatiu i amb un registre formal, clar i didàctic.

Es recomana:

- mantenir frases precises i no excessivament llargues;
- evitar canvis innecessaris de terminologia;
- utilitzar sempre la mateixa notació per als mateixos conceptes;
- evitar expressions poc naturals o massa col·loquials;
- mantenir la coherència amb les unitats anteriors del projecte.

Cal preservar la terminologia ja utilitzada en el projecte, com ara:

- **Teoria**;
- **Pràctica**;
- **Aplicacions i modelització**;
- **Exercicis proposats**;
- **Tests interactius**.

## Criteris LaTeX

Abans d'enviar una contribució, cal comprovar que el projecte compila correctament.

Es recomana compilar amb:

```bash
latexmk -pdf main.tex
````

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

## Etiquetes i referències

Quan s'afegeixin etiquetes LaTeX, és preferible utilitzar noms descriptius.

Per exemple:

```latex
\label{prop:ordre-enters}
\label{teo:divisio-enters}
\label{ex:cancelacio-suma}
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

Les aplicacions i situacions de modelització han de presentar un problema contextualitzat i una solució clara, indicant explícitament quin concepte matemàtic s'està aplicant.

## Tests interactius

Els tests han de tenir preguntes clares, opcions plausibles i una única resposta correcta.

Quan es modifiqui un test, cal revisar també la clau de respostes corresponent.

És recomanable que els tests cobreixin de manera equilibrada:

* definicions;
* propietats;
* càlculs bàsics;
* interpretació conceptual;
* aplicacions senzilles.

## Abans d'enviar una contribució

Abans de proposar canvis, convé comprovar que:

* el document compila sense errors;
* no hi ha referències indefinides;
* no s'han introduït fitxers auxiliars;
* la terminologia és coherent amb la resta de la unitat;
* els canvis no dupliquen contingut ja existent;
* els exercicis i tests mantenen el nivell adequat per a batxillerat.

