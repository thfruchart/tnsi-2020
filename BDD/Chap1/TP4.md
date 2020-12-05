# TP4 : requête et sous-requête

###Exemple 1 : trouver tous les titres du même auteur que "Guerre et Paix"
On peut utiliser une première requête pour trouver le nom de l'auteur
* `SELECT nom FROM auteur JOIN auteur_de ON auteur.a_id = auteur_de.a_id JOIN livre ON auteur_de.isbn = livre.isbn WHERE livre.titre= "Guerre et Paix";`

Puis une deuxième requête pour trouver les titres : 
* `SELECT titre FROM livre JOIN auteur_de ON auteur_de.isbn = livre.isbn JOIN auteur ON auteur.a_id = auteur_de.a_id WHERE nom="Tolstoï";`


Ces deux requêtes peuvent être combinées en une seule : une requête principale, avec une sous-requête dans la clause WHERE : 
* `SELECT titre FROM livre JOIN auteur_de ON auteur_de.isbn = livre.isbn JOIN auteur ON auteur.a_id = auteur_de.a_id WHERE nom= (SELECT nom FROM auteur JOIN auteur_de ON auteur.a_id = auteur_de.a_id JOIN livre ON auteur_de.isbn = livre.isbn WHERE livre.titre= "Guerre et Paix");`


