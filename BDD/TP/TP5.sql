--TP5--
-- 1 
SELECT COUNT(*) AS 'nb_animaux' FROM animaux;
--2 
SELECT nom FROM races;
--3
SELECT nom, prenom, fonction 
FROM personnels 
ORDER BY fonction, nom;
--4
SELECT AVG(salaire) AS 'salaire_moyen' FROM personnels;
--5 
SELECT AVG(salaire) AS 'salaire_moins30ans' 
FROM personnels 
WHERE date_nais>'1990-12-17';
--6
SELECT AVG(salaire) AS 'salaire_plus30ans' 
FROM personnels 
WHERE date_nais<'1990-12-17';
--7
SELECT COUNT(*) 
FROM Animaux
JOIN Races ON Races.id = Animaux.race 
WHERE Races.nom='Pingouin';
--8
SELECT pseudo
FROM Animaux
JOIN Races ON Races.id = Animaux.race 
WHERE Races.nom='Loup';
--9 
--  brouillon utile
SELECT Personnels.nom, Personnels.prenom , Races.nom 
FROM Personnels 
JOIN Soigneurs ON Soigneurs.pers = Personnels.id
JOIN Races ON Soigneurs.race = Races.id ;
-- réponse à la question 9
SELECT Personnels.nom, Personnels.prenom 
FROM Personnels 
JOIN Soigneurs ON Soigneurs.pers = Personnels.id
JOIN Races ON Soigneurs.race = Races.id 
WHERE Races.nom='Chat';
--10
SELECT Personnels.nom, Personnels.prenom , Races.nom 
FROM Personnels 
JOIN Soigneurs ON Soigneurs.pers = Personnels.id
JOIN Races ON Soigneurs.race = Races.id ;
-- réponse à la question 9
SELECT Personnels.nom, Personnels.prenom 
FROM Personnels 
JOIN Soigneurs ON Soigneurs.pers = Personnels.id
JOIN Races ON Soigneurs.race = Races.id 
JOIN Animaux ON Animaux.race = Races.id
WHERE Animaux.pseudo='Lizzie';