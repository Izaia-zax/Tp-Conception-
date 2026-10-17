# NIVEAU 1 
## ETAPE 1
-   j'ai choisis le type entier pour le prix , j'ai choisis le nom et le prix

## ETAPE 2
-   On ajoute pas seulement une colonne categorie car on peut faire mieux on les separants
-   Probleme concret :  on doit toujours preciser la categorie d'une seule plat a chaque fois qu'on commande se plat 

## ETAPE 3
-   La quantite on le calcul dynamiquement 

## ETAPE 4 
-   Mon cle etrangere est not null parcequ'une commande doit toujours etre faite par un client  
-   Il faut joindre une commande a un client pour ne pas perdre aucune commande 

## ETAPE 5
-   Une table et une commande sont deux chose differente car une table peut avoir plusieur commande mais une commande ne peut etre que dans une seule table
- Une table pose probleme car c'est un nom de fonction dans sql

## ETAPE 6 
-   Une colonne montant payer dans la table commande ne suffit pas car une commande peut etre payer en plusieur tranche et par different mode de paiement