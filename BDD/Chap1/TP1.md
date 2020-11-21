## TP1 : interroger une base de données
Pour découvrir l'utilisation d'une base de données, vous allez **saisir des requêtes** : pour cela ouvrez la **Console de requêtes SQL** située tout en bas de l'écran dans phpMyAdmin.

Tester chacune des requêtes suivantes, et observer le résultat
### SELECT
`SELECT 1+1`

* SELECT est l'opération d'affichage de SQL
* son usage le plus simple est de faire afficher le résultat d'un calcul
* comme son nom l'indique, SELECT va permettre d'afficher le résultat d'une "sélection" de certaines données dans la base

### SELECT ...  FROM
Comparer l'exécution des commandes suivantes : 
* `SELECT * FROM usager`
* `SELECT nom, prenom FROM usager`

La syntaxe de la commande est la suivante : 
**SELECT** `col1, col2`  **FROM** `table` 
 
où `table` est le nom d'une table de la base de données

`col1, col2` sont les noms des colonnes à sélectionner. Le nombre de colonnes n'est pas limité, il suffit de séparer les noms de colonne par des virgules.

`*` permet de sélectionner toutes les colonnes d'une table.

Exécuter maintenant : 
`SELECT nom, prenom FROM usager ORDER BY nom`

**ORDER BY** permet un affichage par ordre croissant sur le critère fourni : ici le nom.

Comparer avec : 
`SELECT nom, prenom FROM usager ORDER BY prenom DESC`

**ORDER BY** accepte deux paramètres : **ASC** (par défaut : ordre croissant) ou **DESC** (ordre décroissant).

[Question1] : expliquer l'affichage obtenu avec : 
`SELECT nom, prenom FROM usager ORDER BY cp DESC`

*AIDE* vous pouvez comparer avec `SELECT nom, prenom, cp FROM usager ORDER BY cp DESC`



### SELECT ...  FROM ... WHERE

### Jointure
