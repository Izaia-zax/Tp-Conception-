ALTER TABLE plats
ADD COLUMN id_categorie INTEGER;

ALTER TABLE plats
ADD CONSTRAINT fk_plats_categorie
FOREIGN KEY (id_categorie)
REFERENCES categories(id);
CREATE TABLE categorie(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

INSERT INTO categorie (nom) VALUES ('Plat malagasy');
INSERT INTO categorie (nom) VALUES ('Plat chinois');
INSERT INTO categorie (nom) VALUES ('Soupe');
INSERT INTO categorie (nom) VALUES ('Dessert et gouter');
INSERT INTO categorie (nom) VALUES ('Boisson');


UPDATE plats SET id_categorie = 1 WHERE nom IN ('Romazava', 'Ravitoto zy henakisoa', 'Akoho sy voanjo');
UPDATE plats SET id_categorie = 2 WHERE nom IN ('Mi sao');
UPDATE plats SET id_categorie = 3 WHERE nom IN ('Soupe chinoise');
UPDATE plats SET id_categorie = 4 WHERE nom IN ('Mofo gasy');
UPDATE plats SET id_categorie = 5 WHERE nom IN ('Ranon ampango');
