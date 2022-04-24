---SOURCE C:/Users/Kirik/OneDrive/Bureau/Utile MySql/Donnees/union_res.sql



SELECT * FROM fv_site1_users UNION SELECT * FROM fv_site2_users; --Retourner valeurs de 2 tables et les concaténer
/* Condition : Même nombres de colonnes
               Colonnes dans le même ordre
               Même type de données (ex INT avec INT)
               (Retour sans redondances)
*/
SELECT * FROM fv_site1_users UNION ALL SELECT * FROM fv_site2_users;
--- Le ALL après UNION pour retourner avec les redondances

SELECT * FROM fv_site1_users UNION SELECT * FROM fv_site2_users
ORDER BY user_name; ---Même chose mais classement par user_name

SELECT = Champs FROM = Table 




