# TP2 : interrogation d'une base de données
## notion de **jointure**

#### Comparer les requêtes suivantes : 
* `SELECT * FROM usager;`
* `SELECT * FROM emprunt;`
* `SELECT * FROM usager JOIN emprunt ON usager.code_barre = emprunt.code_barre;`
* `SELECT * FROM emprunt JOIN usager ON usager.code_barre = emprunt.code_barre;`

## JOIN
* la commande `JOIN` sert à "joindre" deux tables.
* le critère de jointure est une correspondance entre des valeurs contenues dans chacune des tables
* ce critère est décrit avec le mot clé `ON`
   * dans l'exemple précédent, chaque ligne de la table usager est jointe à une ligne de la table emprunt, à condition que la valeur de la colonne `code_barre` soit identique dans la table `usager` et dans la table `emprunt`.
   * comme on fait référence à deux **tables** différentes, on peut préciser le nom de chaque colonne en utilisant la notation pointée : `nom_de_la_table.nom_de_la_colonne`
   * de cette manière, on peut faire explicitement référence à la colonne  `code_barre` contenue dans chacune des deux tables
