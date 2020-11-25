# TP2 : interrogation d'une base de données
## notion de **jointure**

#### Comparer les requêtes suivantes : 
* `SELECT * FROM usager;`
* `SELECT * emprunt`
* `SELECT * FROM usager JOIN emprunt ON usager.code_barre = emprunt.code_barre;`


SELECT * 
FROM usager 
JOIN emprunt ON usager.code_barre = emprunt.code_barre 
