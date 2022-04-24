SELECT product_name, product_amount FROM fv_products; --Selectionner (ex product_name, product_amount de la table fv_products)
SELECT * FROM fv_products; --Le * pour tous 
SELECT DISTINCT product_name FROM fv_products; --Prendre les valeurs sans doublons

SELECT product_name AS "Nom du produit" FROM fv_products; --Donner un alias(nom) a un champs(ex "Nom du produit")
SELECT product_name AS "Nom du produit" FROM fv_products AS Inventory; --Donner un alias à la table également(ex "Inventory")

SELECT * FROM fv_games WHERE id_game = 11; --Filter les information (ex info de la ligne id_game 11)
--ou remplacé le = par > ou < pour une recherche superieur ou inferieur.

SELECT * FROM fv_games WHERE id_game = 5 OR id_game = 10; --Retourne id_game 5 ou 10 (Les 2 dans le cas présent)

SELECT * FROM fv_games WHERE game_price > 5 AND game_price < 30; --Retourne les prix entres 5 et 30 euros

SELECT * FROM fv_games WHERE game_stock IN(2, 4, 6); --Retourne valeur en raccourci (ajouté '' ou "" si string)

SELECT * FROM fv_games WHERE game_price BETWEEN 0 AND 20; --Retourner valeurs entre 0 et 20

SELECT * FROM fv_games WHERE game_title LIKE 'pokémon%'; --Recherche de 'pokemon' , le % indique 1 ou plusieurs caracteres après

SELECT * FROM fv_games WHERE game_price IS NOT NULL; --Retourne les valeurs qui ne sont pas null

SELECT * FROM fv_games WHERE game_price IS NULL; --Retourne les valeurs null

SELECT * FROM fv_games ORDER BY game_title; --Retourner par ordre croissant de game_title (croissant par defaut)

SELECT * FROM fv_games ORDER BY game_title DESC; --Retourner par ordre décroissant

SELECT * FROM fv_games LIMIT 5; --Limité à 5 le nombres de ligne (utile pour pas faire de conneries)

SELECT * FROM fv_games LIMIT 5 OFFSET 3; --Commencer la requete à 3



SOURCE C:/Users/Kirik/OneDrive/Bureau/Utile MySql/Donnees/ressources.sql --ex de commande pour ajouté une table


-------------------------------------------------------Ajouté données--------------------------------------------------------------------


CRUD Definition

C : create (INSERT TO)
R : read (SELECT)
U : update(UPDATE)
D : delete(DELETE)


INSERT INTO `fv_clients`(client_firstname, client_lastname, client_birthday, client_loyalty)
VALUES('Jason', 'CHAMPAGNE', '1991-02-10', 15); --Inserer valeurs dans une ligne

INSERT INTO `fv_clients`(client_firstname, client_lastname, client_birthday, client_loyalty)
VALUES
('Ducon', 'CHAMPAGNE', '1991-02-10', 15),
('Cord', 'CHAMPAGNE', '1991-02-10', 15),
('Sac a merde', 'CHAMPAGNE', '1991-02-10', 15),
('Batard', 'CHAMPAGNE', '1991-02-10', 15),
('Fils de putes', 'CHAMPAGNE', '1991-02-10', 15),
('Enculer', 'CHAMPAGNE', '1991-02-10', 15),
('Hahah', 'CHAMPAGNE', '1991-02-10', 15),
('dfgdfg', 'CHAMPAGNE', '1991-02-10', 15);  ---Ajouter plusieurs lignes


----------------------------------------------------Modifier et supprimer---------------------------------------------------------------------


UPDATE fv_games SET game_stock = 6 WHERE id_game = 1; ---Changer valeur d'une ligne (ex le stock de game_stock de id_game 1(1 ligne))
UPDATE fv_games SET game_stock = 6, game_price = 11.59 WHERE id_game = 1; ---Changer plusieurs valeurs(ex game_stock + game_price de id_game 1(1 ligne))
UPDATE fv_games SET game_stock = 6, game_price = 11.59; ---Changer les valeurs pour toutes les lignes des champs sélectionner

DELETE FROM fv_games WHERE game_title = 'tekken'; ---Supprime 1 ligne(ex la ligne de tekken)
TRUNCATE TABLE fv_games; ---Vide la table et réinitialise  les id

----------------------------------------------------Fonction d'agrégation----------------------------------------------------------------------


SELECT COUNT(*) FROM fv_games; ---Compter tous les enregistrements de la table (*) pour tous séléctionner
SELECT COUNT(*) AS Total_jeux FROM fv_games; ---Ajoute un alias à l'affichage de la requête

SELECT AVG(game_price) FROM fv_games; ---Retourne le total du champ game_price  ---  AVG pour average = moyenne

SELECT MAX(game_price) FROM fv_games; ---Retourne prix maximum du champ game_price -- MIN le minimum

SELECT SUM(game_stock) FROM fv_games; ---Somme de game_stock








