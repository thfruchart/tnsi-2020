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

Dans cette requête, 
* on a joint trois tables, comme l'indique la syntaxe `FROM usager JOIN emprunt ... JOIN livre ...`
   * usager
   * emprunt
   * livre
* On "met bout à bout" toutes les lignes pour lesquelles 
   * le code barre de l'usager est identique dans les tables usager et emprunt
   * ET
   * l'isbn est identique dans les tables emprunt et livre
* On obtient ainsi une grande vue regoupant les trois tables dont on sélectionne ici 
   * nom prénom  de l'usager
   * titre du livre
   * date de retour (de la table emprunt)

Il est possible de préciser la recherche en ajoutant une clause `WHERE`, comme dans l'exemple ci-dessous qui affiche le nom prénom et titre pour les emprunts dont la date de retour est fixée au premier janvier 2020 (cette date est notée au format AAAA-MM-JJ donc 2020-01-01)
* `SELECT usager.nom, usager.prenom, livre.titre, emprunt.retour FROM usager JOIN emprunt ON usager.code_barre = emprunt.code_barre JOIN livre ON emprunt.isbn = livre.isbn WHERE emprunt.retour='2020-01-01';`

# Exercice 2
Répondre à chaque question en écrivant une requête SQL permettant d'obtenir la réponse.

Une fois la réponse validée, **recopier** la totalité de la requête sur feuille.

Toutes les questions se réfèrent à la base de données **test** contenant les tables `auteur`, `auteur_de`, `emprunt`, `livre`, `usager`.
On observera que la table `auteur_de` permet de joindre :
* un auteur, repéré par son n° :  `a_id`
* un livre, repéré par son `isbn`

1. Afficher le nom et le prénom de l'auteur du livre '1984'
2. Afficher le titre de tous les livres dont l'auteur a pour nom 'Barjavel'
3. Afficher le titre, le nom et le prénom de l'auteur de tous les livres écrits par quelqu'un dont le prénom est 'René'
4. Afficher le titre de tous les livres empruntés à rendre avant le 31/03/2020
5. Afficher le nom et le prénom des usagers ayant emprunté un livre
6. Même requête que la précédente, en supprimant les doublons
7. Même requête que la précédent, en affichant les noms triés par ordre alphabétique 
8. Afficher le nom et le prénom de tous les usagers habitant le 5ème arrondissement (code postal = 75005) ayant emprunté un livre : on fera également afficher le titre du livre et la date de retour prévue. 
