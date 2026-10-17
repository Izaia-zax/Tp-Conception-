CREATE TABLE mode_paiement(
    id SERIAL PRIMARY KEY,
    mode_paiement VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO mode_paiement(mode_paiement) VALUES
('Espece'),
('Mvola'),
('Orange Money'),
('Airtel Money');
CREATE TABLE paiement(
    id SERIAL PRIMARY KEY,
    mode_paiement VARCHAR(50) NOT NULL,
    reference_paiement VARCHAR(50) UNIQUE NOT NULL,
    montant INTEGER NOT NULL,
    date_paiement TIMESTAMP NOT NULL,
    reference_commande VARCHAR(50) NOT NULL,
    FOREIGN KEY (reference_commande) REFERENCES commandes(reference_commande),
    FOREIGN KEY (mode_paiement) REFERENCES mode_paiement(mode_paiement)
)

INSERT INTO paiement (mode_paiement, reference_paiement, montant, reference_commande) VALUES
('Espece', 'PAY001', 10000, 'REF001'),
('Mvola', 'PAY002', 5000, 'REF001'),
('Orange Money', 'PAY003', 6000, 'REF002');

ALTER TABLE paiement
DROP COLUMN date_paiement;

ALTER TABLE commandes_plats
ADD COLUMN montant_total INTEGER ;

UPDATE commandes_plats
SET montant_total = quantite * p.prix 
FROM plats p 
WHERE commandes_plats.id_plat = p.id;