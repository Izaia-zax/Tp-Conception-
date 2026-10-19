# SHEMA DE NOTRE BASE DE DONNEES

modifier : **PLATS**(**id**,nom,prix,#id_categorie)

nouveau : **CATEGORIE**(**id**,nom)

modifier : **COMMANDES**(**id**,date_commande,reference_commande,#id_client,#numero_table,#id_serveur)

modifier : **COMMANDES_PLATS**(**id**,#id_commande,#id_plat,quantite,prix_unitaire)


nouveau : **CLIENTS**(**id**,nom,prenom,statut)

nouveau : **SERVEUR**(**id**,nom,prenom)

nouveau : **TABLESS**(**id**,numero_table)

nouveau : **MODE_PAIEMENT**(**id**,mode_paiement)

nouveau : **PAIMENT**(**id**,#mode_paiement,reference_paiement,montant,#reference_commande)

nouveau : **HISTORIQUE_PRIX_PLATS**(**id**,#id_plat,prix,date)

nouveau : **INGREDIENTS**(**id**,nom,unites_mesure,quantite_disponible)

nouveau : **COMPOSITION_PLATS**(**id**,#id_plat,#id_ingredient,quantite_utilisee)