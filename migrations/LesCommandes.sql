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

INSERT INTO commandes_plats (id_commande, id_plat, quantite) VALUES (1, 1, 2);
INSERT INTO commandes_plats (id_commande, id_plat, quantite) VALUES (2, 2, 1);
INSERT INTO commandes_plats (id_commande, id_plat, quantite) VALUES (3, 3, 3);  