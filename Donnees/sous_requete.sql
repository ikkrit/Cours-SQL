SOURCE C:/Users/Kirik/OneDrive/Bureau/Utile MySql/Donnees/sous_requete_res_sql

SELECT * FROM fv_players
WHERE player_name =                         ---Le = est un operateur
(
    SELECT playertrade_seller               ---Cherche un vendeur du champ playertrades_seller
    FROM fv_playertrades                    ---De la table fv_playertrades
    WHERE playertrade_seller = 'Icekissy'   ---Dont le nom est 'Icekissy'
    LIMIT 1                                 ---Limité à une colonne
);

SELECT * FROM fv_players
WHERE player_name =
(
    SELECT playertrade_seller              
    FROM fv_playertrades                    
    WHERE playertrade_seller = 'Nephion'    ---Exemple joueur qui n'a pas fait de vente
    LIMIT 1
);

SELECT * FROM fv_players
WHERE player_name IN                        ---Le IN pour retourner plusieurs lignes
(
    SELECT playertrade_seller              
    FROM fv_playertrades                    
    WHERE playertrade_seller = 'Icekissy'   
);

SELECT * FROM fv_players                    ---Retourne tous les joueurs qui on fait des ventes
WHERE player_name IN
(
    SELECT playertrade_seller              
    FROM fv_playertrades                     
);

SELECT * FROM fv_players 
WHERE player_name = ANY
(
    SELECT playertrade_seller
    FROM fv_playertrades
);

---Si on a au moins une egalité avec une valeur de cette sous requête ANY ou SOME

SELECT * FROM fv_players 
WHERE player_name = ANY
(
    SELECT playertrade_seller
    FROM fv_playertrades
    WHERE playertrade_item = 'Epée en mousse'
);

---Idem, mais avec précision de playertrade_item pour 'épée en mousse'

SELECT * FROM fv_players 
WHERE EXISTS
(
    SELECT playertrade_seller                  
    FROM fv_playertrades
    WHERE playertrade_item = 'Epée en mousse'
);

SELECT * FROM fv_players         <----LA REQUETE
WHERE EXISTS                                    <---------------------Si existe
(
    SELECT *                                    <---------------------Toute les informations                               \
    FROM fv_playertrades                        <---------------------De la table des echanges                             { Requete imbriquer entre ()
    WHERE playertrade_item = 'Epée en mousse'   <-------Dans le cas ou si l'objet de la transaction est une épée en mousse / 
);

SELECT * FROM fv_players
WHERE EXISTS
(
    SELECT *                 
    FROM fv_playertrades
    WHERE playertrade_item = 'Epée en mousse'
)
AND player_level > 10 ORDER BY player_level ASC; --- Et si le player_level est superieur a 10 et ordonné par player_level
