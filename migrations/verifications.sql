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