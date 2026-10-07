# aprendes

**aprendes** és un repositori de materials acadèmics de matemàtiques per a
Batxillerat i Universitat, i dels llibres del projecte **logcat** sobre els
fonaments de la matemàtica i la lògica categòrica.

El projecte té un doble objectiu:

1. oferir documents en PDF clars, rigorosos i útils per a l’estudi de les matemàtiques;
2. facilitar que alumnes, professors i altres col·laboradors puguin ajudar a millorar aquests documents mitjançant GitHub.

Els materials estan escrits principalment en **LaTeX** i es publiquen a la web:

<https://aprendes.com>

## Estructura del repositori

El repositori s’organitza en tres grans apartats:

```
batxillerat/
universitat/
logcat/
```

`batxillerat/` i `universitat/` contenen materials organitzats per àrees
matemàtiques. Per exemple:

```
batxillerat/
  analisi-calcul/
  algebra/
  geometria/
  probabilitat-estadistica/

universitat/
  algebra-lineal/
  calcul/
  analisi/
  probabilitat-estadistica/
```

`logcat/` conté els llibres del projecte **Fonaments i lògica**, cadascun en
una carpeta pròpia amb les fonts LaTeX, el PDF i un `README.md` amb les
instruccions de compilació:

```
logcat/
  categories/     Una introducció a la teoria de categories (versió 1.7, llibre complet)
```

La web pública mostra els materials d’una manera ordenada i accessible, mentre que GitHub permet consultar el codi font, proposar canvis i participar en la millora dels documents.

## Fonaments i lògica (logcat)

El projecte **logcat** és una col·lecció de llibres sobre els fonaments de la
matemàtica i la lògica categòrica:

| Llibre | Estat |
|---|---|
| **Una introducció a la teoria de categories** · *Formació prèvia per aprendre lògica categòrica* | Publicat, versió 1.7: [PDF](https://aprendes.com/logcat/categories/main.pdf) · [PDF per imprimir](https://aprendes.com/logcat/categories/imprimible.pdf) · [fonts](logcat/categories) |
| Lògica categòrica | En preparació |
| Teoria de conjunts | En preparació |
| Filosofia de la matemàtica | En elaboració |

Pàgina del projecte: <https://aprendes.com/logcat/>

## Tipus de materials

Els documents d’**aprendes** poden incloure:

- teoria;
- exemples;
- exercicis resolts;
- exercicis proposats;
- materials de pràctica;
- tests o activitats d’autoavaluació.

L’objectiu no és només oferir apunts, sinó construir materials docents revisables, ampliables i millorables.

## Web del projecte

La web principal del projecte és:

<https://aprendes.com>

Des de la web es pot accedir progressivament als PDFs publicats i als diferents nivells, àrees i llibres.

**Nota sobre els tests interactius.** Els tests interactius inclosos en alguns documents PDF funcionen millor amb **Adobe Acrobat Reader**. Alguns visualitzadors de PDF integrats als navegadors —com Chrome, Edge, Firefox o Safari— poden no executar correctament les funcions interactives. Per aquest motiu, es recomana descarregar el PDF i obrir-lo amb Acrobat Reader. Als llibres de logcat, les respostes i les justificacions de tots els tests també es troben en un apèndix final, i hi ha una edició per imprimir.

## Col·laboració

**aprendes** és un projecte obert a la col·laboració.

Hi ha diverses maneres de participar.

### Si ets alumne

Pots ajudar indicant:

- errors tipogràfics;
- passos que no s’entenen;
- exercicis amb solucions incorrectes;
- explicacions que necessiten més exemples;
- parts que resulten massa difícils o massa ràpides.

No cal saber LaTeX per informar d’un error o proposar una millora.

### Si ets professor

Pots contribuir proposant:

- millores didàctiques;
- nous exercicis;
- correccions matemàtiques;
- canvis en l’ordre d’exposició;
- adaptacions al currículum;
- observacions sobre el nivell de dificultat.

### Si coneixes LaTeX

També pots contribuir directament modificant els fitxers `.tex` i enviant una pull request.

## Com proposar canvis

Les millores es poden proposar mitjançant:

- **Issues**, per informar d’errors o suggerir millores;
- **Pull requests**, per enviar correccions directament al codi LaTeX;
- comentaris o revisions sobre documents concrets.

Abans d’enviar una contribució, és recomanable revisar les instruccions específiques de cada carpeta, especialment els fitxers `README.md` i `CONTRIBUTING.md` que hi pugui haver dins de cada nivell o document. Per als llibres de logcat, indiqueu a la issue el llibre, la versió i la pàgina.

## Estat del projecte

El projecte està en desenvolupament.

Els materials de Batxillerat i Universitat s’estan actualitzant. Alguns materials poden estar en fase d’esborrany, revisió o ampliació. Per això, les aportacions d’alumnes i professors són especialment valuoses.

## Llicència

Els llibres de **logcat** es distribueixen amb la llicència
[Creative Commons Reconeixement-CompartirIgual 4.0 Internacional (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/deed.ca),
indicada al fitxer `LICENSE` de cada llibre.

Per a la resta de materials, la llicència s’indicarà en aquest repositori. Fins que no s’especifiqui una llicència concreta, cal demanar autorització abans de reutilitzar, redistribuir o modificar substancialment els materials fora del marc de col·laboració del repositori.
