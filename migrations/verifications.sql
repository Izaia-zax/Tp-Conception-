--  Niveau 1
--  Etape 1: verification des plats du plus cher au moins cher

SELECT * FROM plats ORDER BY prix DESC;

-- Etape 2 : verification du nombre des plats par categorie
SELECT count(*) from plats WHERE id_categorie = 1;
SELECT count(*) from plats WHERE id_categorie = 2;
SELECT count(*) from plats WHERE id_categorie = 3;
SELECT count(*) from plats WHERE id_categorie = 4;
SELECT count(*) from plats WHERE id_categorie = 5;

-- Etape 3  : calcul du montant total de chaque commande
SELECT reference_commande, SUM(quantite * prix_unitaire) AS montant_total
FROM commandes_plats
GROUP BY reference_commande;

-- Etape 4 : verification du client de passage et du client habituer
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

-- Etape 7 : verification de l'historique des prix des plats et verification du prix unitaire des plats dans les commandes
SELECT * FROM historique_prix_plats ORDER BY date_modification DESC;

-- Etape 8 : verification de la consommation theorique des ingredients le 12 octobre
SELECT SUM(cp.quantite_utilisee) AS consommation_theorique, i.nom
FROM composition_plats AS cp
JOIN ingredients AS i ON cp.id_ingredient = i.id
JOIN commandes_plats AS cpl ON cp.id_plat = cpl.id_plat
JOIN commandes AS c ON cpl.reference_commande = c.reference_commande
WHERE c.date_commande = '2023-10-12'
GROUP BY i.nom;