CREATE TYPE statut_client AS ENUM('habituer', 'de passage');
CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    statut statut_client NOT NULL DEFAULT 'de passage',
    prenom VARCHAR(50) NOT NULL
);

ALTER TABLE commandes ADD COLUMN id_client INTEGER;
ALTER TABLE commandes ADD FOREIGN KEY (id_client) REFERENCES clients(id);

INSERT INTO clients(nom, prenom, statut) VALUES
('Dupont', 'Jean', 'habituer'),
('Durand', 'Marie', 'de passage'),
('Martin', 'Pierre', 'habituer'),
('Bernard', 'Sophie', 'de passage'),
('Petit', 'Lucie', 'habituer');

UPDATE commandes SET id_client = 1 WHERE id = 1;
UPDATE commandes SET id_client = 2 WHERE id = 2;
UPDATE commandes SET id_client = 3 WHERE id = 3;
UPDATE commandes SET id_client = 4 WHERE id = 4;
UPDATE commandes SET id_client = 5 WHERE id = 5;
UPDATE commandes SET id_client = 5 WHERE id = 4;