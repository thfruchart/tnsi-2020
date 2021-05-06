# Quelques requêtes 

## insertion d'une réservation par nom et prénom de client
```INSERT INTO `reservation`(`prix`, `arrivee`, `depart`, `idClient`) 
VALUES ("354€", '2022/05/13', '2022/05/16', 
(SELECT client.id FROM client WHERE client.nom="Tassi" AND client.prenom="Henri") 
);```

## ajout dans la table "comporte" grâce au n0 de chambre
```INSERT INTO `comporte`(`idReservation`, `idChambre`) 
VALUES (1, (SELECT chambre.id FROM chambre WHERE chambre.numero="C21") );```

## brouillon de requête pour chambres disponibles
```SELECT * FROM chambre
LEFT JOIN  comporte ON comporte.idChambre=chambre.id
LEFT JOIN reservation ON reservation.id=comporte.idReservation
WHERE ( reservation.arrivee>'2021/05/15' OR reservation.depart<'2021/04/02') OR reservation.arrivee IS NULL;```
