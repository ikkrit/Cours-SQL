-- requêtes sur les bases de données
SHOW DATABASES; 

CREATE DATABASE IF NOT EXISTS `test`; -- Nom de la base en anti-code(AltGr + 7)
USE `test`; -- J'utilise cette base de données

-- Requêtes liées au tables
SHOW TABLES; -- ajouter FROM `test` si pas de requête USE

CREATE TABLE `t_users` -- Création d'une table (ajouter au ligne le nom de la table)
(
    `id_user` INT, -- ou autres valeurs INT ex SMALLINT (voir le definition)
    `user_name` VARCHAR(65),
    `user_birthday` DATE
);

DESCRIBE `t_users`; --ou EXPLAIN / DESC - information de la table

-- Modifier une table :
ALTER TABLE `t_users` --commande pour modifier
ADD `user_points` TINYINT(2); -- ou Element ajouté
DROP `user_points`; --ou Supression d'un élement
MODIFY `id_user` SMALLINT; --ou moddifier

--Exemple
ALTER TABLE `t_users`
MODIFY `id_user` SMALLINT;

--Changement sur une colonne
ALTER TABLE `t_users`
CHANGE `user_birthday` `user-birth` DATE;

--supprimé table
DROP TABLE IF EXISTS `t_users`;

--Statue d'une table
SHOW TABLE STATUS;