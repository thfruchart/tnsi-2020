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


L'objectif est de "prolonger ces deux emprunts pour un mois", c'est à dire de modifier uniquement la date de retour, pour la mettre au 1er février 2020.

Exécuter les requêtes suivantes : 
* `UPDATE emprunt SET retour='2020-02-01' WHERE isbn=  '978-2260019183';`
* `SELECT * FROM emprunt WHERE retour='2020-01-01';`

On obtient alors une seule ligne de la table emprunt pour laquelle le retour est fixé au premier janvier 2020.

|code_barre	|isbn	|retour	|
|:--|:--|:--|
|934701281931582	|978-2371240087	|2020-01-01|

Exécuter maintenant : 
* `SELECT * FROM emprunt WHERE isbn=  '978-2260019183';`

On peut vérifier que la date de retour pour cet ouvrage a bien été modifiée.

|code_barre	|isbn	|retour	|
|:--|:--|:--|
|934701281931582	|978-2260019183	|2020-**02**-01|



## 2. Ajout de nouvelles lignes

## 3. Suppression de lignes
