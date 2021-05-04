CREATE TABLE IF NOT EXISTS Reservation (
    id VARCHAR(50) PRIMARY KEY,
    prix VARCHAR(50),
    arrivee VARCHAR(50),
    depart VARCHAR(50),
    idClient VARCHAR(50) REFERENCES Client(id)
);

CREATE TABLE IF NOT EXISTS Client (
    id VARCHAR(50) PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    numero VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Chambre (
    id VARCHAR(50) PRIMARY KEY,
    numero VARCHAR(50),
    places VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS comporte (
    idReservation VARCHAR(50) REFERENCES Reservation(id),
    idChambre VARCHAR(50) REFERENCES Chambre(id),
    PRIMARY KEY(idReservation,idChambre)
);

CREATE TABLE IF NOT EXISTS Breakfast (
    id VARCHAR(50) PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Prix (
    prestation VARCHAR(50) PRIMARY KEY,
    tarif VARCHAR(50)
);
