--CONTRAINTES
/*
    NOT NULL    (colonne obligatoire (ex champs à renseigner))
    DEFAULT     (valeur par défaut)
    CHECK       (verifiction d'une valeur)

    UNIQUE      (valeur de champ unique)
    PRIMARY KEY (clé primaire)
    AUTO_INCREMENT (incrementation auto de 1 en 1)
    FOREIGN KEY (clé étrangère)

    INDEX (index pour la lecture et la recherche)
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
    --PRIMARY KEY(`id_user`) emplacement de PRIMARY KEY à la création
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
ADD UNIQUE(`user_name`); --Ajouté valeur unique apres la creation

ALTER TABLE `table_users`
ADD CONSTRAINT UC_userid UNIQUE(`id_user`, `user_name`); --Ajouté plusieurs valeurs unique a plusieurs lignes

ALTER TABLE `table_users`
DROP INDEX UC_userid; -- Retirer les valeurs unique ajouté

-- Nouvelle table 
CREATE TABLE IF NOT EXISTS `table_users`
(
    `id_user` SMALLINT(6) NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(30),
    `user_email` VARCHAR(100) NOT NULL,
    `user_registration` DATE NOT NULL,
    `user_admin` BOOLEAN DEFAULT 0,
    
    PRIMARY KEY(`id_user`)
);

--Table pour jointure
CREATE TABLE IF NOT EXISTS `table_news`
(
    `id_news` SMALLINT(6) NOT NULL AUTO_INCREMENT,
    `news_title` VARCHAR(80) NOT NULL,
    `news_content` TEXT NOT NULL,
    `news_author` SMALLINT(6) NOT NULL,

    PRIMARY KEY(`id_news`),
    FOREIGN KEY(`news_author`) REFERENCES `table_users`(`id_user`) --***
);

--***Lier clé étrangère `new_author` de la `table_news` =(à)=> `id_user` de la `table_users`


ALTER TABLE `table_users` AUTO_INCREMENT = 100; --Commencer l'auto-increment à 100

ALTER TABLE `table_users`
ADD PRIMARY KEY(`user_name`); --Crée une clé primaire ex sur user_name (mais pas utile car une seul clé primaire)

DROP PRIMARY KEY; --Supprimé clé primaire

ALTER TABLE `table_news` --Lier les tables après creation
ADD FOREIGN KEY(`news_author`) REFERENCES `table_users`(`id_user`);

ADD CONSTRAINT `FK_jeSaisPasQuoi` FOREIGN KEY(`news_author`) REFERENCES `table_users`(`id_user`); --Nommé la clé étrangere(rare)

DROP FOREIGN KEY `FK_jeSaisPasQuoi`; --Supprimé la clé étrangère

-----------------------------------------------INDEX--------------------------------------------

CREATE INDEX `idx_users` ON `table_users`(`user_name`, `user_email`); --Crée index sur `user_name` et `user_email`

ALTER TABLE `table_users`
DROP INDEX `idx_users`; --Supprimé INDEX


--EXEMPLE DE CREATION DE TABLE AVEC CHOIX DU MOTEUR

CREATE TABLE IF NOT EXISTS `table_users`
(
    `id_user` SMALLINT(6) NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(30) NOT NULL,
    `user_email` VARCHAR(100) NOT NULL,
    `user_registration` DATE NOT NULL,
    `user_admin` BOOLEAN DEFAULT 0,

    PRIMARY KEY(`id_user`)
)
ENGINE = MyISAM   
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

--Ou ENGINE InnoDB
