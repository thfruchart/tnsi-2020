# TP1 : interroger une base de données

Pour commencer, sélectionner la base `test` dans le menu de phpMyAdmin, à gauche. Cette base va nous servir pour l'ensemble du chapitre.


Pour découvrir l'utilisation d'une base de données, vous allez **saisir des requêtes** : pour cela ouvrez la **Console de requêtes SQL** située tout en bas de l'écran dans phpMyAdmin. Ce que vous aurez à saisir sera présenté de la manière suivante dans ce document :
* `commande à saisir dans la console de requêtes SQL`

Vous pouvez également utiliser l'onglet SQL, dans lequel une aide syntaxique est fournie. 

Tester chacune des requêtes suivantes, et observer le résultat
## SELECT
* `SELECT 1+1;`

   * SELECT est l'opération d'affichage de SQL
   * son usage le plus simple est de faire afficher le résultat d'un calcul
   * comme son nom l'indique, SELECT va permettre d'afficher le résultat d'une "sélection" de certaines données dans la base

### SELECT ...  FROM
Comparer l'exécution des commandes suivantes : 
* `SELECT * FROM usager;`
* `SELECT nom, prenom FROM usager;`

   * La syntaxe de la commande est la suivante : **SELECT** `col1, col2`  **FROM** `table` 
   * où `table` est le nom d'une table de la base de données
   * `col1, col2` sont les noms des colonnes à sélectionner. Le nombre de colonnes n'est pas limité, il suffit de séparer les noms de colonne par des virgules.
   * `*` permet de sélectionner toutes les colonnes d'une table.

#### Exécuter maintenant : 
* `SELECT nom, prenom FROM usager ORDER BY nom;`

   * **ORDER BY** permet un affichage par ordre croissant sur le critère fourni : ici le nom.

#### Comparer avec : 
* `SELECT nom, prenom FROM usager ORDER BY prenom DESC;`

   * **ORDER BY** accepte deux paramètres : **ASC** (par défaut : ordre croissant) ou **DESC** (ordre décroissant).

#### [Question1]() : expliquer l'affichage obtenu avec : 
`SELECT nom, prenom FROM usager ORDER BY cp DESC;`

*AIDE* vous pouvez comparer avec `SELECT nom, prenom, cp FROM usager ORDER BY cp DESC;`

#### Exécuter maintenant : 
* `SELECT editeur FROM livre;`
   * la liste des éditeurs contient 128 valeurs, mais certains éditeurs figurent plusieurs fois
* `SELECT DISTINCT editeur FROM livre;`
   * la liste ne contient plus que 69 éditeurs
   * la commande **DISTINCT** permet de regrouper les valeurs similaires des lignes renvoyées par SELECT
   * on peut de plus, trier le nom des éditeurs par ordre alphabétique avec :
* `SELECT DISTINCT editeur FROM livre ORDER BY editeur ;`
   
 

### SELECT ...  FROM ... WHERE
#### Exécuter maintenant : 
* `SELECT * FROM livre;`
   * combien de livres y a-t-il dans la table "livre" ?
   * combien sont affichés dans phpMyAdmin ?
   
#### Comparer avec : 
* `SELECT * FROM livre WHERE annee>=2018;`
   * la clause `WHERE` permet de restreindre la recherche suivant certains critères
   * pour une colonne de type numérique (comme année) on peut utiliser les opérateurs habituels de comparaison
   * pour une colonne de type texte (comme titre) les opérateurs `<` et `>` permettent de faire des comparaisons dans l'ordre alphabétique.
   
Par exemple, pour obtenir les titres des livres qui commencent par A, il suffit d'écrire : 
* `SELECT titre FROM livre WHERE titre < 'B';`
   * on remarque que le titre "1984" est classé comme étant inférieur à "B", puisque les codes ASCII des chiffres sont inférieurs à ceux des lettres!

#### Comparer les requêtes : 
* `SELECT * FROM `livre` WHERE titre = 'Astérix';`
* `SELECT * FROM `livre` WHERE titre LIKE 'Astérix%';`
   * aucun livre n'a pour titre exace 'Astérix'
   * plusieurs livres ont pour titre 'Astérix' suivi par un certain nombre d'autres caractères
   * le caractère spécial `%` signifie ici : un nombre quelconque de caractères
   * le caractère spécial `_` signifie ici : exactement un caractère
  
  
Ainsi, on pourra chercher le titre Œdipe roi en mettant un joker `_` à la place du premier caractère Œ  
* `SELECT * FROM livre WHERE titre LIKE '_dipe roi';`

On pourra chercher les livres dont le titre contient Astérix (précédé ou suivi d'un ou plusieurs caractères) avec : 
* `SELECT * FROM `livre` WHERE titre LIKE '%Astérix%';`
   * remarquer le "double joker" : % au début et à la fin de la chaîne.

#### Fonctions d'agrégations
Au lieu de renvoyer une "table", une requête SELECT peut permettre d'appeler une fonction d'agrégation, comme MAX, MIN, COUNT, AVG ... 
Ces fonctions sont appliquées à l'ensemble des valeurs d'une colonne, et le résultat est affiché avec SELECT.

**MAX** retourne le maximum d'une colonne, **MIN** le minimum

**COUNT** retourne le nombre de valeurs d'une colonne

**AVG** renvoie la moyenne (average) des valeurs d'une colonne. 

### Jointure
