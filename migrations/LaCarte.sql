CREATE DATABASE gagote;
\c gargote;

CREATE TABLE plats (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix DECIMAL(10, 2) NOT NULL
);

ALTER TABLE plats
ALTER COLUMN prix TYPE INTEGER;
INSERT INTO plats (nom, prix) VALUES ('Romazava', 7000);
INSERT INTO plats (nom, prix) VALUES('Ravitoto zy henakisoa', 8000);
INSERT INTO plats (nom, prix) VALUES('Akoho sy voanjo', 8500);
INSERT INTO plats (nom, prix) VALUES('Mi sao', 6000);
INSERT INTO plats (nom, prix) VALUES('Soupe chinoise', 5000);
INSERT INTO plats (nom, prix) VALUES('Mofo gasy ', 1000);
INSERT INTO plats (nom, prix) VALUES('Ranon ampango', 500);