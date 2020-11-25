# TP2 : interrogation d'une base de données

Avant de commencer le TP, on pourra relire le [mode d'emploi](https://github.com/thfruchart/tnsi-2020/blob/master/BDD/Chap1/Mode_emploi.md)
## notion de **jointure**

#### Comparer les requêtes suivantes : 
* `SELECT * FROM usager;`
* `SELECT * FROM emprunt;`
* `SELECT * FROM usager JOIN emprunt ON usager.code_barre = emprunt.code_barre;`
* `SELECT * FROM emprunt JOIN usager ON usager.code_barre = emprunt.code_barre;`

## JOIN
* la commande `JOIN` sert à "joindre" deux tables.
* le critère de jointure est une correspondance entre des valeurs contenues dans chacune des tables, ici : `usager.code_barre = emprunt.code_barre`
* ce critère est introduit par le mot clé `ON`
   * dans l'exemple précédent, chaque ligne de la table `usager` est jointe à toutes les lignes de la table `emprunt` pour lesquelles la valeur de la colonne `code_barre` est identique dans la table `usager` et dans la table `emprunt`
   * un même usager peut donc figurer **plusieurs fois** dans la vue du résultat de la jointure (par exemple : "MOREAU 	ALAIN")
   * au contraire, un usager dont le `code_barre` ne figure pas dans la table  `emprunt` ne sera **pas sélectionné dans la jointure**.
   * comme la jointure se fait sur deux **tables** différentes, on utilise la notation pointée : `nom_de_la_table.nom_de_la_colonne`
   * de cette manière, on peut faire explicitement référence à la colonne  `code_barre` contenue dans chacune des deux tables `usager` et `emprunt`, sans confusion possible

Dans l'exemple considéré : 
* chaque usager est repéré par un code_barre
* chaque livre est repéré par un isbn
* la table `emprunt` permet donc d'enregistrer un emprunt en stockant
   * le code barre de l'emprunteur
   * l'isbn du livre
   * la date prévue pour le retour
* chaque fois qu'un nouvel emprunt est effectué, il suffit d'ajouter une nouvelle ligne dans la table `emprunt`
*  chaque fois qu'un livre est rapporté, il suffit de supprimer  la  ligne correspondante de la table `emprunt`

### Jointures mutliples
Si on souhaite pouvoir connaître le titre du livre emprunté par un usager, on peut utiliser une double jointure :
#### Exécuter maintenant
* `SELECT usager.nom, usager.prenom, livre.titre, emprunt.retour FROM usager JOIN emprunt ON usager.code_barre = emprunt.code_barre JOIN livre ON emprunt.isbn = livre.isbn;`

Dans cette requête, on a joint trois tables : 
* usager
* emprunt
* titre
On "met bout à bout" toutes les lignes pour lesquelles 
* le code barre de l'usager est identique dans les tables usager et emprunt
* ET
* l'isbn est identique dans les tableus emprunt et livre
On obtient ainsi une grande vue regoupant trois tables dont on conserve ici 
* nom prénom  de l'usager
* titre du livre
* date de retour (de la table emprunt)

