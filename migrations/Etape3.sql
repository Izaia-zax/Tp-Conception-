CREATE TABLE commandes (
    id SERIAL PRIMARY KEY,
    date_commande DATE NOT NULL,
    reference_commande VARCHAR(100) NOT NULL
);

CREATE TABLE commandes_plats (
    id SERIAL PRIMARY KEY,
    id_commande INTEGER,
    id_plat INTEGER,
    quantite INTEGER,
    FOREIGN KEY (id_commande) REFERENCES commandes(id),
    FOREIGN KEY (id_plat) REFERENCES plats(id)
);

INSERT INTO commandes (date_commande, reference_commande) VALUES ('2023-10-01', 'REF001');
INSERT INTO commandes (date_commande, reference_commande) VALUES ('2023-10-01', 'REF002');
INSERT INTO commandes (date_commande, reference_commande) VALUES ('2023-10-01', 'REF003');
INSERT INTO commandes (date_commande, reference_commande) VALUES ('2023-10-01', 'REF004');

INSERT INTO commandes_plats (id_commande, id_plat, quantite) VALUES (1, 1, 2);
INSERT INTO commandes_plats (id_commande, id_plat, quantite) VALUES (2, 2, 1);
INSERT INTO commandes_plats (id_commande, id_plat, quantite) VALUES (3, 3, 3);  

ALTER TABLE commandes_plats
DROP CONSTRAINT commandes_plats_id_commande_fkey;

ALTER TABLE commandes_plats
DROP COLUMN id_commande;

ALTER TABLE commandes_plats
ADD COLUMN reference_commande VARCHAR(100);

ALTER TABLE commandes
ADD CONSTRAINT commandes_reference_unique
UNIQUE (reference_commande);

ALTER TABLE commandes_plats
ADD CONSTRAINT fk_commandes_plats_reference
FOREIGN KEY (reference_commande)
REFERENCES commandes(reference_commande);

INSERT INTO commandes_plats
    (reference_commande, id_plat, quantite)
VALUES
    ('REF001', 1, 2),
    ('REF002', 2, 1),
    ('REF003', 3, 3);

INSERT INTO commandes_plats
    (reference_commande, id_plat, quantite)
VALUES
    ('REF004', 4, 1);