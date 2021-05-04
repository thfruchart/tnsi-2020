CREATE TABLE IF NOT EXISTS Reservation (
    id INT PRIMARY KEY AUTO_INCREMENT,
    prix VARCHAR(50),
    arrivee DATE,
    depart DATE,
    idClient INT REFERENCES Client(id)
);

CREATE TABLE IF NOT EXISTS Client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    numero VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Chambre (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(50),
    places INT
);

CREATE TABLE IF NOT EXISTS Breakfast (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre INT
);

CREATE TABLE IF NOT EXISTS Prix (
    prestation VARCHAR(50) PRIMARY KEY,
    tarif VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS comporte (
    idReservation INT REFERENCES Reservation(id),
    idChambre INT REFERENCES Chambre(id),
    PRIMARY KEY(idReservation,idChambre)
);
