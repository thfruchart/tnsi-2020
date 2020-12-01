# Corrigé de l'exercice du TP1


1. Afficher le nombre de lignes de la table **auteurs**

`SELECT COUNT(*) FROM auteur;`
ou
`SELECT COUNT(nom) AS nbdelignnes FROM auteurs;`

2. Afficher le nom de tous les **auteurs** dont le prénom est 'René'

`SELECT nom FROM auteur WHERE prenom='René';` 

3. Afficher (sans répétition) le nom de tous les **auteurs** dont le prénom est 'René'

`SELECT DISTINCT nom FROM auteur WHERE prenom='René';`

4. Afficher le nom et le prénom de tous les **auteurs** dont le prénom commence par G

`SELECT nom, prenom  FROM auteur WHERE prenom LIKE 'G%';`

5. Afficher le titre de tous les **livres** dont l'année est antérieure à 2000, et dont le titre commence par L

`SELECT titre
FROM livre
WHERE annee < 2000 AND titre LIKE 'L%';`

6. Afficher le titre, l'isbn et l'année de tous les **livres** dont l'éditeur est **Dargaud**, classés par année croissante.

`SELECT titre, isbn, annee FROM livre
WHERE editeur = 'Dargaud'
ORDER BY annee ;`

7. Afficher le titre, l'isbn et l'année de tous les **livres** dont l'éditeur est **J'ai lu**, classés par année décroissante.

`SELECT titre, isbn, annee FROM livre WHERE editeur = 'J\'ai lu' ORDER BY annee DESC`
