--Création d'un utilisateur avec password
CREATE USER IF NOT EXISTS 'jachampagne'@'localhost' IDENTIFIED BY 'passe';

ALTER USER 'jachampagne'@'localhost' IDENTIFIED BY 'new'; --Changer le mot de passe
RENAME USER 'jachampagne'@'localhost' TO 'jason'@'localhost'; --Changer le nom

DROP USER 'jachampagne'@'localhost'; --Supprimer utilisateur

--Connaitre l'utlisateur
SELECT USER FROM mysql.user;

GRANT ALL 
ON cours_sql.*
TO 'jachampagne'@'localhost'; --Données des droit à un utilisateur

REVOKE ALL
ON cours_sql.*
FROM 'jachampagne'@'localhost'; --Retiré des droits à un utilisateur