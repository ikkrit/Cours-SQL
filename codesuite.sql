--CONTRAINTES
/*
    NOT NULL (colonne obligatoire)
    DEFAULT (valeur par défaut)
    CHECK (verifiction d'une valeur)
    UNIQUE (valeur de champ unique)
*/

CREATE DATABASE IF NOT EXISTS `cours_sql`;
USE `cours_sql`;

CREATE TABLE IF NOT EXISTS `table_users`
(
    `id_user` SMALLINT(6) NOT NULL,
    `user_name` VARCHAR(30),
    `user_email` VARCHAR(100) NOT NULL,
    `user_registration` DATE NOT NULL,
    `user_admin` BOOLEAN DEFAULT 0,
    
    --UNIQUE(`user_name`) emplacement de UNIQUE à la création
);

ALTER TABLE `table_users` 
MODIFY `user_name` VARCHAR(30) NOT NULL; --Ajouter NOT NULL à user_name

ALTER TABLE `table_users` 
ALTER `user_admin` SET DEFAULT 0; --Changer le DEFAULT ex passé de 0 à 1 (après la création )

ALTER TABLE `table_users` 
ALTER `user_admin` DROP DEFAULT; --retiré la contrainte

ALTER TABLE `table_users`
ADD CHECK(id_user <= 10000); --Verifier si id_user n'est pas superieur a 10000(exemple de la fonction)

ALTER TABLE `table_users`
ADD UNIQUE(`user_name`); --Ajouté unique apres la creation
ADD CONSTRAINT UC_userid UNIQUE(`id_user`, `user_name`);