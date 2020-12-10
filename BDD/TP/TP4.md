# TP4 : requête et sous-requête

### Exemple 1 : trouver tous les titres du même auteur que "Guerre et Paix"
On peut utiliser une première requête pour trouver le nom de l'auteur
* `SELECT nom FROM auteur JOIN auteur_de ON auteur.a_id = auteur_de.a_id JOIN livre ON auteur_de.isbn = livre.isbn WHERE livre.titre= "Guerre et Paix";`

Puis une deuxième requête pour trouver les titres : 
* `SELECT titre FROM livre JOIN auteur_de ON auteur_de.isbn = livre.isbn JOIN auteur ON auteur.a_id = auteur_de.a_id WHERE nom="Tolstoï";`


Ces deux requêtes peuvent être combinées en une seule : une requête principale, avec une sous-requête dans la clause WHERE : 
* `SELECT titre FROM livre JOIN auteur_de ON auteur_de.isbn = livre.isbn JOIN auteur ON auteur.a_id = auteur_de.a_id WHERE nom= (SELECT nom FROM auteur JOIN auteur_de ON auteur.a_id = auteur_de.a_id JOIN livre ON auteur_de.isbn = livre.isbn WHERE livre.titre= "Guerre et Paix");`


### Exemple 2 : trouver tous les titres de l'un des auteurs de l'ouvrage "Le devin"
Essayer la requête : 
* `SELECT titre FROM livre JOIN auteur_de ON auteur_de.isbn = livre.isbn JOIN auteur ON auteur.a_id = auteur_de.a_id WHERE nom= (SELECT nom FROM auteur JOIN auteur_de ON auteur.a_id = auteur_de.a_id JOIN livre ON auteur_de.isbn = livre.isbn WHERE livre.titre= "Le devin");`

mysql renvoie une erreur "#1242 - Subquery returns more than 1 row" : la sous-requête renvoie plus d'une ligne!

Effectivement, la sous requête : 
* `(SELECT nom FROM auteur JOIN auteur_de ON auteur.a_id = auteur_de.a_id JOIN livre ON auteur_de.isbn = livre.isbn WHERE livre.titre= "Le devin");`

renvoie deux lignes, avec les noms de deux auteurs Uderzo et Goscini.

Dans ce cas la clause WHERE utilisera la condition :  nom **IN** (SELECT ...
* `SELECT titre FROM livre JOIN auteur_de ON auteur_de.isbn = livre.isbn JOIN auteur ON auteur.a_id = auteur_de.a_id WHERE nom IN (SELECT nom FROM auteur JOIN auteur_de ON auteur.a_id = auteur_de.a_id JOIN livre ON auteur_de.isbn = livre.isbn WHERE livre.titre= "Le devin");`

# Exercice : trouver les titres de tous les ouvrages NON empruntés
1. Commencer par écrire une requête donnant le titre de tous les ouvrages empruntés
2. Ecrire une deuxième requête (qui pourra utiliser la première comme sous-requête) pour trouver la liste des ouvrages non empruntés. Indication : dans ce cas, la clause WHERE utilisera une condition **NOT IN**
