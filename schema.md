# SHEMA DE NOTRE BASE DE DONNEES

modifier : **PLATS**(**id**,nom,prix,#id_categorie)

nouveau : **CATEGORIE**(**id**,nom)

modifier : **COMMANDES**(**id**,date_commande,reference_commande,#id_client,#numero_table,#id_serveur)

modifier : **COMMANDES_PLATS**(**id**,#id_commande,#id_plat,quantite,montant_total)


nouveau : **CLIENTS**(**id**,nom,prenom,statut)

nouveau : **SERVEUR**(**id**,nom,prenom)

nouveau : **TABLESS**(**id**,numero_table)

nouveau : **MODE_PAIEMENT**(**id**,mode_paiement)

nouveau : **PAIMENT**(**id**,#mode_paiement,reference_paiement,montant,#reference_commande)