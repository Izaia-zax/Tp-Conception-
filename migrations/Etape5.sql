CREATE TABLE serveur(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL
);


CREATE TABLE tabless(
    id SERIAL PRIMARY KEY,
    numero_table VARCHAR(10) UNIQUE NOT NULL
);

INSERT INTO serveur(nom,prenom) VALUES
('Njaka', 'Rakkoto'),
('Lalao','Rasoa');

INSERT INTO tabless(numero_table) VALUES
('T1'),
('T2'),
('T3'),
('T4'),
('T5'),
('T6'),
('T7'),
('T8');

ALTER TABLE commandes 
ADD COLUMN numero_table VARCHAR(10);

ALTER TABLE commandes
ADD FOREIGN KEY (numero_table) REFERENCES tabless(numero_table);

ALTER TABLE commandes
ADD COLUMN id_serveur INTEGER;

ALTER TABLE commandes
ADD FOREIGN KEY (id_serveur) REFERENCES serveur(id);

UPDATE commandes SET numero_table = 'T1', id_serveur = 1 WHERE reference_commande = 'REF001';
UPDATE commandes SET numero_table = 'T2', id_serveur = 1 WHERE reference_commande = 'REF002';
UPDATE commandes SET numero_table = 'T3', id_serveur = 2 WHERE reference_commande = 'REF003';   

