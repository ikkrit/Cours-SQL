DROP DATABASE IF EXISTS `fv_database`;
CREATE DATABASE IF NOT EXISTS `fv_database`;
USE `fv_database`;

/*
----------------------------------------------------------------------------------------------------------------
-- Création des tables -----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
CREATE TABLE IF NOT EXISTS `fv_clients`
(
	`id_client` INT NOT NULL AUTO_INCREMENT, 
	`client_firstname` VARCHAR(65) NOT NULL, 
	`client_lastname` VARCHAR(65) NOT NULL, 
	`client_birthday` DATE NOT NULL, 
	`client_loyalty` INT NOT NULL, 
	PRIMARY KEY(`id_client`)
);