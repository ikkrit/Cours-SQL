SOURCE C:/Users/Kirik/OneDrive/Bureau/Utile MySql/Donnees/jointure_res.sql

---Jointure de tables interne, retourne le nom + le lvl + le classe
SELECT player_name, player_level, ability_name                                       <---Choisir le nom, le lvl et ca classe.
FROM fv_players                                                                      <---De la table fv_players.
INNER JOIN fv_abilities ON fv_players.player_ability = fv_abilities.id_ability       <---INNER JOIN -> Ajouté la table fv-abilities
                                                                                     <---fv_players.player_ability(.player_ability = Clé étrangere)
                                                                                     <--- = fv_abilities.id_ability(.id_ability = Clé primaire)

WHERE player_level > 10;                                                             <---Ajouté condition (ex lvl doit etre superieur a 10)
--------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT player_name, player_level, ability_name                                       
FROM fv_players                                                                      
INNER JOIN fv_abilities ON fv_players.player_ability = fv_abilities.id_ability       
WHERE player_level > 10; 
--------------------------------------------------------------------------------------------------------------------------------------------------------

---Jointure naturel
SELECT *
FROM fv_players
NATURAL JOIN fv_abilities ON fv_players.id = fv_abilities.id;

---Jointure gauche, retourne toutes les information de la table fv_abilities même si il n'y a pas d'information dans la seconde
SELECT *
FROM fv_abilities                                                                  <---Récuperer toutes les classes de la table fv_abilities
LEFT JOIN fv_players ON fv_abilities.id_ability = fv_players.player_ability;       <---Joint la table fv_players
-------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT *
FROM fv_abilities                                                                  
LEFT JOIN fv_players ON fv_abilities.id_ability = fv_players.player_ability;
-------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT ability_name                                                                <---Dans ability_name
FROM fv_abilities                                                                  
LEFT JOIN fv_players ON fv_abilities.id_ability = fv_players.player_ability
WHERE fv_players.player_ability IS NULL;                                           <---Filtre ce qui est retourner (ex IS NULL les champs "null")

---Jointure croisé relié les information de 2 tables ORDER BY trié par le player_name
SELECT * FROM fv_players
CROSS JOIN fv_abilities
ORDER BY player_name;