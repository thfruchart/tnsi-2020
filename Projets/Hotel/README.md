# Quelques requêtes 

## insertion d'une réservation par nom et prénom de client
```INSERT INTO `reservation`(`prix`, `arrivee`, `depart`, `idClient`) 
VALUES ("354€", '2022/05/13', '2022/05/16', 
(SELECT client.id FROM client WHERE client.nom="Tassi" AND client.prenom="Henri") 
);```
