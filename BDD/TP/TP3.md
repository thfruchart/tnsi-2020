# TP3 : modifier le contenu d'une table

Avant de commencer le TP, on pourra relire le [mode d'emploi](https://github.com/thfruchart/tnsi-2020/blob/master/BDD/Chap1/Mode_emploi.md)

Les exemples sont tous tirés de la base de données `test` contenant les données d'une bibliothèque fictive.

### que peut-on modifier dans une base de données ? 

Toutes les modifications présentées dans ce TP portent sur les **lignes** d'une **table**.

De manière générale, une fois qu'une base de données est créée, les intitulés des colonnes des tables (appelés "champs") ne sont plus modifiés. 
Seules les lignes sont modifiées de façon ordinaire, pour mettre à jour les informatios stockées dans la base.

On distingue trois sortes de "modifications" :
1. Changer certaines valeurs d'une ligne existante
2. Ajouter une nouvelle ligne dans une table
3. Supprimer une ou plusieurs lignes d'une table.



## 1. Modification de certaines lignes

#### Prolonger un emprunt
Exécuter la requête : 
* `SELECT * FROM emprunt WHERE retour='2020-01-01';`

On obtient les deux lignes de la table emprunt pour lesquelles le retour est fixé au premier janvier 2020.

|code_barre	|isbn	|retour	|
|:--|:--|:--|
|934701281931582	|978-2260019183	|2020-01-01	|
|934701281931582	|978-2371240087	|2020-01-01|


L'objectif est de "prolonger  pour un mois" l'emprunt du livre dont l'isbn est 978-2260019183, c'est à dire de modifier uniquement la date de retour de cet ouvrage au 1er février 2020.

Exécuter : 
* `UPDATE emprunt SET retour='2020-02-01' WHERE isbn=  '978-2260019183';`
* `SELECT * FROM emprunt WHERE isbn=  '978-2260019183';`

On peut vérifier que la date de retour pour cet ouvrage a bien été modifiée.

|code_barre	|isbn	|retour	|
|:--|:--|:--|
|934701281931582	|978-2260019183	|2020-**02**-01|

Exécuter : 
* `SELECT * FROM emprunt WHERE retour='2020-01-01';`

On obtient alors une seule ligne de la table emprunt pour laquelle le retour reste fixé au premier janvier 2020. 
En effet, nous n'avons modifié qu'une seule ligne de la table emprunt. 

|code_barre	|isbn	|retour	|
|:--|:--|:--|
|934701281931582	|978-2371240087	|2020-01-01|


#### prolonger tous les emprunts d'un usager
On souhaite prolonger jusqu'au 18 mars 2020 tous les livres empruntés par l'usager dont le code barre est : 035184062854281

Exécuter : 
* `SELECT * FROM emprunt WHERE code_barre='035184062854281';`
* `UPDATE emprunt SET retour='2020-03-18' WHERE code_barre='035184062854281';`
* `SELECT * FROM emprunt WHERE code_barre='035184062854281';`



Remarquer que l'exécution de la requête UPDATE modifie **3** lignes. 

|code_barre	|isbn	|retour	|
|:--|:--|:--|	
|035184062854281|	978-2072762093|	2020-03-18	|
|035184062854281|	978-2742744824|	2020-03-18	|
|035184062854281|	978-2745989857|	2020-03-18	|

### A RETENIR
La syntaxe d'une modification de certaines valeurs dans une (ou plusieurs) ligne(s) :

**`UPDATE nom_de_la_table  SET  nom_de_colonne_modifiée1 = valeur1 , nom_de_colonne_modifiée2 = valeur2 WHERE condition;`**

## 2. Ajout de nouvelles lignes
Valérie MICHEL (qui a pour code-barre 199614051174633) souhaite emprunter le livre '1984' dont l'isbn  est 978-0547249643.

Pour saisir ce nouvel emprunt dans la base de données, on **ajoute** une nouvelle ligne dans la **table** emprunt :

Exécuter : 
* `INSERT INTO emprunt(code_barre, isbn, retour) VALUES ('199614051174633', '978-0547249643', '2020-12-24');`

Puis vérifier dans la table emprunt que ce nouvel emprunt est ajouté : 
* `SELECT * FROM emprunt WHERE code_barre='199614051174633';`

### A RETENIR
Syntaxe pour ajouter une nouvelle ligne dans une table : 

**`INSERT INTO nom_de_la_table(colonne1, colonne2...) VALUES (valeur1, valeur2...);`**

Le jour où Valérie MICHEL vient retourner le livre '1984', elle croise Julien DURAND (code-barre 782124241492509) dans la bibliothèque et lui remet ce livre. 
Julien veut l'emprunter, mais Valérie n'est pas passée à la borne de "retour des livres". 

Essayer la requête : 
* `INSERT INTO emprunt(code_barre, isbn, retour) VALUES ('782124241492509', '978-0547249643', '2020-12-31');`

Noter l'erreur obtenue : `#1062 - Duplicata du champ '978-0547249643' pour la clef 'PRIMARY'`

Quelques explications s'imposent : 
* il existe dans la table `emprunt` une **clé primaire** (identifiée par  : 'PRIMARY')
* cette clé primaire correspond ici au champ (ou colonne):  `isbn`
* pour chaque ligne de la table, la clé primaire doit permettre d'identifier cette ligne de manière **unique**
* ici, la clé primaire  `isbn` permet de s'assurer que deux lignes différentes de la table ne peuvent pas avoir un `isbn` identique!
   * il est donc impossible d'insérer une nouvelle ligne dans la table s'il existe déjà une ligne avec le même isbn
   * c'est le sens de l'erreur ` Duplicata du champ '978-0547249643'` qui est l'isbn du livre '1984'.

Pour que Julien puisse emprunter le livre, il faut d'abord que l'emprunt de Valérie soit **supprimé** de la table  `emprunt`.

## 3. Suppression de lignes
La commande pour supprimer une ou plusieurs lignes d'une table suit la syntaxe : 

**`DELETE FROM nom_de_la_table WHERE condition;`**

ATTENTION : 
* une opération de suppression est irréversible ! 
* il est fortement conseille d'effectuer une sauvegarde de sa base de données AVANT de supprimer quoi que ce soit.
* on n'insistera jamais trop sur la **condition** qui permet de définir quelles lignes seront supprimées.
   * un simple `DELETE FROM table` efface TOUTES les lignes de la table ! 

CONSEIL : 
*  commencer par une requête de SÉLECTION des données qu'on souhaite supprimer

Exécuter : 
* `SELECT * FROM emprunt WHERE isbn='978-0547249643';`

Après avoir vérifié que cette condition correspond bien au livre que Valérie vient de rapporter, on peut supprimer la ligne avec : 
* `DELETE FROM emprunt WHERE isbn='978-0547249643';`

Cela permet ensuite d'ajouter dans la base l'emprunt de ce livre par Julien
* `INSERT INTO emprunt(code_barre, isbn, retour) VALUES ('782124241492509', '978-0547249643', '2020-12-31');`

Cette insertion se fait alors sans provoquer d'erreur.

# Ce que peut vérifier le système de gestion de la base de données
## Contraintes de domaine
essayer les requêtes : 
* `INSERT INTO emprunt(code_barre, isbn, retour) VALUES ('654834075188732', '978-1439142677', '2020-16-12');`
* `UPDATE livre SET annee='MMXIII' WHERE titre='Dune';`

Ce qui se passe : 
* A chaque colonne d'une table est associé un **domaine**, qui correspond à
   * un certain **type** : entier, texte, date
   * éventuellement une certaine **taille** : nombre de caractères d'un texte, nombre de bits d'un entier, signe d'un entier
* Lors de chaque insertion, et de chaque modification, ces **contraintes de domaines** sont testées
   * si les valeurs fournies sont "hors domaine", la requête n'est pas exécutée et une erreur est renvoyée
* lors de la conception d'une base de donnée, il est important de bien choisir le domaine défini pour chaque champ (ou colonne).

## Clé étrangère
Exécuter **d'abord**: 
* `ALTER TABLE emprunt ADD CONSTRAINT fk_code_barre FOREIGN KEY (code_barre) REFERENCES usager(code_barre);`

**Puis** essayer les requêtes :

* `INSERT INTO emprunt(code_barre, isbn, retour) VALUES ('123456789012345', '978-0199555918', '2020-12-13');`
* `DELETE FROM usager WHERE code_barre='917547585216771';`

Noter les messages d'erreur : 

#1452 - Cannot add or update a child row...  et  #1451 - Cannot delete or update a parent row: 

**a foreign key constraint fails** (test.emprunt, CONSTRAINT fk_code_barre FOREIGN KEY (code_barre) REFERENCES usager (code_barre))

Explication :
* la présence d'une clé étrangère sur la table `emprunt` impose une restriction lorsqu'on souhaite ajouter, supprimer ou modifier certaines lignes :
   * si on ajoutait un `emprunt` pour le code-barre 123456789012345...on aurait une incohérence dans la base de données, car ce code-barre ne correspond à aucune ligne dans la table `usager` !
   * si on supprimait de la table `usager` la ligne dont le code-barre '917547585216771'
   * alors une ligne de la table `emprunt` contiendrait une **référence** sans correspondance dans la table `usager`
   * cela reviendrait à supprimer un usager qui n'a pas encore rendu tous les livres empruntés
* l'ajout d'une clé étrangère permet de sécuriser la suppression ou la modification des données, pour préserver la cohérence des données.
* on dit qu'une telle clé étrangère assure une **contrainte d'intégrité** de la base de données.
* lors de la conception d'une base de données, il convient de bien définir les contraintes portant les champs d'une table qui font **référence** à d'autres tables. 

# Exercice 3
Écrire les requêtes permettant de réaliser les objectifs suivants
1. Inscrire un nouvel usager : vous !
2. Effectuer pour vous-même un emprunt, pour le livre que vous choisissez, et pour une durée de deux semaines. 
3. Prolonger cet emprunt d'une semaine.
4. Effectuer pour vous-même l'emprunt d'un livre rendu par un autre usager : il faudra donc effectuer deux requêtes.
   1. la première pour "retourner le livre", rendu par l'autre usager.
   2. la deuxième pour "emprunter le livre" à votre tour. 
