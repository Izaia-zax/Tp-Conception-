CREATE TABLE ingredients(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    unites_mesure VARCHAR(20) NOT NULL,
    quantite_disponible INTEGER NOT NULL
);
INSERT INTO ingredients (nom, unites_mesure, quantite_disponible) VALUES
('riz', 'g', 10000),
('viande de zebu', 'g', 50000),
('brede mafana', 'g', 20000),
('viande de cochon', 'g', 80000),
('poulet', 'g', 60000),
('arachide', 'g', 700),
('pates', 'g', 40000),
('farine', 'g', 50000),
('ravitoto', 'g', 3000),
('ranon apango', 'L', 100);

CREATE TABLE composition_plats(
    id SERIAL PRIMARY KEY,
    id_plat INTEGER NOT NULL REFERENCES plats(id),
    id_ingredient INTEGER NOT NULL REFERENCES ingredients(id),
    quantite_utilisee INTEGER NOT NULL
);

ALTER TABLE composition_plats DROP CONSTRAINT composition_plats_id_plat_fkey;

INSERT INTO composition_plats (id_plat, id_ingredient, quantite_utilisee) VALUES
(1, 1, 250),
(1, 2, 150),
(1,3,100),
(2,9,200 ),
(2,4,250 ),
(3, 5 ,300),
(3, 6,50),
(4,7,300),
(4,5,200),
(5,8,250),
(5,6,100),
(6,1,200),
(6,2,150),
(7,3,100),
(7,4,200),
(8,5,300),
(8,6,50),
(9,7,300),
(9,8,200),
(10,9,250),
(10,10,100);
