--  Niveau 1
--  Etape 1: verification des plats du plus cher au moins cher

SELECT * FROM plats ORDER BY prix DESC;

-- Etape 2 : verification du nombre des plats par categorie
SELECT count(*) from plats WHERE id_categorie = 1;
SELECT count(*) from plats WHERE id_categorie = 2;
SELECT count(*) from plats WHERE id_categorie = 3;
SELECT count(*) from plats WHERE id_categorie = 4;
SELECT count(*) from plats WHERE id_categorie = 5;

-- Etape 3  : verification du nombre total de plats
SELECT SUM(quantite) FROM commandes_plats;

-- Etaope 4 : verification du client de passage et du client habituer
SELECT reference_commande,c.nom,c.prenom,c.statut
FROM commandes 
JOIN clients as c ON commandes.id_client = c.id
WHERE c.statut = 'de passage';

-- Etape 5 : verification du nombre de commandes par serveur
SELECT s.nom, s.prenom, COUNT(c.id) AS nombre_commandes
FROM serveur AS s 
JOIN commandes AS c ON c.id_serveur = s.id
GROUP BY s.nom, s.prenom;

-- Etape 6 : verification des liste de commandes pas encore payees
SELECT c.reference_commande,cp.montant_total
FROM commandes AS c 
JOIN commandes_plats AS cp ON c.reference_commande = cp.reference_commande
WHERE c.reference_commande NOT IN (SELECT reference_commande FROM paiement);