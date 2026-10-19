UPDATE plats SET prix = 7500 WHERE plats.id = 1;

ALTER TABLE commandes_plats
ADD COLUMN prix_unitaire INTEGER;

ALTER TABLE commandes_plats DROP COLUMN montant_total;

UPDATE commandes_plats SET prix_unitaire = 
    (SELECT prix FROM plats WHERE plats.id = commandes_plats.id_plat); 

CREATE TABLE historique_prix_plats(
    id SERIAL PRIMARY KEY,
    id_plat INTEGER,
    prix INTEGER,
    date_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_plat) REFERENCES plats(id) ON DELETE CASCADE
);

INSERT INTO historique_prix_plats (id_plat, prix)
SELECT id, prix FROM plats;

TRUNCATE TABLE historique_prix_plats;