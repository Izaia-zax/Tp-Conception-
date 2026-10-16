# SHEMA DE NOTRE BASE DE DONNEES

**PLATS**(**id**,nom,prix,#id_categorie)


**CATEGORIE**(**id**,nom)

**COMMANDES**(**id**,date_commande,reference_commande,#id_client,#numero_table,#id_serveur)

**COMMANDES_PLATS**(**id**,#id_commande,#id_plat,quantite)


**CLIENTS**(**id**,nom,prenom,statut)

**SERVEUR**(**id**,nom,prenom)

**TABLESS**(**id**,numero_table)

