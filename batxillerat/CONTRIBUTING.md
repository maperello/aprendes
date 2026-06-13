# Com contribuir

Gràcies per voler millorar aquest material.

## Propostes útils

- Correccions lingüístiques o tipogràfiques.
- Correccions matemàtiques.
- Nous exemples o exercicis.
- Millores en els tests d'autoavaluació.
- Millores en la compilació LaTeX o en l'accessibilitat del PDF.

## Recomanacions

- Feu canvis petits i ben delimitats.
- Indiqueu clarament quin problema resol la proposta.
- Si corregiu un exercici o una resposta de test, expliqueu breument el motiu matemàtic.
- Comproveu, si és possible, que el document compila, per exemple,  amb: 

```bash
cd batxillerat/logica
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

Per exemple, per al projecte de conjunts, feu servir `cd batxillerat/conjunts`.
