SOURCE C:/Users/Kirik/OneDrive/Bureau/Utile MySql/Donnees/Grouper.sql

SELECT COUNT(*) FROM fv_users WHERE user_country = 'France'; --Compter le nombre de résidents francais
SELECT COUNT(*), user_country FROM fv_users GROUP BY user_country; ---Compter le nombre de résidents groupé par pays
SELECT COUNT(*) AS 'Nombre de résidents', user_country FROM fv_users GROUP BY user_country;
---Compter le nombre de résidents groupé par pays avec un alias pour le champ de COUNT

SELECT user_country, SUM(user_age)
FROM fv_users
GROUP BY user_country WITH ROLLUP; ---Retourne la somme des âges par pays avec la somme de toutes les sommes WITH ROLLUP

SELECT user_country, SUM(user_age)
FROM fv_users
GROUP BY user_country
HAVING SUM(user_age) > 20; ---Retourne la sommes grouper des âges des plus de 20 ans avec HAVING 


SELECT user_country, SUM(user_age) FROM fv_users GROUP BY user_country HAVING SUM(user_age) > 20; ---Sur une ligne
