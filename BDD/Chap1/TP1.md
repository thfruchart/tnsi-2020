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

où `col1, col2` sont les noms des colonnes à sélectionner. Le nombre de colonnes n'est pas limité, il suffit de séparer les noms de colonne par des virgules.

et où `table` est le nom d'une table de la base de données.

**SELECT `*`** permet de sélectionner toutes les colonnes d'une table.

### SELECT ...  FROM ... WHERE

### Jointure
