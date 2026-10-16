# SHEMA DE NOTRE BASE DE DONNEES

**PLATS**(**id**,nom,prix,#id_categorie)


**CATEGORIE**(**id**,nom)

**COMMANDES**(**id**,date_commande,reference_commande)

**COMMANDEA_PLATS**(**id**,#id_commande,#id_plat,quantite)
